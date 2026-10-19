import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

void main() {
  final folder = Directory('/private/current-owner');
  ChatAttachment media(String path) => ChatAttachment(
    kind: 'voice', path: path, durationMs: 1234, waveform: const [0.2],
  );
  AiChatMessage message(String id, ChatAttachment attachment, {
    String status = 'sent', bool isUser = true,
  }) => AiChatMessage(
    id: id, isUser: isUser, text: 'Keep canonical text',
    createdAt: DateTime.utc(2026), requestId: id,
    deliveryStatus: status, attachment: attachment, replyToId: 'receipt',
  );

  test('evicts only known downloads and preserves messages and receipt metadata', () {
    final download = media('${folder.path}/remote-request-1-0.ogg');
    final original = media('${folder.path}/cmVxdWVzdA_0.m4a');
    final reply = media('${folder.path}/cmVxdWVzdA_assistant_reply.wav');
    final otherOwner = media('/private/another-owner/remote-request-4-0.ogg');
    final initial = AiChatState(threads: {
      'character': ChatThread(characterId: 'character', messages: [
        message('request-1', download), message('request-2', original),
        message('request-3', reply, isUser: false),
        message('request-4', otherOwner),
      ], draft: 'Do not discard', pinned: true),
    });
    final plan = planDownloadedChatMediaCleanup(initial, folder);
    expect(plan.paths, {download.path});
    final thread = plan.state.threads['character']!;
    expect(thread.messages.length, 4);
    expect(thread.draft, 'Do not discard');
    expect(thread.pinned, isTrue);
    final first = thread.messages.first;
    expect(first.text, 'Keep canonical text');
    expect(first.replyToId, 'receipt');
    expect(first.attachment!.path,
        chatRemoteMediaReference('character', 'request-1', 0));
    expect(first.attachment!.durationMs, 1234);
    expect(first.attachment!.waveform, [0.2]);
    expect(thread.messages[1].attachment!.path, original.path);
    expect(thread.messages[2].attachment!.path, reply.path);
    expect(thread.messages[3].attachment!.path, otherOwner.path);
  });

  test('drafts, retryable turns, open chats and sending chats protect their bytes', () {
    for (final status in ['queued', 'failed', 'sending', 'processing', 'unknown']) {
      final file = media('${folder.path}/remote-request-1-0.ogg');
      final state = AiChatState(threads: {'character': ChatThread(
        characterId: 'character', messages: [message('request-1', file, status: status)],
      )});
      expect(planDownloadedChatMediaCleanup(state, folder).paths, isEmpty);
    }
    final shared = media('${folder.path}/remote-request-1-0.ogg');
    for (final thread in [
      ChatThread(characterId: 'character', messages: [message('request-1', shared)],
          draftAttachments: [shared]),
      ChatThread(characterId: 'character', messages: [message('request-1', shared)],
          draftVoice: shared),
    ]) {
      final state = AiChatState(threads: {'character': thread});
      expect(planDownloadedChatMediaCleanup(state, folder).paths, isEmpty);
    }
    final thread = ChatThread(characterId: 'character',
        messages: [message('request-1', shared)]);
    for (final state in [
      AiChatState(threads: {'character': thread}, openThreadId: 'character'),
      AiChatState(threads: {'character': thread}, sendingIn: {'character'}),
    ]) {
      expect(planDownloadedChatMediaCleanup(state, folder).paths, isEmpty);
    }
  });

  test('assistant downloads retain reserved slot and protected cross-thread aliases', () {
    final audio = media('${folder.path}/remote-request-1-8.wav');
    final state = AiChatState(threads: {'character': ChatThread(
      characterId: 'character', messages: [message('request-1', audio, isUser: false)],
    )});
    final plan = planDownloadedChatMediaCleanup(state, folder);
    expect(plan.paths, {audio.path});
    expect(plan.state.threads['character']!.messages.single.attachment!.path,
        chatRemoteMediaReference('character', 'request-1', 8));
    final protected = state.copyWith(threads: {...state.threads,
      'draft': ChatThread(characterId: 'draft', draftVoice: audio),
    });
    expect(planDownloadedChatMediaCleanup(protected, folder).paths, isEmpty);
  });
}
