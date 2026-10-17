import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/live_call_foreground.dart';
import 'package:masanawa/src/core/audio_failure.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('masanawa/live_call');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  tearDown(() => messenger.setMockMethodCallHandler(channel, null));
  test(
    'missing native call service requests an APK update, not another microphone grant',
    () async {
      await expectLater(
        LiveCallForeground.startOrThrow(android: true),
        throwsA(
          isA<AudioFailure>().having((e) => e.code, 'code', 'app_update'),
        ),
      );
    },
  );
  test(
    'native service rejection is distinguished from denied recording permission',
    () async {
      messenger.setMockMethodCallHandler(channel, (_) async => false);
      await expectLater(
        LiveCallForeground.startOrThrow(android: true),
        throwsA(
          isA<AudioFailure>().having((e) => e.code, 'code', 'foreground_start'),
        ),
      );
    },
  );
  test(
    'an active call suppresses automatic chat audio until the call releases it',
    () async {
      messenger.setMockMethodCallHandler(channel, (_) async => true);
      await LiveCallForeground.startOrThrow(android: true);
      expect(LiveCallForeground.active, true);
      await LiveCallForeground.stop();
      expect(LiveCallForeground.active, false);
    },
  );
  test('ending one session keeps shared call ownership until every session ends',() async {
    await LiveCallForeground.startOrThrow(android:false);
    await LiveCallForeground.startOrThrow(android:false);
    await LiveCallForeground.stop();expect(LiveCallForeground.active,true);
    await LiveCallForeground.stop();expect(LiveCallForeground.active,false);
  });

}
