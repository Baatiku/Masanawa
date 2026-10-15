import 'dart:io';

import 'package:flutter/services.dart';

/// Android's foreground microphone notification belongs to an ongoing call,
/// never to a standalone voice note. Gemini owns media and call authorization.
class LiveCallForeground {
  LiveCallForeground._();

  static const MethodChannel _channel = MethodChannel('masanawa/live_call');

  /// Must be requested while Flutter is in the foreground, after RECORD_AUDIO
  /// permission. Fail closed on Android instead of silently consuming a paid
  /// call when background microphone operation cannot be maintained.
  static Future<bool> start() async {
    if (!Platform.isAndroid) return true;
    try {
      return await _channel.invokeMethod<bool>('start') ?? false;
    } on MissingPluginException {
      return false;
    } on PlatformException {
      return false;
    }
  }

  static Future<void> stop() async {
    if (!Platform.isAndroid) return;
    try {
      await _channel.invokeMethod<bool>('stop');
    } on MissingPluginException {
      // No active native service on this platform/build.
    } on PlatformException {
      // The native service may already be stopped by Android.
    }
  }
}
