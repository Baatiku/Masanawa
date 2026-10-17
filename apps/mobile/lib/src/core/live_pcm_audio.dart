
import 'package:flutter/services.dart';

/// Thin native bridge for low-latency Gemini Live PCM playback.
///
/// Android receives mono PCM16 at 24 kHz and feeds it to AudioTrack in stream
/// mode. Unsupported platforms fail closed to buffered WAV playback.
class LivePcmAudio {
  LivePcmAudio._();

  static const MethodChannel _channel = MethodChannel('masanawa/live_pcm');

  static int _playbackOwner = 0;
  static int acquirePlaybackOwner() => ++_playbackOwner;
  static bool isPlaybackOwner(int owner) => owner == _playbackOwner;

  static Future<bool> start({int sampleRate = 24000, int? owner}) async {
    if (owner != null && !isPlaybackOwner(owner)) return false;
    if (owner == null) ++_playbackOwner;
    try {
      return await _channel.invokeMethod<bool>('start', {
            'sampleRate': sampleRate,
          }) ??
          false;
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    }
  }

  static Future<bool> write(Uint8List bytes, {int? owner}) async {
    if (owner != null && !isPlaybackOwner(owner)) return false;
    if (bytes.isEmpty) return true;
    try {
      return await _channel.invokeMethod<bool>('write', {'bytes': bytes}) ??
          false;
    } on MissingPluginException {
      // Buffered WAV playback remains available.
      return false;
    } on PlatformException {
      // Buffered WAV playback remains available.
      return false;
    }
  }

  static Future<bool> setSpeaker(bool enabled) async {
    try {
      return await _channel.invokeMethod<bool>('speaker', {
            'enabled': enabled,
          }) ??
          false;
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    }
  }

  static Future<void> stop({int? owner}) async {
    if (owner != null && !isPlaybackOwner(owner)) return;
    ++_playbackOwner;
    try {
      await _channel.invokeMethod<void>('stop');
    } on MissingPluginException {
      // Unsupported platform.
    } on PlatformException {
      // Unsupported platform.
    }
  }

  /// Ending a live call also restores Android's normal communication route.
  static Future<void> release() async {
    ++_playbackOwner;
    try {
      await _channel.invokeMethod<void>('release');
    } on MissingPluginException {
      // Unsupported platform.
    } on PlatformException {
      // Audio may already have been released by Android.
    }
  }
}
