import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/mobile_push.dart';

void main() {
  const uuid = '6b943dad-7684-4ed3-9841-852588ae44ce';

  test('canonical incoming-call FCM data selects ringtone notification', () {
    expect(
      isIncomingCallPush({
        'type': 'incoming_call',
        'callId': uuid,
        'characterId': 'character_masana',
      }),
      isTrue,
    );
  });

  test('human call hints require the call type and safe route', () {
    final data = {
      'type': 'human_call',
      'callId': uuid,
      'deepLink': 'masanawa://human/call/$uuid',
    };
    expect(isIncomingCallPush(data), isTrue);
    expect(isIncomingCallPush({...data, 'type': 'status_post'}), isFalse);
    expect(
      isIncomingCallPush({
        ...data,
        'deepLink': 'masanawa://human/call/../wallet',
      }),
      isFalse,
    );
  });

  test('updates, spoofed call IDs, and missing fields never ring', () {
    expect(
      isIncomingCallPush({'type': 'status_post', 'callId': uuid}),
      isFalse,
    );
    expect(
      isIncomingCallPush({'type': 'incoming_call', 'callId': '../other'}),
      isFalse,
    );
    expect(isIncomingCallPush({'type': 'incoming_call'}), isFalse);
    expect(isIncomingCallPush({}), isFalse);
  });
}
