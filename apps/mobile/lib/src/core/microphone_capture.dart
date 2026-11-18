import 'dart:async';
import 'package:flutter/services.dart';
import 'package:record/record.dart';
import 'audio_failure.dart';

/// Bluetooth setup is opt-in to an already granted OS permission. A normal
/// phone microphone must not depend on Bluetooth permission or SCO pairing.
Future<Stream<Uint8List>> startCallMicrophone(
  AudioRecorder recorder, {
  bool bluetoothGranted = false,
}) async {
  RecordConfig config({bool compatible = false}) => RecordConfig(
    encoder: AudioEncoder.pcm16bits,
    // LiveVoiceSession owns focus and interruption handling. A second
    // record_android focus request interrupts our own call.
    audioInterruption: AudioInterruptionMode.none,
    sampleRate: 16000,
    numChannels: 1,
    echoCancel: !compatible,
    noiseSuppress: !compatible,
    autoGain: !compatible,
    androidConfig: AndroidRecordConfig(
      manageBluetooth: bluetoothGranted && !compatible,
      audioSource: compatible
          ? AndroidAudioSource.mic
          : AndroidAudioSource.voiceCommunication,
      audioManagerMode: AudioManagerMode.modeInCommunication,
    ),
  );
  try {
    try {
      return await recorder
          .startStream(config())
          .timeout(const Duration(seconds: 8));
    } on PlatformException catch (error) {
      if (error.code.toLowerCase().contains('permission')) rethrow;
      // Retry only an explicitly failed native configuration, never a pending
      // capture. Some Android devices reject voice effects/source combinations.
      try {
        await recorder.stop().timeout(const Duration(seconds: 2));
      } catch (_) {}
      return await recorder
          .startStream(config(compatible: true))
          .timeout(const Duration(seconds: 8));
    }
  } catch (error) {
    throw AudioFailure(
      'microphone_start',
      audioFailureMessage(
        error,
        fallback:
            'The microphone could not start. End other recordings or calls, check Android microphone privacy, then try again.',
      ),
    );
  }
}
