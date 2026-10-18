import 'dart:async';
import 'dart:convert';
import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Diagnostics are local-only and never transmit automatically.
class MasanawaDiagnostics {
  MasanawaDiagnostics._();
  static final instance = MasanawaDiagnostics._();
  static const _storage = FlutterSecureStorage();
  static const _key = 'masanawa.diagnostics.v1';
  static const _native = MethodChannel('masanawa/diagnostics');
  Future<void> _pending = Future<void>.value();
  bool _installed = false;

  static String safeErrorType(Object error) {
    final type = error.runtimeType.toString();
    return RegExp(r'^[A-Za-z_][A-Za-z0-9_]{0,47}$').hasMatch(type)
        ? type : 'UnclassifiedError';
  }

  static String safeAppFrame(StackTrace? trace) {
    if (trace == null) return 'unknown';
    final match = RegExp(
      r'package:masanawa/(src/[a-zA-Z0-9_/-]+\.dart):([0-9]{1,6})',
    ).firstMatch(trace.toString());
    if (match == null) return 'unknown';
    return '${match.group(1)}:${match.group(2)}';
  }

  Future<void> record(Object error, StackTrace? trace) {
    final event = <String, String>{
      'type': safeErrorType(error), 'frame': safeAppFrame(trace),
      'day': DateTime.now().toUtc().toIso8601String().substring(0, 10),
    };
    final done = Completer<void>();
    _pending = _pending.catchError((Object _) {}).then((_) async {
      try {
        final raw = await _storage.read(key: _key);
        final decoded = raw == null ? <dynamic>[] : jsonDecode(raw);
        final previous = decoded is List ? decoded : <dynamic>[];
        final entries = previous
            .whereType<Map>()
            .where((value) => value.keys.every((k) => k is String) &&
                value.values.every((v) => v is String))
            .take(19)
            .map((value) => value.cast<String, String>())
            .toList(growable: true);
        entries.insert(0, event);
        await _storage.write(key: _key, value: jsonEncode(entries.take(20).toList()));
      } catch (_) {
        // Diagnostics never block sign-in, rendering, network or Wallet.
      } finally {
        done.complete();
      }
    });
    return done.future;
  }

  void install() {
    if (_installed) return;
    _installed = true;
    final originalFlutterHandler = FlutterError.onError;
    FlutterError.onError = (details) {
      if (!kReleaseMode) originalFlutterHandler?.call(details);
      unawaited(record(details.exception, details.stack));
    };
    final old = PlatformDispatcher.instance.onError;
    PlatformDispatcher.instance.onError = (error, stack) {
      unawaited(record(error, stack));
      return old?.call(error, stack) ?? false;
    };
  }

  Future<String> exportSanitizedReport() async {
    await _pending;
    List<dynamic> stored = [];
    try {
      final raw = await _storage.read(key: _key);
      final data = raw == null ? <dynamic>[] : jsonDecode(raw);
      if (data is List) stored = data;
    } catch (_) {}
    final lines = <String>[
      'Masanawa support diagnostics: local, anonymous, user-initiated export',
      'No account, device identifiers, conversations, tokens, URLs or raw stacks.',
      'Flutter exceptions:',
    ];
    for (final entry in stored.take(20)) {
      if (entry is! Map) continue;
      final type = entry['type'], frame = entry['frame'], day = entry['day'];
      if (type is String && RegExp(r'^[A-Za-z_][A-Za-z0-9_]{0,47}$').hasMatch(type) &&
          frame is String && (frame == 'unknown' ||
              RegExp(r'^src/[a-zA-Z0-9_/-]+\.dart:[0-9]{1,6}$').hasMatch(frame)) &&
          day is String && RegExp(r'^[0-9]{4}-[0-9]{2}-[0-9]{2}$').hasMatch(day)) {
        lines.add('$day $type $frame');
      }
    }
    lines.add('Android previous exit reasons:');
    try {
      final exits = await _native.invokeMethod<List<dynamic>>('previousExits');
      for (final kind in (exits ?? []).take(10)) {
        if (kind is String && const {
          'anr', 'java_crash', 'native_crash', 'low_memory',
        }.contains(kind)) lines.add(kind);
      }
    } on MissingPluginException {
      lines.add('not available');
    } on PlatformException {
      lines.add('not available');
    }
    if (stored.isEmpty) lines.add('No local Flutter errors.');
    return lines.join('\n');
  }

  Future<void> clear() async {
    await _pending;
    await _storage.delete(key: _key);
  }
}
