import 'package:flutter/services.dart';

/// One currently available native communication output. Device IDs are
/// temporary, local-only selection tokens, never persisted or sent to AI.
class CallAudioRoute {
  const CallAudioRoute({
    required this.id,
    required this.kind,
    required this.label,
    required this.selected,
  });

  final String id, kind, label;
  final bool selected;

  static CallAudioRoute? parse(Object? raw) {
    if (raw is! Map) return null;
    final id = raw['id'], kind = raw['kind'], label = raw['label'];
    if (id is! String ||
        id.isEmpty ||
        id.length > 40 ||
        kind is! String ||
        !const [
          'speaker',
          'earpiece',
          'bluetooth',
          'wired',
          'usb',
        ].contains(kind) ||
        label is! String ||
        label.isEmpty ||
        label.length > 64 ||
        raw['selected'] is! bool)
      return null;
    return CallAudioRoute(
      id: id,
      kind: kind,
      label: label,
      selected: raw['selected'] as bool,
    );
  }
}

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

  /// Ask Android for actual, selectable outputs. Older/unsupported platforms
  /// fail closed to the existing speaker/earpiece toggle in the call UI.
  static Future<List<CallAudioRoute>> availableCallRoutes() async {
    try {
      final raw = await _channel.invokeListMethod<dynamic>('routes');
      if (raw == null) return const [];
      return raw.map(CallAudioRoute.parse).whereType<CallAudioRoute>().toList();
    } on MissingPluginException {
      return const [];
    } on PlatformException {
      return const [];
    }
  }

  static Future<bool> selectCallRoute(String id) async {
    if (id.isEmpty || id.length > 40) return false;
    try {
      return await _channel.invokeMethod<bool>('route', {'id': id}) ?? false;
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
