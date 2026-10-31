import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

/// Host-side scalability fixture. It measures model parsing/sorting only;
/// real build/raster frame timings and memory budgets require a profile-mode
/// device run, not a widget-test claim about handset smoothness.
void main() {
  for (final count in [500, 2000, 10000]) {
    test('large history $count messages retains correct chronology', () {
      final origin = DateTime.utc(2026, 10, 31);
      final stopwatch = Stopwatch()..start();
      final messages = List<AiChatMessage>.generate(count, (index) =>
        AiChatMessage(
          id: 'history-$index',
          isUser: index.isEven,
          text: index.isEven ? 'Sannu da aiki.' : 'وعليكم السلام',
          createdAt: origin.add(Duration(seconds: index)),
          deliveryStatus: index == count - 1 ? 'queued' : 'delivered',
        ), growable: false);
      final longThread = ChatThread(characterId: 'long', messages: messages);
      final pinnedThread = ChatThread(characterId: 'pinned', pinned: true,
        messages: [
          AiChatMessage(
            id: 'older', isUser: true, text: 'Earlier',
            createdAt: origin, deliveryStatus: 'delivered'),
        ]);
      final state = AiChatState(threads: {
        'long': longThread,
        'pinned': pinnedThread,
      });
      expect(longThread.lastMessageActivityAt,
        origin.add(Duration(seconds: count - 2)));
      for (var repeat = 0; repeat < 5; repeat++) {
        expect(state.chatList.map((thread) => thread.characterId).toList(),
          ['pinned', 'long']);
        expect(state.chatList.last.lastMessage?.id,
          'history-${count - 1}');
      }
      stopwatch.stop();
      debugPrint('CHATS_HISTORY_DIAGNOSTIC count=$count '
        'model_duration_ms=${stopwatch.elapsedMilliseconds} '
        'host_only=true');
    });
  }
}
