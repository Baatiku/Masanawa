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
    expect(mobilePushNavigationLink(data), 'masanawa://human/call/$uuid');
    expect(isIncomingCallPush({...data, 'type': 'status_post'}), isFalse);
    expect(
      isIncomingCallPush({
        ...data,
        'deepLink': 'masanawa://human/call/../wallet',
      }),
      isFalse,
    );
    expect(humanIncomingCallLink({
      ...data,
      'deepLink': 'masanawa://human/call/11111111-1111-4111-8111-111111111111',
    }), isNull);
  });

  test('typed incoming call ignores conflicting generic navigation', () {
    expect(mobilePushNavigationLink({
      'type': 'incoming_call', 'callId': uuid,
      'deepLink': 'masanawa://wallet/transaction/order_123',
    }), 'masanawa://calls/incoming/$uuid');
    expect(mobilePushNavigationLink({
      'type': 'human_call', 'callId': uuid,
      'deepLink': 'masanawa://wallet',
    }), isNull);
    expect(mobilePushNavigationLink({
      'type': 'status_post', 'deepLink': 'https://evil.example/room/room_123',
    }), isNull);
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
