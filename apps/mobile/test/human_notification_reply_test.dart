import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/notification_reply/notification_reply.dart';

class MemoryReplyReceiptIO implements HumanReplyReceiptIO {
  final data = <String, String>{};
  bool failWrite = false;

  @override
  Future<String?> read(String key) async => data[key];

  @override
  Future<void> write(String key, String value) async {
    if (failWrite) throw StateError('Encrypted storage failed');
    data[key] = value;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const thread = '6b943dad-7684-4ed3-9841-852588ae44ce';
  const owner = 'owner-a';
  const epoch = 12;
  final push = <String, dynamic>{
    'type': 'human_message',
    'conversationId': thread,
    'eventId': 'human-123456',
    'deepLink': 'masanawa://human/chat/$thread',
  };

  test('only typed, matched human-message notifications expose draft action', () {
    final hint = HumanNotificationReplyHint.fromPush(push, owner, epoch)!;
    expect(hint.route, '/human/chat/$thread');
    expect(HumanNotificationReplyHint.fromPayload(hint.toPayload())!.eventId,
        'human-123456');
    expect(hint.toPayload(), isNot(contains('hello private message')));
    expect(HumanNotificationReplyHint.fromPush({...push, 'type': 'human_call'}, owner, epoch), isNull);
    expect(HumanNotificationReplyHint.fromPush({...push, 'eventId': 'not-event'}, owner, epoch), isNull);
    expect(HumanNotificationReplyHint.fromPush({...push, 'conversationId': '../wallet'}, owner, epoch), isNull);
    expect(HumanNotificationReplyHint.fromPush({...push, 'deepLink': 'masanawa://wallet'}, owner, epoch), isNull);
    expect(HumanNotificationReplyHint.fromPush(push, null, epoch), isNull);
    expect(HumanNotificationReplyHint.fromPayload('{bad-json'), isNull);
    expect(HumanNotificationReplyHint.fromPayload(hint.toPayload().replaceFirst('owner-a', 'other')), isNotNull);
  });

  test('duplicate taps and account epoch switches discard unsent private input', () {
    final inbox = HumanNotificationReplyInbox.instance;
    final hint = HumanNotificationReplyHint.fromPush(push, owner, epoch)!;
    inbox.bindAuthorization(owner, epoch);
    expect(inbox.offer(payload: hint.toPayload(), input: 'Draft only'), isTrue);
    final original = inbox.pending!;
    expect(inbox.authorized(original), isTrue);
    expect(inbox.offer(payload: hint.toPayload(), input: 'Draft only'), isFalse);
    expect(inbox.pending!.token, original.token);
    inbox.bindAuthorization(owner, epoch + 1);
    expect(inbox.pending, isNull);
    expect(inbox.authorized(original), isFalse);
    expect(inbox.offer(payload: hint.toPayload(), input: 'stale'), isFalse);
    inbox.bindAuthorization('other-owner', epoch);
    expect(inbox.offer(payload: hint.toPayload(), input: 'private'), isFalse);
    inbox.clear();
  });

  test('original reply ID survives duplicate notification and text substitution fails closed', () async {
    final io = MemoryReplyReceiptIO();
    final store = HumanReplyReceiptStore(io: io);
    final hint = HumanNotificationReplyHint.fromPush(push, owner, epoch)!;
    final first = await store.reserve(hint: hint, text: 'Hello');
    expect(first, startsWith('request_'));
    expect(await store.reserve(hint: hint, text: 'Hello'), first);
    expect(io.data.values.single, isNot(contains('Hello')));
    await expectLater(store.reserve(hint: hint, text: 'Changed text'), throwsStateError);
    io.data.updateAll((_, __) => '{damaged');
    await expectLater(store.reserve(hint: hint, text: 'Hello'), throwsStateError);
  });

  test('failed secure write cannot create a network-send identity', () async {
    final io = MemoryReplyReceiptIO()..failWrite = true;
    final hint = HumanNotificationReplyHint.fromPush(push, owner, epoch)!;
    await expectLater(
      HumanReplyReceiptStore(io: io).reserve(hint: hint, text: 'Hello'),
      throwsStateError,
    );
    expect(io.data, isEmpty);
  });

  test('Android device lock guard denies missing/locked native channel', () async {
    const channel = MethodChannel('masanawa/device_unlock');
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    const guard = HumanReplyDeviceUnlock();
    expect(await guard.isUnlocked(), isFalse);
    messenger.setMockMethodCallHandler(channel, (call) async {
      expect(call.method, 'isUnlocked');
      return false;
    });
    try {
      expect(await guard.isUnlocked(), isFalse);
      messenger.setMockMethodCallHandler(channel, (_) async => true);
      expect(await guard.isUnlocked(), isTrue);
    } finally {
      messenger.setMockMethodCallHandler(channel, null);
    }
  });
}
