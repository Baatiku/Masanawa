import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/account/conversation_archive.dart';

class _Source implements ConversationArchiveSource {
  _Source({this.missing = false, this.fail = false, this.oversize = false, this.corrupt = false});
  final bool missing, fail, oversize, corrupt;
  final batches = <List<String>>[];
  int downloads = 0;
  @override
  Future<Map<String, dynamic>> page(String? cursor) async => {
    'items': [for (var i = 0; i < 101; i++) {
      'requestId': 'request-$i', 'characterId': 'character', 'kind': 'image',
      'userText': 'Photo $i', 'reply': 'A reply',
    }], 'nextCursor': null,
  };
  @override
  Future<List<dynamic>> media(String characterId, List<String> requestIds) async {
    expect(characterId, 'character');
    batches.add(requestIds);
    return [for (final request in requestIds) {
      'requestId': request, 'slot': 0, 'kind': 'image', 'mimeType': 'image/png',
      'name': '../../outside.png', 'sizeBytes': oversize ? 8 * 1024 * 1024 + 1 : 3,
    }];
  }
  @override
  Future<Map<String, dynamic>?> download(String characterId, String requestId, int slot) async {
    downloads++;
    if (fail) throw StateError('Network unavailable');
    if (missing) return null;
    return {'mimeType': 'image/png', 'sizeBytes': 3, 'dataBase64': corrupt ? 'AQI=' : 'AQID'};
  }
}

class _VoiceExportSource extends _Source {
  _VoiceExportSource(this.mime);
  final String mime;
  @override
  Future<Map<String, dynamic>> page(String? cursor) async => {
    'items': [{'requestId': 'voice-1', 'characterId': 'character',
      'kind': 'voice', 'userText': 'Hello', 'reply': 'Hi'}],
    'nextCursor': null,
  };
  @override
  Future<List<dynamic>> media(String characterId, List<String> requestIds) async => [
    {'requestId': 'voice-1', 'slot': 8, 'kind': 'voice',
      'mimeType': mime, 'name': 'masana-reply', 'sizeBytes': 3},
  ];
  @override
  Future<Map<String, dynamic>?> download(String characterId, String requestId, int slot) async =>
      {'mimeType': mime, 'sizeBytes': 3, 'dataBase64': 'AQID'};
}

class _RepeatedCursorSource extends _Source {
  @override
  Future<Map<String, dynamic>> page(String? cursor) async => {
    'items': <dynamic>[], 'nextCursor': 'repeated',
  };
}

void main() {
  late Directory parent;
  setUp(() async { parent = await Directory.systemTemp.createTemp('archive-test-'); });
  tearDown(() async { if (await parent.exists()) await parent.delete(recursive: true); });
  Directory output() => Directory('${parent.path}/output');

  test('ZIP includes actual bytes with generated safe paths and matching message references', () async {
    final source = _Source();
    final result = await createConversationArchive(directory: output(), source: source, isCurrent: () => true);
    final archive = ZipDecoder().decodeBytes(await result.file.readAsBytes());
    expect(source.batches.map((batch) => batch.length), [100, 1]);
    final manifest = jsonDecode(utf8.decode(archive.findFile('conversations.json')!.content as List<int>)) as Map;
    expect(manifest['mediaCount'], 101);
    expect(manifest['messages'], hasLength(101));
    final reference = (manifest['messages'] as List).first['media'][0];
    expect(reference['path'], 'media/attachment-1.png');
    expect(reference['originalName'], '../../outside.png');
    expect(archive.findFile(reference['path'])!.content, [1, 2, 3]);
    expect(archive.files.any((file) => file.name.contains('..')), isFalse);
  });

  test('encoded AAC and WebM voice replies retain their true file types in export', () async {
    for (final entry in {'audio/aac': 'aac', 'audio/webm': 'webm',
      'audio/m4a': 'm4a', 'audio/x-m4a': 'm4a'}.entries) {
      final destination = Directory('${parent.path}/${entry.value}-voice');
      final result = await createConversationArchive(directory: destination,
        source: _VoiceExportSource(entry.key), isCurrent: () => true);
      final archive = ZipDecoder().decodeBytes(await result.file.readAsBytes());
      final manifest = jsonDecode(utf8.decode(archive.findFile('conversations.json')!.content as List<int>)) as Map;
      final path = (manifest['messages'] as List).first['media'][0]['path'];
      expect(path, 'media/attachment-1.${entry.value}');
      expect(archive.findFile(path)!.content, [1, 2, 3]);
    }
  });

  test('missing media is reported without claiming its bytes are included', () async {
    final result = await createConversationArchive(directory: output(), source: _Source(missing: true), isCurrent: () => true);
    final archive = ZipDecoder().decodeBytes(await result.file.readAsBytes());
    final manifest = jsonDecode(utf8.decode(archive.findFile('conversations.json')!.content as List<int>)) as Map;
    expect(result.mediaCount, 0);
    expect(result.unavailableCount, 101);
    expect(manifest['mediaFilesIncluded'], isFalse);
    expect((manifest['messages'] as List).first['media'][0]['status'], 'expired_or_missing');
  });

  test('oversized files are reported without downloading', () async {
    final source = _Source(oversize: true);
    final result = await createConversationArchive(directory: output(), source: source, isCurrent: () => true);
    expect(source.downloads, 0);
    expect(result.unavailableCount, 101);
  });

  test('a payload-size mismatch fails and removes partial output', () async {
    final directory = output();
    await expectLater(createConversationArchive(directory: directory, source: _Source(corrupt: true),
      isCurrent: () => true), throwsFormatException);
    expect(await directory.exists(), isFalse);
  });

  test('repeated pagination fails and deletes temporary output', () async {
    final directory = output();
    await expectLater(createConversationArchive(directory: directory, source: _RepeatedCursorSource(),
      isCurrent: () => true), throwsFormatException);
    expect(await directory.exists(), isFalse);
  });

  test('failure removes the partial ZIP and all temporary files', () async {
    final directory = output();
    await expectLater(createConversationArchive(directory: directory, source: _Source(fail: true), isCurrent: () => true), throwsStateError);
    expect(await directory.exists(), isFalse);
  });

  test('account change during download removes the complete temporary directory', () async {
    final source = _Source();
    final directory = output();
    await expectLater(createConversationArchive(directory: directory, source: source,
      isCurrent: () => source.downloads == 0), throwsStateError);
    expect(await directory.exists(), isFalse);
  });
}
