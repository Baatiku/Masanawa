import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'room_community_api.dart';

abstract interface class RoomModerationRequestStore {
  Future<String?> read();
  Future<void> write(String? value);
}

/// Reasons are private drafts: encrypted, account/Room scoped, never telemetry.
class SecureRoomModerationRequestStore implements RoomModerationRequestStore {
  SecureRoomModerationRequestStore(this.api, this.roomId);
  final RoomCommunityApi api;
  final String roomId;
  final storage = const FlutterSecureStorage();
  String? memory;
  String? get key {
    final bound = api;
    if (bound is! AccountBoundRoomCommunityApi) return null;
    bound.assertActive();
    return 'room-moderation-v1:${Uri.encodeComponent(bound.ownerAccount)}:${Uri.encodeComponent(roomId)}';
  }

  @override
  Future<String?> read() async {
    final scope = key;
    final result = scope == null ? memory : await storage.read(key: scope);
    key;
    return result;
  }

  @override
  Future<void> write(String? value) async {
    final scope = key;
    if (scope == null) {
      memory = value;
    } else if (value == null) {
      await storage.delete(key: scope);
    } else {
      await storage.write(key: scope, value: value);
    }
    key;
  }
}

class PendingRoomModeration {
  PendingRoomModeration(this.path, Map<String, dynamic> values)
    : payload = Map.unmodifiable(values) {
    final parts = path.split('/');
    final isReport =
        parts.length == 3 &&
        const ['reports', 'reply-reports'].contains(parts[0]) &&
        parts[2] == 'review';
    final isAppeal =
        parts.length == 4 &&
        parts[0] == 'moderation' &&
        parts[1] == 'cases' &&
        parts[3] == 'appeal';
    final isDecision =
        parts.length == 4 &&
        parts[0] == 'moderation' &&
        parts[1] == 'appeals' &&
        parts[3] == 'review';
    if (!isReport && !isAppeal && !isDecision)
      throw const FormatException('Invalid moderation operation');
    final target = parts[isReport ? 1 : 2];
    final reason = payload[isAppeal ? 'reason' : 'publicReason'],
        request = payload['requestId'];
    if (!RegExp(r'^[A-Za-z0-9_-]{1,160}$').hasMatch(target) ||
        request is! String ||
        request.trim().isEmpty ||
        request.length > 160 ||
        reason is! String ||
        reason.trim().isEmpty ||
        reason.length > 2000 ||
        payload.length != (isAppeal ? 2 : 3))
      throw const FormatException('Invalid moderation request');
    if (!isAppeal &&
        !(isReport
                ? const ['dismissed', 'removed']
                : const ['upheld', 'restored'])
            .contains(payload['decision']))
      throw const FormatException('Invalid moderation decision');
  }
  final String path;
  final Map<String, dynamic> payload;
  bool get isReport => !path.startsWith('moderation/');
  bool get isAppeal => path.startsWith('moderation/cases/');
  Map<String, dynamic> get lookup => {
    'action': isReport
        ? 'report-review'
        : isAppeal
        ? 'appeal'
        : 'appeal-review',
    'targetId': path.split('/')[isReport ? 1 : 2],
    'requestId': payload['requestId'],
    if (isReport) 'targetKind': path.startsWith('reply-') ? 'reply' : 'post',
  };
  String encode() =>
      jsonEncode({'version': 1, 'path': path, 'payload': payload});
  static PendingRoomModeration decode(String raw) {
    if (raw.length > 24000)
      throw const FormatException('Invalid moderation journal');
    final value = jsonDecode(raw);
    if (value is! Map ||
        value['version'] != 1 ||
        value['path'] is! String ||
        value['payload'] is! Map)
      throw const FormatException('Invalid moderation journal');
    return PendingRoomModeration(
      value['path'] as String,
      Map<String, dynamic>.from(value['payload'] as Map),
    );
  }
}
