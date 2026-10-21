import 'dart:async';
import 'package:flutter/services.dart';
import 'live_call_foreground.dart';

enum CallTone { incoming, outgoing }

/// One lease per controller. Native stop is owner-fenced, so stale cleanup
/// cannot silence a newer call. Missing platform support never blocks a call.
class CallSignalingTone {
  static const _channel = MethodChannel('masanawa/call_tone');
  static int _next = 0;
  final String _owner = 'call-tone-${DateTime.now().microsecondsSinceEpoch}-${++_next}';
  CallTone? _desired;
  bool _closed = false;
  Future<void> _serial = Future<void>.value();

  Future<void> update(CallTone? mode) {
    if (_closed) return _serial;
    if (mode == CallTone.incoming && LiveCallForeground.active) mode = null;
    if (mode == _desired) return _serial;
    _desired = mode;
    return _serial = _serial.then((_) async {
      if (_closed || mode != _desired) return;
      try {
        await _channel.invokeMethod<bool>(mode == null ? 'stop' : 'start', {
          'owner': _owner, if (mode != null) 'kind': mode.name,
        }).timeout(const Duration(seconds: 1));
      } on TimeoutException {
        // Signaling must not hold media connection or cleanup hostage.
      } on MissingPluginException {
        // Visual signaling remains available on unsupported platforms.
      } on PlatformException {
        // OS audio focus/DND can legitimately suppress a call tone.
      }
    });
  }

  Future<void> close() {
    if (_closed) return _serial;
    _closed = true;
    _desired = null;
    return _serial = _serial.then((_) async {
      try {
        await _channel.invokeMethod<bool>('stop', {'owner': _owner}).timeout(const Duration(seconds: 1));
      } on TimeoutException {
      } on MissingPluginException {
      } on PlatformException {
      }
    });
  }
}
