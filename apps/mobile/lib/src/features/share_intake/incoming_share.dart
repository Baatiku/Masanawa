import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Android grants are kept only by MainActivity; Flutter receives bounded
/// metadata and reads an individual item's bytes after explicit confirmation.
class IncomingShareItem {
  const IncomingShareItem(this.name, this.mime, this.size);
  final String name;
  final String mime;
  final int? size;

  String? get kind => switch (mime) {
    'image/jpeg' || 'image/png' || 'image/webp' => 'image',
    'video/mp4' => 'video',
    'application/pdf' => 'doc',
    _ => null,
  };
}

class IncomingShareDraft {
  const IncomingShareDraft({
    required this.token,
    required this.text,
    required this.items,
    this.warning,
  });
  final String token;
  final String text;
  final List<IncomingShareItem> items;
  final String? warning;

  static IncomingShareDraft? decode(Object? value) {
    if (value is! Map) return null;
    final token = value['token'];
    final text = value['text'];
    final rawItems = value['items'];
    if (token is! String || token.isEmpty || token.length > 100 ||
        text is! String || rawItems is! List) return null;
    final items = <IncomingShareItem>[];
    for (final entry in rawItems) {
      if (entry is! Map || entry['name'] is! String || entry['mime'] is! String) {
        return null;
      }
      final name = entry['name'] as String;
      final mime = entry['mime'] as String;
      final rawSize = entry['size'];
      if (rawSize != null && rawSize is! num) return null;
      items.add(IncomingShareItem(name, mime, (rawSize as num?)?.toInt()));
    }
    final platformWarning = value['warning'];
    final unsafe = text.length > 10000 || items.length > 4 ||
        (text.trim().isEmpty && items.isEmpty) ||
        items.any((i) => i.kind == null ||
            i.name.isEmpty || i.name.length > 180 ||
            (i.size != null && (i.size! <= 0 || i.size! > 8 * 1024 * 1024)));
    return IncomingShareDraft(
      token: token,
      text: text,
      items: List.unmodifiable(items),
      warning: unsafe
          ? 'Unsupported shared content, too many items or file over 8 MB'
          : platformWarning is String ? platformWarning : null,
    );
  }
}

class IncomingShareService extends ChangeNotifier {
  IncomingShareService._();
  static final instance = IncomingShareService._();
  static const _channel = MethodChannel('masanawa/incoming_share');
  IncomingShareDraft? _pending;
  IncomingShareDraft? get pending => _pending;
  bool _initialized = false;
  int _generation = 0;
  String? _owner;
  int? _epoch;

  bool authorized(String owner, int epoch, String token) =>
      _owner == owner && _epoch == epoch && _pending?.token == token;

  /// A pending share delivered while logged out survives the login prompt;
  /// any subsequent account/authorization epoch change discards it.
  void updateAuthorization(String? owner, int epoch) {
    if (_owner != null && (_owner != owner || _epoch != epoch)) {
      unawaited(clear());
    }
    _owner = owner;
    _epoch = epoch;
    notifyListeners();
  }

  Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'offer') await refresh();
    });
    await refresh();
  }

  Future<void> refresh() async {
    final generation = _generation;
    try {
      final raw = await _channel.invokeMethod<Object?>('peek');
      if (generation != _generation) return;
      final next = IncomingShareDraft.decode(raw);
      if (next?.token != _pending?.token) {
        _pending = next;
        notifyListeners();
      }
    } on MissingPluginException {
      // Android-only feature; iOS / Flutter tests have no native channel.
    } on PlatformException {
      // Shared grant may already have expired or the activity may be closing.
    }
  }

  Future<String> read(String token, int index) async {
    if (_pending?.token != token || index < 0 ||
        index >= _pending!.items.length || _pending!.warning != null) {
      throw StateError('Shared attachment is no longer available');
    }
    final data = await _channel.invokeMethod<String>('read', {
      'token': token, 'index': index,
    });
    if (_pending?.token != token || data == null) {
      throw StateError('Shared attachment expired. Share it again.');
    }
    return data;
  }

  Future<void> clear() async {
    _generation++;
    final token = _pending?.token;
    _pending = null;
    notifyListeners();
    try {
      await _channel.invokeMethod<void>('clear', {'token': token});
    } on MissingPluginException {
      // Safe on platforms without an Android share target.
    } on PlatformException {
      // A stale Android grant cannot send without a matching Dart token.
    }
  }
}
