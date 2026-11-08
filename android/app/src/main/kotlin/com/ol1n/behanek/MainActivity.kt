package com.ol1n.behanek

import android.Manifest
import android.content.pm.PackageManager
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "behanek/live")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "prepare" -> {
                        requestNotificationPermission()
                        result.success(null)
                    }
                    "update" -> {
                        LiveRunNotification.update(applicationContext, call.arguments as? Map<*, *> ?: emptyMap<Any, Any>())
                        result.success(null)
                    }
                    "end" -> {
                        LiveRunNotification.end(applicationContext)
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }

    /** Bez povolení notifikací (Android 13+) poběží záznam dál, jen nebude vidět živý stav. */
    private fun requestNotificationPermission() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return
        if (checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED) return
        requestPermissions(arrayOf(Manifest.permission.POST_NOTIFICATIONS), 7541)
    }
}
