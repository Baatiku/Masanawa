import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/live_pcm_audio.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('masanawa/live_pcm');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() => messenger.setMockMethodCallHandler(channel, null));

  test('failed native write is observable by the live session', () async {
    messenger.setMockMethodCallHandler(channel, (_) async => false);
    expect(await LivePcmAudio.write(Uint8List.fromList([1, 0])), isFalse);
  });

  test('missing native player fails closed', () async {
    expect(await LivePcmAudio.start(), isFalse);
    expect(await LivePcmAudio.write(Uint8List.fromList([1, 0])), isFalse);
  });

  test(
    'native call outputs are parsed and disconnected devices fail closed',
    () async {
      final calls = <MethodCall>[];
      messenger.setMockMethodCallHandler(channel, (call) async {
        calls.add(call);
        if (call.method == 'routes')
          return [
            {
              'id': 'device:2',
              'kind': 'speaker',
              'label': 'Speaker',
              'selected': true,
            },
            {
              'id': 'device:7',
              'kind': 'bluetooth',
              'label': 'Headset',
              'selected': false,
            },
            {
              'id': 'device:500',
              'kind': 'unknown',
              'label': 'Unknown',
              'selected': false,
            },
          ];
        if (call.method == 'route') return call.arguments['id'] == 'device:7';
        return false;
      });
      final routes = await LivePcmAudio.availableCallRoutes();
      expect(routes.map((route) => route.kind), ['speaker', 'bluetooth']);
      expect(routes.first.selected, isTrue);
      expect(await LivePcmAudio.selectCallRoute(routes.last.id), isTrue);
      expect(await LivePcmAudio.selectCallRoute('device:missing'), isFalse);
      expect(calls.last.arguments['id'], 'device:missing');
      expect(await LivePcmAudio.selectCallRoute(''), isFalse);
    },
  );

  test(
    'unavailable native output list fails closed without inventing devices',
    () async {
      expect(await LivePcmAudio.availableCallRoutes(), isEmpty);
      expect(await LivePcmAudio.selectCallRoute('device:9'), isFalse);
    },
  );

  test('PCM bytes and rate reach the native player unchanged', () async {
    final calls = <MethodCall>[];
    messenger.setMockMethodCallHandler(channel, (call) async {
      calls.add(call);
      return true;
    });
    expect(await LivePcmAudio.start(sampleRate: 24000), isTrue);
    final bytes = Uint8List.fromList([1, 0, 2, 0]);
    expect(await LivePcmAudio.write(bytes), isTrue);
    expect(calls[0].arguments['sampleRate'], 24000);
    expect(calls[1].arguments['bytes'], bytes);
    await LivePcmAudio.stop();
    expect(calls.last.method, 'stop');
  });
  test(
    'an old reply cannot stop or write over a newer reply or continuous call',
    () async {
      final calls = <MethodCall>[];
      messenger.setMockMethodCallHandler(channel, (call) async {
        calls.add(call);
        return true;
      });
      final old = LivePcmAudio.acquirePlaybackOwner();
      await LivePcmAudio.start(owner: old);
      await LivePcmAudio.start(); // A continuous call acquires the output device.
      final before = calls.length;
      await LivePcmAudio.stop(owner: old);
      expect(
        await LivePcmAudio.write(Uint8List.fromList([1, 0]), owner: old),
        false,
      );
      expect(calls.length, before);
      await LivePcmAudio.release();
    },
  );
}
