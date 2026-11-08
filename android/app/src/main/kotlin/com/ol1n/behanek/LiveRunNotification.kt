package com.ol1n.behanek

import android.annotation.SuppressLint
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat

/**
 * Živý stav běhu v notifikaci — obdoba iOS Live Activity.
 *
 * Používá stejné id jako foreground notifikace geolocatoru
 * (`GeolocatorLocationService.ONGOING_NOTIFICATION_ID`), takže ji `notify()` jen nahradí:
 * appka má dál jedinou notifikaci a služba ji po skončení GPS sama odstraní.
 * Na Androidu 16+ se notifikace hlásí jako „Live Update“ (čip ve stavovém řádku,
 * nahoře na zamčené obrazovce); na starších je to běžná trvalá notifikace.
 */
object LiveRunNotification {
    private const val ID = 75415
    private const val CHANNEL = "behanek_live"

    @SuppressLint("MissingPermission") // bez povolení notify() tiše nic neudělá
    fun update(ctx: Context, a: Map<*, *>) {
        val nm = NotificationManagerCompat.from(ctx)
        if (!nm.areNotificationsEnabled()) return
        ensureChannel(ctx, a["channelName"] as? String ?: "Běhánek")

        val elapsedS = (a["elapsedS"] as? Number)?.toLong() ?: 0L
        val paused = a["paused"] as? Boolean ?: false
        val distance = "${a["distance"] ?: ""} ${a["distanceUnit"] ?: ""}".trim()
        val pace = "${a["paceLabel"] ?: ""} ${a["pace"] ?: ""} ${a["paceUnit"] ?: ""}".trim()

        val b = NotificationCompat.Builder(ctx, CHANNEL)
            .setSmallIcon(R.drawable.ic_stat_run)
            .setColor(0xFFC6FF00.toInt())
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setSilent(true)
            .setCategory(NotificationCompat.CATEGORY_WORKOUT)
            .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
            .setContentIntent(openApp(ctx))
            .setRequestPromotedOngoing(true)
            .setShortCriticalText(distance)

        if (paused) {
            b.setContentTitle("$distance · ${formatDuration(elapsedS)}")
                .setContentText("${a["pausedLabel"] ?: ""}")
                .setShowWhen(false)
                .setUsesChronometer(false)
        } else {
            // Stopky v hlavičce tiká systém sám od "when" — stačí posílat jednou za pár sekund.
            b.setContentTitle(distance)
                .setContentText(pace)
                .setWhen(System.currentTimeMillis() - elapsedS * 1000)
                .setShowWhen(true)
                .setUsesChronometer(true)
        }
        nm.notify(ID, b.build())
    }

    fun end(ctx: Context) {
        // Foreground notifikaci běžící služby Android zrušit nedovolí; tady jde jen o zbytek
        // po posledním update, kdyby doběhl až po zastavení GPS.
        NotificationManagerCompat.from(ctx).cancel(ID)
    }

    private fun ensureChannel(ctx: Context, name: String) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val nm = ctx.getSystemService(NotificationManager::class.java)
        // LOW: bez zvuku, ale viditelná (Live Updates nesmí být v kanálu MIN).
        val ch = NotificationChannel(CHANNEL, name, NotificationManager.IMPORTANCE_LOW).apply {
            setShowBadge(false)
        }
        nm.createNotificationChannel(ch)
    }

    private fun openApp(ctx: Context): PendingIntent? {
        val intent = ctx.packageManager.getLaunchIntentForPackage(ctx.packageName) ?: return null
        intent.setPackage(null)
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED
        return PendingIntent.getActivity(
            ctx, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
    }

    private fun formatDuration(s: Long): String {
        val h = s / 3600
        val m = (s % 3600) / 60
        val sec = s % 60
        return if (h > 0) "%d:%02d:%02d".format(h, m, sec) else "%d:%02d".format(m, sec)
    }
}
