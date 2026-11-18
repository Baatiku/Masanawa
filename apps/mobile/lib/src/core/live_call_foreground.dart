import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'audio_failure.dart';

/// Android microphone service belongs to continuous calls, never voice notes.
class LiveCallForeground {
  LiveCallForeground._();
  static const MethodChannel _channel = MethodChannel('masanawa/live_call');
  static int _owners = 0;
  static bool get active => _owners > 0;
  static final _activity = ValueNotifier<bool>(false);

  /// Observe call takeover without acquiring a microphone or native service.
  static ValueListenable<bool> get activity => _activity;
  static void _acquire() {
    _owners++;
    _activity.value = true;
  }

  static bool get _android => Platform.isAndroid;
  static Future<void> startOrThrow({bool? android}) async {
    if (!(android ?? _android)) {
      _acquire();
      return;
    }
    try {
      if (await _channel.invokeMethod<bool>('start') != true) {
        throw const AudioFailure(
          'foreground_start',
          'Android could not start the call service. Keep the app open, end other calls, then retry.',
        );
      }
      _acquire();
    } on MissingPluginException {
      throw const AudioFailure(
        'app_update',
        'This installed app is missing its Android call service. Install the latest Masanawa APK, then retry.',
      );
    } on PlatformException {
      throw const AudioFailure(
        'foreground_start',
        'Android could not start the call service. Keep the app open and check microphone access in settings.',
      );
    }
  }

  static Future<bool> start() async {
    try {
      await startOrThrow();
      return true;
    } on AudioFailure {
      return false;
    }
  }

  static Future<void> stop() async {
    if (_owners > 0) _owners--;
    _activity.value = active;
    if (_owners > 0) return;
    if (!_android) return;
    try {
      await _channel.invokeMethod<bool>('stop');
    } on MissingPluginException {
      /* Already stopped. */
    } on PlatformException {
      /* Already stopped. */
    }
  }
}
