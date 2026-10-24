import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/request_id.dart';

const humanReplyActionId = 'masanawa.human.reply.draft.v1';
final _uuid = RegExp(
  r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
);
final _event = RegExp(r'^human-[0-9]{1,20}$');
final _ownerId = RegExp(r'^[A-Za-z0-9_-]{1,128}$');

/// Foreground *local* human-message notification identity. FCM remains only
/// a navigation hint, and no user-submitted text is ever in its payload.
class HumanNotificationReplyHint {
  const HumanNotificationReplyHint({
    required this.owner,
    required this.epoch,
    required this.conversationId,
    required this.eventId,
  });

  final String owner, conversationId, eventId;
  final int epoch;
  String get route => '/human/chat/$conversationId';
  String get deepLink => 'masanawa://human/chat/$conversationId';

  static HumanNotificationReplyHint? fromPush(
    Map<String, dynamic> data, String? owner, int epoch,
  ) {
    final conversation = data['conversationId'];
    final event = data['eventId'];
    final deepLink = data['deepLink'];
    if (data['type'] != 'human_message' || owner == null ||
        !_ownerId.hasMatch(owner) || epoch < 0 ||
        conversation is! String || !_uuid.hasMatch(conversation) ||
        event is! String || !_event.hasMatch(event) ||
        deepLink != 'masanawa://human/chat/$conversation') return null;
    return HumanNotificationReplyHint(
      owner: owner, epoch: epoch,
      conversationId: conversation, eventId: event,
    );
  }

  String toPayload() => jsonEncode({
    'kind': 'human-reply-action-v1',
    'owner': owner,
    'epoch': epoch,
    'conversationId': conversationId,
    'eventId': eventId,
  });

  static HumanNotificationReplyHint? fromPayload(String? payload) {
    if (payload == null || payload.length > 512) return null;
    try {
      final decoded = jsonDecode(payload);
      if (decoded is! Map || decoded['kind'] != 'human-reply-action-v1') {
        return null;
      }
      final owner = decoded['owner'];
      final epoch = decoded['epoch'];
      final conversation = decoded['conversationId'];
      final event = decoded['eventId'];
      if (owner is! String || !_ownerId.hasMatch(owner) ||
          epoch is! int || epoch < 0 ||
          conversation is! String || !_uuid.hasMatch(conversation) ||
          event is! String || !_event.hasMatch(event)) return null;
      return HumanNotificationReplyHint(
        owner: owner, epoch: epoch,
        conversationId: conversation, eventId: event,
      );
    } on FormatException {
      return null;
    }
  }
}

class PendingHumanNotificationReply {
  const PendingHumanNotificationReply({
    required this.hint,
    required this.text,
    required this.token,
  });
  final HumanNotificationReplyHint hint;
  final String text, token;
}

/// Holds typed notification input only until unlock/confirmation. Never sends
/// from a notification callback, headless engine or locked screen.
class HumanNotificationReplyInbox extends ChangeNotifier {
  HumanNotificationReplyInbox._();
  static final instance = HumanNotificationReplyInbox._();
  String? _owner;
  int? _epoch;
  PendingHumanNotificationReply? _pending;
  PendingHumanNotificationReply? get pending => _pending;
  final _seen = <String>{};

  void bindAuthorization(String? owner, int epoch) {
    if (_owner != owner || _epoch != epoch) {
      if (_owner != null) {
        _pending = null;
        _seen.clear();
      }
      _owner = owner;
      _epoch = epoch;
      if (_pending != null && !authorized(_pending!)) _pending = null;
      notifyListeners();
    }
  }

  bool authorized(PendingHumanNotificationReply pending) =>
      _owner == pending.hint.owner && _epoch == pending.hint.epoch &&
      _pending?.token == pending.token;

  bool offer({required String? payload, required String? input}) {
    final hint = HumanNotificationReplyHint.fromPayload(payload);
    if (hint == null || input == null || input.trim().isEmpty ||
        input.length > 500 ||
        (_owner != null && (_owner != hint.owner || _epoch != hint.epoch))) {
      return false;
    }
    final seenKey = '${hint.owner}:${hint.epoch}:${hint.eventId}';
    if (_seen.contains(seenKey)) return false;
    if (_pending?.hint.eventId == hint.eventId) return false;
    _seen.add(seenKey);
    _pending = PendingHumanNotificationReply(
      hint: hint, text: input, token: createRequestId(),
    );
    notifyListeners();
    return true;
  }

  void clear() {
    _pending = null;
    notifyListeners();
  }
}

abstract class HumanReplyReceiptIO {
  Future<String?> read(String key);
  Future<void> write(String key, String value);
}

class SecureHumanReplyReceiptIO implements HumanReplyReceiptIO {
  const SecureHumanReplyReceiptIO();
  static const _storage = FlutterSecureStorage();
  @override
  Future<String?> read(String key) => _storage.read(key: key);
  @override
  Future<void> write(String key, String value) =>
      _storage.write(key: key, value: value);
}

/// The reply is confirmed in the app before reserving its original request
/// identity. If a notification is tapped again after a crash, it cannot create
/// a fresh request ID or silently substitute edited text.
class HumanReplyReceiptStore {
  HumanReplyReceiptStore({HumanReplyReceiptIO? io})
      : io = io ?? const SecureHumanReplyReceiptIO();
  final HumanReplyReceiptIO io;

  Future<String> reserve({
    required HumanNotificationReplyHint hint,
    required String text,
  }) async {
    if (text.trim().isEmpty || text.length > 500) {
      throw StateError('Reply text is unavailable');
    }
    final key = 'human.quickreply.v1.${hint.owner}.${hint.eventId}';
    final digest = sha256.convert(utf8.encode(text)).toString();
    final existing = await io.read(key);
    if (existing != null) {
      try {
        final value = jsonDecode(existing);
        if (value is Map && value['conversationId'] == hint.conversationId &&
            value['digest'] == digest &&
            value['requestId'] is String &&
            (value['requestId'] as String).startsWith('request_')) {
          return value['requestId'] as String;
        }
      } on FormatException {
        // Corrupted encrypted records fail closed; never mint another ID.
      }
      throw StateError('An earlier reply to this notification needs recovery');
    }
    final requestId = createRequestId();
    final value = jsonEncode({
      'conversationId': hint.conversationId,
      'digest': digest,
      'requestId': requestId,
    });
    await io.write(key, value);
    if (await io.read(key) != value) {
      throw StateError('Could not confirm encrypted reply identity');
    }
    return requestId;
  }
}

/// The system keyguard, not a Flutter route or a cached session flag, decides
/// if the handset is unlocked when the user confirms a notification reply.
class HumanReplyDeviceUnlock {
  const HumanReplyDeviceUnlock();
  static const _channel = MethodChannel('masanawa/device_unlock');

  Future<bool> isUnlocked() async {
    try {
      return await _channel.invokeMethod<bool>('isUnlocked') == true;
    } on PlatformException {
      return false;
    } on MissingPluginException {
      return false;
    }
  }
}
