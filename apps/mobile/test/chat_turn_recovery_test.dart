import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_shell.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

void main() {
  AiChatMessage message(
    String status, {
    String? requestId = 'request_original',
    bool isUser = true,
  }) => AiChatMessage(
    id: 'local-1',
    isUser: isUser,
    text: 'Buy a data bundle',
    createdAt: DateTime(2026, 10, 15),
    deliveryStatus: status,
    requestId: requestId,
  );

  test('interrupted sends recover without changing their idempotency key', () {
    for (final status in ['sending', 'sent']) {
      final before = message(status);
      final after = before.copyWith(
        deliveryStatus: recoveredChatDeliveryStatus(before),
      );
      expect(after.deliveryStatus, 'queued');
      expect(after.requestId, before.requestId);
      expect(after.id, before.id);
      expect(after.text, before.text);
    }
  });

  test('do not silently retry legacy sends lacking canonical request IDs', () {
    for (final status in ['sending', 'sent']) {
      expect(recoveredChatDeliveryStatus(message(
        status,
        requestId: null,
      )), 'failed');
    }
  });

  test('never replay already read, delivered, pending or failed operations', () {
    for (final status in [
      'queued', 'processing', 'failed', 'delivered', 'read',
    ]) {
      expect(recoveredChatDeliveryStatus(message(status)), status);
    }
    expect(recoveredChatDeliveryStatus(
      message('sending', isUser: false),
    ), 'sending');
  });

  test('canonical server receipt controls replays, never the local status', () {
    const cases = {
      'completed': ChatQueuedTurnResolution.delivered,
      'pending': ChatQueuedTurnResolution.processing,
      'failed': ChatQueuedTurnResolution.failed,
      'missing': ChatQueuedTurnResolution.resend,
      'unknown': ChatQueuedTurnResolution.wait,
    };
    for (final entry in cases.entries) {
      expect(
        resolveChatQueuedTurn(AgentTurnStatus(state: entry.key)),
        entry.value,
      );
    }
  });

  test('JSON hydration retains the exact media file path for a retry', () {
    final before = AiChatMessage(
      id: 'voice-original',
      isUser: true,
      text: '',
      createdAt: DateTime(2026, 10, 15),
      requestId: 'request_media',
      deliveryStatus: 'sent',
      attachment: const ChatAttachment(
        kind: 'voice',
        path: '/private/owner-media/voice-note.m4a',
        durationMs: 4500,
        sizeBytes: 1200,
      ),
    );
    final restored = AiChatMessage.fromJson(before.toJson());
    expect(recoveredChatDeliveryStatus(restored), 'queued');
    expect(restored.requestId, 'request_media');
    expect(restored.attachment?.path, before.attachment?.path);
    expect(restored.attachment?.durationMs, 4500);
  });
}
