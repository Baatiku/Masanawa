import 'dart:convert';
import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'room_community_api.dart';

abstract interface class RoomContentRequestStore {
  Future<String?> read();
  Future<void> write(String value);
  Future<void> clear(String expected);
}

class SecureRoomContentRequestStore implements RoomContentRequestStore {
  SecureRoomContentRequestStore(this.api, this.roomId);
  final RoomCommunityApi api;
  final String roomId;
  final storage = const FlutterSecureStorage();
  String? memory;
  String? get key {
    final bound = api;
    if (bound is! AccountBoundRoomCommunityApi) return null;
    bound.assertActive();
    return 'room-content-change-v1:${Uri.encodeComponent(bound.ownerAccount)}:${Uri.encodeComponent(roomId)}';
  }

  static final queues = <String, Future<void>>{};
  Future<T> serial<T>(String? scope, Future<T> Function() work) async {
    if (scope == null) return work();
    final previous = queues[scope] ?? Future<void>.value();
    final done = Completer<void>();
    queues[scope] = done.future;
    await previous;
    try {
      key;
      return await work();
    } finally {
      done.complete();
      if (identical(queues[scope], done.future)) queues.remove(scope);
    }
  }

  @override
  Future<String?> read() async {
    final scope = key;
    return serial(scope, () async {
      final value = scope == null ? memory : await storage.read(key: scope);
      key;
      return value;
    });
  }

  @override
  Future<void> write(String value) async {
    final scope = key;
    await serial(scope, () async {
      final old = scope == null ? memory : await storage.read(key: scope);
      key;
      if (old != null && old != value)
        throw StateError('content_change_pending');
      if (scope == null) {
        memory = value;
      } else {
        await storage.write(key: scope, value: value);
      }
      key;
    });
  }

  @override
  Future<void> clear(String expected) async {
    final scope = key;
    await serial(scope, () async {
      final old = scope == null ? memory : await storage.read(key: scope);
      key;
      if (old != null && old != expected)
        throw StateError('content_change_pending');
      if (scope == null) {
        memory = null;
      } else {
        await storage.delete(key: scope);
      }
      key;
    });
  }
}

/// Frozen original intent: retries cannot substitute a changed body/version.
class PendingRoomContentChange {
  PendingRoomContentChange(
    this.kind,
    this.targetId,
    this.action,
    Map<String, dynamic> values, {
    this.preview = '',
  }) : payload = Map.unmodifiable(values) {
    final request = payload['requestId'],
        revision = payload['expectedRevision'];
    if (preview.length > 240 ||
        !const ['post', 'reply'].contains(kind) ||
        !const ['edit', 'delete'].contains(action) ||
        !RegExp(r'^[A-Za-z0-9_-]{1,160}$').hasMatch(targetId) ||
        request is! String ||
        !RegExp(r'^[A-Za-z0-9_-]{1,160}$').hasMatch(request) ||
        revision is! int ||
        revision < 0 ||
        revision > 2147483646 ||
        payload.length != (action == 'edit' ? 3 : 2) ||
        action == 'edit' &&
            (payload['body'] is! String ||
                (payload['body'] as String).length >
                    (kind == 'post' ? 6000 : 2000)) ||
        payload.keys.any(
          (v) => !const ['requestId', 'expectedRevision', 'body'].contains(v),
        ) ||
        action == 'delete' && payload.containsKey('body')) {
      throw const FormatException('Invalid saved content change');
    }
  }
  final String kind, targetId, action, preview;
  final Map<String, dynamic> payload;
  String get path =>
      '${kind == 'post' ? 'posts' : 'replies'}/${Uri.encodeComponent(targetId)}/content';
  String get method => action == 'edit' ? 'PATCH' : 'DELETE';
  Map<String, dynamic> get lookup => {
    'requestId': payload['requestId'],
    'targetKind': kind,
    'targetId': targetId,
  };
  String encode() => jsonEncode({
    'version': 1,
    'kind': kind,
    'targetId': targetId,
    'action': action,
    'preview': preview,
    'payload': payload,
  });
  static PendingRoomContentChange decode(String raw) {
    if (raw.length > 32000)
      throw const FormatException('Invalid saved content change');
    final value = jsonDecode(raw);
    if (value is! Map ||
        value.length != 6 ||
        value['version'] != 1 ||
        value['kind'] is! String ||
        value['targetId'] is! String ||
        value['action'] is! String ||
        value['preview'] is! String ||
        value['payload'] is! Map) {
      throw const FormatException('Invalid saved content change');
    }
    return PendingRoomContentChange(
      value['kind'] as String,
      value['targetId'] as String,
      value['action'] as String,
      Map<String, dynamic>.from(value['payload'] as Map),
      preview: value['preview'] as String,
    );
  }

  bool accepted(Map<String, dynamic> response) {
    if (response['changeVersion'] != 1 || response['found'] is! bool)
      throw const FormatException('Invalid content receipt');
    if (response['found'] == false) {
      if (response['receipt'] != null || response['currentItem'] != null)
        throw const FormatException('Invalid content receipt');
      return false;
    }
    final receipt = response['receipt'];
    if (receipt is! Map ||
        receipt['requestId'] != payload['requestId'] ||
        receipt['targetKind'] != kind ||
        receipt['targetId'] != targetId ||
        receipt['action'] != action ||
        receipt['previousRevision'] != payload['expectedRevision'] ||
        receipt['revision'] != (payload['expectedRevision'] as int) + 1 ||
        receipt['committedAt'] is! String ||
        DateTime.tryParse(receipt['committedAt'] as String) == null) {
      throw const FormatException('Invalid content receipt');
    }
    return true;
  }
}
