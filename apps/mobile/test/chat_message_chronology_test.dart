import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

AiChatMessage message(String id, int day, {String status = 'sent'}) =>
  AiChatMessage(id: id, isUser: true, text: id,
    createdAt: DateTime.utc(2026, 10, day), deliveryStatus: status);

void main() {
  test('pinned chats lead active inbox while drafts and retries do not change chronology', () {
    final older = ChatThread(characterId: 'older', pinned: true,
      draft: 'edited today', updatedAt: DateTime.utc(2026, 10, 25),
      messages: [message('old', 10), message('failed', 25, status: 'failed')]);
    final recent = ChatThread(characterId: 'recent',
      updatedAt: DateTime.utc(2026, 10, 1), messages: [message('new', 20)]);
    final archived = ChatThread(characterId: 'archived', archived: true,
      messages: [message('archived-message', 5)]);
    final state = AiChatState(threads: {
      for (final thread in [older, archived, recent]) thread.characterId: thread,
    });
    expect(state.chatList.map((t) => t.characterId), ['older', 'recent']);
    expect(older.lastMessageActivityAt, DateTime.utc(2026, 10, 10));
    expect(older.pinned, isTrue);
    expect(archived.archived, isTrue);
    expect(older.messages, hasLength(2));
  });
  test('late replay and edits do not replace latest confirmed message timestamp', () {
    final thread = ChatThread(characterId: 'agent', messages: [
      message('new', 20), message('late-history', 4),
      message('queued', 25, status: 'queued'),
      message('streaming', 25, status: 'streaming'),
    ]);
    expect(thread.lastMessageActivityAt, DateTime.utc(2026, 10, 20));
    expect(thread.copyWith(draft: 'new draft', updatedAt: DateTime.utc(2026, 10, 30))
      .lastMessageActivityAt, DateTime.utc(2026, 10, 20));
  });
  test('equal message times have stable canonical identity ordering', () {
    final threads = {'z': ChatThread(characterId: 'z', messages: [message('z', 20)]),
      'a': ChatThread(characterId: 'a', messages: [message('a', 20)])};
    expect(AiChatState(threads: threads).chatList.map((t) => t.characterId), ['a', 'z']);
  });
}
