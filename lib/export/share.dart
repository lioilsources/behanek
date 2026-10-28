import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../core/db.dart';
import 'gpx.dart';

String _fileName(RunRow r) {
  final d = r.startedAt;
  String two(int v) => v.toString().padLeft(2, '0');
  return 'behanek-${d.year}-${two(d.month)}-${two(d.day)}-${two(d.hour)}${two(d.minute)}.gpx';
}

Future<File> _temp(String name, List<int> bytes) async {
  final dir = await getTemporaryDirectory();
  final f = File('${dir.path}/$name');
  await f.writeAsBytes(bytes, flush: true);
  return f;
}

/// Export je vždy zdarma — uživatel nikdy neplatí za odchod se svými daty.
Future<void> shareRunGpx(AppDb db, RunRow r) async {
  final xml = writeGpx(startedAt: r.startedAt, points: await db.pointsOf(r.id), name: r.notes);
  final f = await _temp(_fileName(r), utf8.encode(xml));
  await SharePlus.instance.share(ShareParams(files: [XFile(f.path, mimeType: 'application/gpx+xml')]));
}

/// Záloha celé historie jako ZIP s GPX — ztráta telefonu nemusí být ztráta běhů.
Future<void> shareAllRunsZip(AppDb db, List<RunRow> runs) async {
  final archive = Archive();
  for (final r in runs) {
    final xml = utf8.encode(
        writeGpx(startedAt: r.startedAt, points: await db.pointsOf(r.id), name: r.notes));
    archive.addFile(ArchiveFile(_fileName(r), xml.length, xml));
  }
  final zip = ZipEncoder().encode(archive);
  final now = DateTime.now();
  final f = await _temp('behanek-zaloha-${now.year}-${now.month}-${now.day}.zip', zip);
  await SharePlus.instance.share(ShareParams(files: [XFile(f.path, mimeType: 'application/zip')]));
}

Future<void> sharePng(Uint8List png, String name) async {
  final f = await _temp(name, png);
  await SharePlus.instance.share(ShareParams(files: [XFile(f.path, mimeType: 'image/png')]));
}
