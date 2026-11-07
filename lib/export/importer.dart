import 'dart:convert';

import 'package:archive/archive.dart';

import '../core/track.dart';
import '../gps/geo.dart';
import '../l10n/l10n.dart';
import 'gpx.dart';

class ImportCandidate {
  final String fileName;
  final ParsedGpx? gpx;
  final RunStats? stats;
  final ImportError? error;
  bool duplicate = false;

  ImportCandidate.ok(this.fileName, ParsedGpx g)
      : gpx = g,
        stats = computeStats(g.points),
        error = null;

  ImportCandidate.failed(this.fileName, this.error)
      : gpx = null,
        stats = null;

  bool get importable => gpx != null && !duplicate && (stats?.distanceM ?? 0) > 100;
}

/// Přijímá jednotlivá GPX i ZIP (hromadný export ze Stravy obsahuje složku activities/).
List<ImportCandidate> parseImportFile(String name, List<int> bytes) {
  final lower = name.toLowerCase();
  if (lower.endsWith('.zip')) {
    final Archive archive;
    try {
      archive = ZipDecoder().decodeBytes(bytes);
    } catch (_) {
      return [ImportCandidate.failed(name, ImportError.zip)];
    }
    return [
      for (final f in archive.files)
        if (f.isFile && f.name.toLowerCase().endsWith('.gpx'))
          _parseOne(f.name.split('/').last, f.content)
        else if (f.isFile && f.name.toLowerCase().endsWith('.gpx.gz'))
          _parseOne(f.name.split('/').last, GZipDecoder().decodeBytes(f.content)),
    ];
  }
  if (lower.endsWith('.gz')) return [_parseOne(name, GZipDecoder().decodeBytes(bytes))];
  return [_parseOne(name, bytes)];
}

ImportCandidate _parseOne(String name, List<int> bytes) {
  try {
    return ImportCandidate.ok(name, parseGpx(utf8.decode(bytes, allowMalformed: true)));
  } on GpxFormatException catch (e) {
    return ImportCandidate.failed(name, e.error);
  }
}

extension ImportErrorText on ImportError {
  String message(AppLocalizations l) => switch (this) {
        ImportError.zip => l.import_errZip,
        ImportError.invalid => l.import_errInvalid,
        ImportError.noPoints => l.import_errNoPoints,
        ImportError.noTimes => l.import_errNoTimes,
      };
}
