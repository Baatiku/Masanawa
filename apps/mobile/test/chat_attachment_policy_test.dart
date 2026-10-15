import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

void main() {
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

  test('preview selections enforce the actual 8 MB / 12 MB upload limits', () {
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
      'image2.jpg',
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

}
