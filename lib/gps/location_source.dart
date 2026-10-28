import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'run_tracker.dart';

enum LocationAccess { granted, denied, deniedForever, serviceOff }

/// GPS 1 Hz jen během běhu (a na obrazovce Běh před startem). Mimo běh vypnuto.
class LocationSource {
  static Future<LocationAccess> ensurePermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) return LocationAccess.serviceOff;
    var p = await Geolocator.checkPermission();
    if (p == LocationPermission.denied) p = await Geolocator.requestPermission();
    // "Při používání" stačí: na iOS drží běh na pozadí background mode,
    // na Androidu foreground service spuštěná z popředí. "Vždy" nežádáme.
    return switch (p) {
      LocationPermission.always || LocationPermission.whileInUse => LocationAccess.granted,
      LocationPermission.deniedForever => LocationAccess.deniedForever,
      _ => LocationAccess.denied,
    };
  }

  static Stream<GpsFix> stream() {
    final LocationSettings settings;
    if (Platform.isAndroid) {
      settings = AndroidSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 0,
        intervalDuration: const Duration(seconds: 1),
        foregroundNotificationConfig: const ForegroundNotificationConfig(
          notificationTitle: 'Běhánek',
          notificationText: 'Zaznamenávám běh',
          notificationChannelName: 'Záznam běhu',
          notificationIcon: AndroidResource(name: 'ic_stat_run', defType: 'drawable'),
          enableWakeLock: true,
          setOngoing: true,
          color: Color(0xFFC6FF00),
        ),
      );
    } else if (Platform.isIOS) {
      settings = AppleSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        activityType: ActivityType.fitness,
        distanceFilter: 0,
        pauseLocationUpdatesAutomatically: false,
        allowBackgroundLocationUpdates: true,
        showBackgroundLocationIndicator: true,
      );
    } else {
      settings = const LocationSettings(accuracy: LocationAccuracy.best);
    }
    return Geolocator.getPositionStream(locationSettings: settings).map((p) => GpsFix(
          time: p.timestamp.toLocal(),
          lat: p.latitude,
          lon: p.longitude,
          alt: p.altitude == 0 ? null : p.altitude,
          accuracy: p.accuracy,
          speed: p.speed >= 0 ? p.speed : null,
        ));
  }
}
