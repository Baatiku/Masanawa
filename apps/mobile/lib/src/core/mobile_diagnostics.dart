import 'dart:async';
import 'dart:convert';
import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Capture is local; sharing or sending requires an explicit user action.
class MasanawaDiagnostics {
  MasanawaDiagnostics._();
  static final instance = MasanawaDiagnostics._();
  static const _storage = FlutterSecureStorage();
  static const _key = 'masanawa.diagnostics.v1';
  static const _native = MethodChannel('masanawa/diagnostics');
  Future<void> _pending = Future<void>.value();
  bool _installed = false;

  /// Release metadata is bounded and never accepts free-form text or URLs.
  static String safeReleaseValue(String value) =>
      RegExp(r'^[0-9][0-9A-Za-z.+_-]{0,47}$').hasMatch(value)
          ? value : 'unknown';

  static String safeSourceCommit(String value) =>
      RegExp(r'^[0-9a-fA-F]{40}$').hasMatch(value)
          ? value.toLowerCase() : 'unknown';

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
      'Source commit: ${safeSourceCommit(const String.fromEnvironment('MASANAWA_SOURCE_SHA'))}',
    ];
    try {
      // Read the installed binary identity; pubspec alone misses build overrides.
      final info = await PackageInfo.fromPlatform().timeout(const Duration(seconds: 2));
      lines.add('App version: ${safeReleaseValue(info.version)}');
      lines.add('App build: ${safeReleaseValue(info.buildNumber)}');
    } catch (_) {
      lines.add('App version: unknown');
      lines.add('App build: unknown');
    }
    lines.add('Flutter exceptions:');

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

  /// Strict projection used for the opt-in Gateway support collector.
  static Map<String, dynamic> supportPayload(String report, String reportId) {
    const types = {'StateError','ApiException','FormatException','AssertionError',
      'TypeError','FlutterError','RangeError','ArgumentError','SocketException',
      'TimeoutException','PlatformException','OtherError'};
    const exitTypes = {'anr','java_crash','native_crash','low_memory'};
    final lines = report.split('\n');
    String metadata(String prefix) {
      for (final line in lines) {
        if (line.startsWith(prefix)) return safeReleaseValue(line.substring(prefix.length));
      }
      return 'unknown';
    }
    final events = <Map<String, String>>[];
    final exits = <String>[];
    var source = 'unknown';
    for (final line in lines) {
      if (line.startsWith('Source commit: ')) source = safeSourceCommit(line.substring(15));
      if (exitTypes.contains(line) && exits.length < 10) exits.add(line);
      final match = RegExp(r'^(\d{4}-\d{2}-\d{2}) ([A-Za-z_][A-Za-z0-9_]{0,47}) (unknown|src/[a-zA-Z0-9_/-]+\.dart:[0-9]{1,6})$').firstMatch(line);
      if (match == null || events.length >= 20) continue;
      final day = DateTime.tryParse(match[1]!);
      if (day == null || day.toIso8601String().substring(0, 10) != match[1]) continue;
      events.add({'day':match[1]!, 'type':types.contains(match[2]) ? match[2]! : 'OtherError', 'frame':match[3]!});
    }
    return {'reportId':reportId,'consent':true,'version':metadata('App version: '),
      'build':metadata('App build: '),'source':source,'events':events,'exits':exits};
  }

  Future<void> clear() async {
    await _pending;
    await _storage.delete(key: _key);
  }
}
