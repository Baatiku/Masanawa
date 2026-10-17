import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/live_pcm_audio.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('masanawa/live_pcm');
  final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() => messenger.setMockMethodCallHandler(channel, null));

  test('failed native write is observable by the live session', () async {
    messenger.setMockMethodCallHandler(channel, (_) async => false);
    expect(await LivePcmAudio.write(Uint8List.fromList([1, 0])), isFalse);
  });

  test('missing native player fails closed', () async {
    expect(await LivePcmAudio.start(), isFalse);
    expect(await LivePcmAudio.write(Uint8List.fromList([1, 0])), isFalse);
  });

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
  test('an old reply cannot stop or write over a newer reply or continuous call', () async {
    final calls=<MethodCall>[];
    messenger.setMockMethodCallHandler(channel,(call)async{calls.add(call);return true;});
    final old=LivePcmAudio.acquirePlaybackOwner();await LivePcmAudio.start(owner:old);
    await LivePcmAudio.start(); // A continuous call acquires the output device.
    final before=calls.length;
    await LivePcmAudio.stop(owner:old);
    expect(await LivePcmAudio.write(Uint8List.fromList([1,0]),owner:old),false);
    expect(calls.length,before);
    await LivePcmAudio.release();
  });

}

