import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/call_signaling_tone.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('masanawa/call_tone');
  final calls = <MethodCall>[];
  setUp(() {
    calls.clear();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
          calls.add(call);
          return true;
        });
  });
  tearDown(
    () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null),
  );

  test(
    'connect stops signaling, duplicate updates do not replay and close is final',
    () async {
      final tone = CallSignalingTone();
      await tone.update(CallTone.outgoing);
      await tone.update(CallTone.outgoing);
      await tone.update(null);
      await tone.close();
      await tone.update(CallTone.outgoing);
      expect(calls.map((c) => c.method), ['start', 'stop', 'stop']);
      expect((calls.first.arguments as Map)['kind'], 'outgoing');
    },
  );
  test(
    'old controller cleanup carries only its lease, never the new call owner',
    () async {
      final old = CallSignalingTone(), next = CallSignalingTone();
      await old.update(CallTone.outgoing);
      await next.update(CallTone.outgoing);
      await old.close();
      expect(
        (calls[2].arguments as Map)['owner'],
        (calls[0].arguments as Map)['owner'],
      );
      expect(
        (calls[2].arguments as Map)['owner'],
        isNot((calls[1].arguments as Map)['owner']),
      );
      await next.close();
    },
  );
  testWidgets('a stalled native stop is bounded and cannot reject cleanup', (
    tester,
  ) async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
          if (call.method == 'stop') return Completer<bool>().future;
          return true;
        });
    final tone = CallSignalingTone();
    await tone.update(CallTone.outgoing);
    final closing = tone.close();
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    await closing;
  });
  test(
    'disposing before a queued start prevents a late ringing sound',
    () async {
      final tone = CallSignalingTone();
      final start = tone.update(CallTone.outgoing);
      final end = tone.close();
      await Future.wait([start, end]);
      expect(calls.map((c) => c.method), ['stop']);
    },
  );
}
