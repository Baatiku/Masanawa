import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/mobile_push.dart';

void main() {
  test('retired call and human message pushes cannot navigate or ring', () {
    for (final type in ['human_call', 'human_message', 'incoming_call', 'room']) {
      expect(mobilePushNavigationLink({
        'type': type,
        'callId': '12345678-1234-1234-1234-123456789abc',
        'deepLink': 'masanawa://chat/character_abc',
      }), isNull);
    }
  });
  test('retained Masana replies and Status updates use validated links', () {
    expect(mobilePushNavigationLink({'characterId': 'character_abc'}),
        'masanawa://chat/character_abc');
    expect(mobilePushNavigationLink({'deepLink': 'masanawa://status/post_123'}),
        'masanawa://status/post_123');
    expect(mobilePushNavigationLink({'deepLink': 'https://evil.example/status/a'}), isNull);
  });
}
