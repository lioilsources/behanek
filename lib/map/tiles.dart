import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../core/settings.dart';
import '../core/track.dart';

/// Klíč k Mapy.com (satelit + turistická z jednoho zdroje, free tarif).
/// Build: `flutter run --dart-define=MAPY_API_KEY=...`
/// Bez klíče: OpenTopoMap + Esri World Imagery — jen pro vývoj, ne pro store.
const mapyApiKey = String.fromEnvironment('MAPY_API_KEY');

TileLayer tileLayer(MapLayer layer) {
  if (mapyApiKey.isNotEmpty) {
    final set = layer == MapLayer.satellite ? 'aerial' : 'outdoor';
    return TileLayer(
      urlTemplate: 'https://api.mapy.com/v1/maptiles/$set/256/{z}/{x}/{y}?apikey=$mapyApiKey',
      userAgentPackageName: 'cz.ol1n.behanek',
      maxNativeZoom: 19,
    );
  }
  return layer == MapLayer.satellite
      ? TileLayer(
          urlTemplate:
              'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
          userAgentPackageName: 'cz.ol1n.behanek',
          maxNativeZoom: 19,
        )
      : TileLayer(
          urlTemplate: 'https://tile.opentopomap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'cz.ol1n.behanek',
          maxNativeZoom: 17,
        );
}

Widget attribution(MapLayer layer) {
  final text = mapyApiKey.isNotEmpty
      ? '© Seznam.cz a.s. a další'
      : layer == MapLayer.satellite
          ? '© Esri, Maxar, Earthstar Geographics'
          : '© OpenStreetMap, SRTM | © OpenTopoMap (CC-BY-SA)';
  return SimpleAttributionWidget(source: Text(text, style: const TextStyle(fontSize: 11)));
}

List<LatLng> toLatLng(List<TrackPt> pts) => [for (final p in pts) LatLng(p.lat, p.lon)];

const routeColor = Color(0xFFC6FF00);
