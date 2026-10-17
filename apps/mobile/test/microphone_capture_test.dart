import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:record/record.dart';
import 'package:masanawa/src/core/microphone_capture.dart';
import 'package:masanawa/src/core/audio_failure.dart';

class Recorder extends Mock implements AudioRecorder {}

void main() {
  setUpAll(() => registerFallbackValue(const RecordConfig()));
  test(
    'normal call captures PCM without a Bluetooth permission dependency',
    () async {
      final r = Recorder();
      late RecordConfig config;
      when(() => r.startStream(any())).thenAnswer((c) async {
        config = c.positionalArguments.first as RecordConfig;
        return const Stream<Uint8List>.empty();
      });
      await startCallMicrophone(r);
      expect(config.androidConfig.manageBluetooth, false);
      expect(config.sampleRate, 16000);
      expect(config.encoder, AudioEncoder.pcm16bits);
    },
  );
  test(
    'explicitly rejected voice configuration retries a cleaned-up basic microphone once',
    () async {
      final r = Recorder();
      final configs = <RecordConfig>[];
      when(() => r.stop()).thenAnswer((_) async => null);
      when(() => r.startStream(any())).thenAnswer((c) async {
        final config = c.positionalArguments.first as RecordConfig;
        configs.add(config);
        if (configs.length == 1) throw PlatformException(code: 'record');
        return const Stream<Uint8List>.empty();
      });
      await startCallMicrophone(r, bluetoothGranted: true);
      expect(configs.length, 2);
      expect(configs.first.androidConfig.manageBluetooth, true);
      expect(configs.last.androidConfig.manageBluetooth, false);
      expect(configs.last.androidConfig.audioSource, AndroidAudioSource.mic);
      expect(configs.last.echoCancel, false);
      verify(() => r.stop()).called(1);
    },
  );
  test(
    'permission failures do not retry and give a permission-specific message',
    () async {
      final r = Recorder();
      when(
        () => r.startStream(any()),
      ).thenThrow(PlatformException(code: 'permission_denied'));
      await expectLater(
        startCallMicrophone(r),
        throwsA(
          isA<AudioFailure>().having(
            (e) => e.message,
            'message',
            contains('permission'),
          ),
        ),
      );
      verify(() => r.startStream(any())).called(1);
      verifyNever(() => r.stop());
    },
  );
}
