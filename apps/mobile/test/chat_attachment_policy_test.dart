import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

void main() {
  test('remote media references stay opaque through message cache hydration', () {
    final reference = chatRemoteMediaReference(
      'character_opaque', 'request_opaque', 3,
    );
    expect(reference, 'masanawa-remote|character_opaque|request_opaque|3');
    final media = ChatAttachment(
      kind: 'voice',
      path: reference,
      name: 'lesson.ogg',
      sizeBytes: 2048,
    );
    final restored = ChatAttachment.fromJson(media.toJson());
    expect(restored.path, reference);
    expect(restored.kind, 'voice');
    expect(restored.name, 'lesson.ogg');
    expect(restored.sizeBytes, 2048);
  });


  ChatAttachment file(String name, int bytes, {String kind = 'doc'}) =>
      ChatAttachment(
        kind: kind,
        path: '/private/$name',
        name: name,
        sizeBytes: bytes,
      );

  test('imported MP3 is audio, not a fabricated M4A voice note', () {
    final imported = file('lesson.mp3', 1024, kind: 'audio');
    final recorded = file('note.m4a', 1024, kind: 'voice');
    final importedM4a = file('song.m4a', 1024, kind: 'audio');

    expect(chatAttachmentMimeType(imported, const []), 'audio/mpeg');
    expect(chatAttachmentMimeType(recorded, const []), 'audio/m4a');
    expect(chatAttachmentMimeType(importedM4a, const []), 'audio/m4a');
    expect(imported.label, contains('lesson.mp3'));
    expect(imported.label, isNot(contains('Voice note')));
  });

  test('preview selections enforce per-file and encoded request upload limits', () {
    final selection = selectChatDraftAttachments(
      [file('image1.jpg', 6 * 1024 * 1024, kind: 'image')],
      [
        file('image2.jpg', 6 * 1024 * 1024, kind: 'image'),
        file('overflow.png', 1, kind: 'image'),
        file('giant.mp4', 9 * 1024 * 1024, kind: 'video'),
      ],
    );

    expect(selection.attachments.map((a) => a.name), [
      'image1.jpg',
      'overflow.png',
    ]);
    expect(selection.rejectedCount, 2);
  });

  test('preview limits reject empty files and selections beyond eight', () {
    final selection = selectChatDraftAttachments(
      [],
      [
        ...List.generate(9, (i) => file('file$i.txt', 50)),
        file('empty.txt', 0),
      ],
    );
    expect(selection.attachments, hasLength(8));
    expect(selection.rejectedCount, 2);
  });

  test('audio and voice stay separate in persisted draft JSON', () {
    final audio = file('speech.ogg', 120, kind: 'audio');
    final restored = ChatAttachment.fromJson(audio.toJson());
    expect(restored.kind, 'audio');
    expect(restored.path, audio.path);
  });
  test('offline media survives deletion of the temporary picker file', () async {
    final root = await Directory.systemTemp.createTemp('chat_media_test_');
    try {
      final picked = File('${root.path}/picked.ogg');
      await picked.writeAsBytes([1, 2, 3, 4], flush: true);
      final retained = await retainOutgoingChatMedia(
        ownerFolder: Directory('${root.path}/private_account_a'),
        requestId: 'req-1',
        attachments: [
          ChatAttachment(
            kind: 'audio',
            path: picked.path,
            name: 'lesson.ogg',
            sizeBytes: 4,
          ),
        ],
      );
      expect(retained, hasLength(1));
      expect(retained.single.path, contains('private_account_a'));
      expect(retained.single.name, 'lesson.ogg');
      await picked.delete();
      expect(await File(retained.single.path).readAsBytes(), [1, 2, 3, 4]);
      expect(chatAttachmentMimeType(retained.single, [1, 2, 3, 4]),
          'audio/ogg');
    } finally {
      await root.delete(recursive: true);
    }
  });

  test('large offline batch cannot leave a partially saved message', () async {
    final root = await Directory.systemTemp.createTemp('chat_media_limit_');
    try {
      final first = File('${root.path}/first.jpg');
      final second = File('${root.path}/second.jpg');
      await first.writeAsBytes(List.filled(7 * 1024 * 1024, 1));
      await second.writeAsBytes(List.filled(7 * 1024 * 1024, 2));
      final folder = Directory('${root.path}/private_account_b');
      await expectLater(
        retainOutgoingChatMedia(
          ownerFolder: folder,
          requestId: 'req-over-limit',
          attachments: [
            ChatAttachment(kind: 'image', path: first.path),
            ChatAttachment(kind: 'image', path: second.path),
          ],
        ),
        throwsA(isA<Exception>()),
      );
      expect(await folder.list().length, 0);
    } finally {
      await root.delete(recursive: true);
    }
  });

  test('Gemini reply audio survives app temporary-file eviction', () async {
    final root = await Directory.systemTemp.createTemp('masanawa_reply_test_');
    try {
      final ownerFolder = Directory('${root.path}/private_account_a');
      final retained = await retainAgentReplyAudio(
        ownerFolder: ownerFolder,
        requestId: 'turn-19',
        extension: 'wav',
        bytes: [82, 73, 70, 70, 0, 1, 2, 3],
      );
      expect(retained.path, contains('private_account_a'));
      expect(retained.path, endsWith('.wav'));
      expect(await retained.readAsBytes(), [82, 73, 70, 70, 0, 1, 2, 3]);

      // The same account's saved media remains playable until explicit
      // account cleanup, rather than depending on temporary-file retention.
      expect(await retained.exists(), isTrue);
      await ownerFolder.delete(recursive: true);
      expect(await retained.exists(), isFalse);
    } finally {
      await root.delete(recursive: true);
    }
  });

  test('Gemini audio cache rejects invalid or unbounded data', () async {
    final root = await Directory.systemTemp.createTemp('masanawa_reply_limit_');
    try {
      await expectLater(
        retainAgentReplyAudio(
          ownerFolder: root,
          requestId: 'bad-audio',
          extension: '../mp3',
          bytes: [1],
        ),
        throwsA(isA<Exception>()),
      );
      await expectLater(
        retainAgentReplyAudio(
          ownerFolder: root,
          requestId: 'empty-audio',
          extension: 'wav',
          bytes: const [],
        ),
        throwsA(isA<Exception>()),
      );
      expect(await root.list().length, 0);
    } finally {
      await root.delete(recursive: true);
    }
  });

  test('aggregate size is measured as encoded JSON data, including per-file padding', () {
    ChatAttachment file(String path,int bytes)=>ChatAttachment(kind:'doc',path:path,sizeBytes:bytes);
    expect(selectChatDraftAttachments([], [file('a',6000000),file('b',6000000)]).attachments,hasLength(2));
    expect(selectChatDraftAttachments([], [file('a',6000001),file('b',5999999)]).rejectedCount,1);
    expect(selectChatDraftAttachments([], [file('a',6*1024*1024),file('b',6*1024*1024)]).rejectedCount,1);
  });

}

