import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'models.dart';
import 'transport.dart';

abstract interface class HumanEditRequestStore {
  Future<String?> read();
  Future<void> stage(String serialized);
  Future<void> clear(String expected);
}

/// Never overwrite another unresolved edit request in the same conversation.
/// This is isolated from the normal unsent draft and from report requests.
class EncryptedHumanEditRequestStore implements HumanEditRequestStore {
  EncryptedHumanEditRequestStore(
    String owner,
    String conversationId, {
    FlutterSecureStorage? storage,
  }) : key = 'human-edit.v1:${Uri.encodeComponent(owner)}:${Uri.encodeComponent(conversationId)}',
       storage = storage ?? const FlutterSecureStorage();

  final String key;
  final FlutterSecureStorage storage;
  static final _queues = <String, Future<void>>{};

  Future<T> _serial<T>(Future<T> Function() work) async {
    final previous = _queues[key] ?? Future<void>.value();
    final done = Completer<void>();
    _queues[key] = done.future;
    await previous;
    try {
      return await work();
    } finally {
      done.complete();
      if (identical(_queues[key], done.future)) _queues.remove(key);
    }
  }

  @override
  Future<String?> read() => _serial(() => storage.read(key: key));

  @override
  Future<void> stage(String serialized) => _serial(() async {
    final saved = await storage.read(key: key);
    if (saved != null && saved != serialized) {
      throw StateError('Resolve your saved edit before creating another');
    }
    await storage.write(key: key, value: serialized);
  });

  @override
  Future<void> clear(String expected) => _serial(() async {
    final saved = await storage.read(key: key);
    if (saved != null && saved != expected) {
      throw StateError('Saved edit changed');
    }
    if (saved != null) await storage.delete(key: key);
  });
}

class PendingHumanEdit {
  const PendingHumanEdit({
    required this.conversationId,
    required this.messageId,
    required this.text,
    required this.requestId,
    required this.expectedVersion,
  });

  final String conversationId, messageId, text, requestId;
  final int expectedVersion;

  HumanJson toJson() => {
    'conversationId': conversationId,
    'messageId': messageId,
    'text': text,
    'requestId': requestId,
    'expectedVersion': expectedVersion,
  };

  factory PendingHumanEdit.fromJson(HumanJson data) {
    String field(String name, int max) {
      final value = data[name];
      if (value is! String || value.isEmpty || value.trim() != value ||
          value.length > max) {
        throw const FormatException('Saved message edit is unavailable');
      }
      return value;
    }
    final expected = data['expectedVersion'];
    if (expected is! int || expected < 0) {
      throw const FormatException('Saved edit revision is unavailable');
    }
    return PendingHumanEdit(
      conversationId: field('conversationId', 200),
      messageId: field('messageId', 200),
      text: field('text', 10000),
      requestId: field('requestId', 200),
      expectedVersion: expected,
    );
  }
}

enum HumanEditRecovery { noSavedRequest, confirmed, unconfirmed, changed }

/// Never invent a completed edit after an interrupted PATCH. GET the
/// actor-only persisted original first; a user-triggered retry sends the
/// identical encrypted request ID, body and expected revision.
class HumanEditRequestJournal {
  HumanEditRequestJournal(
    this.owner,
    this.conversationId, {
    HumanEditRequestStore? store,
  }) : store = store ?? EncryptedHumanEditRequestStore(owner, conversationId);

  final String owner, conversationId;
  final HumanEditRequestStore store;

  Future<PendingHumanEdit?> read() async {
    final raw = await store.read();
    if (raw == null) return null;
    try {
      final parsed = jsonDecode(raw);
      if (parsed is! Map) throw const FormatException('Saved edit unavailable');
      final pending = PendingHumanEdit.fromJson(Map<String, dynamic>.from(parsed));
      if (pending.conversationId != conversationId) {
        throw const FormatException('Saved edit belongs to another conversation');
      }
      return pending;
    } on FormatException {
      rethrow;
    } catch (_) {
      throw const FormatException('Saved edit is unreadable');
    }
  }

  Future<void> stage(PendingHumanEdit request) async {
    if (request.conversationId != conversationId) {
      throw StateError('Different conversation');
    }
    final validated = PendingHumanEdit.fromJson(request.toJson());
    final pending = await read();
    if (pending != null && jsonEncode(pending.toJson()) != jsonEncode(validated.toJson())) {
      throw StateError('Resolve the earlier edit before editing again');
    }
    await store.stage(jsonEncode(validated.toJson()));
  }

  Future<void> discard(String expectedRequestId) async {
    final pending = await read();
    if (pending == null) return;
    if (pending.requestId != expectedRequestId) throw StateError('Saved edit changed');
    await store.clear(jsonEncode(pending.toJson()));
  }

  Future<HumanEditRecovery> recover(
    HumanCommunicationTransport transport, {
    bool retryOriginal = false,
  }) async {
    final pending = await read();
    if (pending == null) return HumanEditRecovery.noSavedRequest;
    if (!transport.active) throw StateError('Session changed');
    final path = '/conversations/${Uri.encodeComponent(pending.conversationId)}/messages/${Uri.encodeComponent(pending.messageId)}';

    Future<HumanEditRecovery> inspect() async {
      final info = await transport.request('GET', '$path/info');
      if (!transport.active) throw StateError('Session changed');
      if (info['id'] != pending.messageId ||
          info['conversationId'] != pending.conversationId) {
        throw const FormatException('Invalid message edit receipt');
      }
      final revision = info['editVersion'];
      if (revision is! int || revision < 0) {
        throw const FormatException('Invalid message edit revision');
      }
      if (revision != pending.expectedVersion) {
        if (info['text'] == pending.text) {
          await discard(pending.requestId);
          return HumanEditRecovery.confirmed;
        }
        // Another authorized edit won the revision race. Never overwrite it
        // with a saved stale PATCH, even when the user chooses retry.
        return HumanEditRecovery.changed;
      }
      return HumanEditRecovery.unconfirmed;
    }

    final status = await inspect();
    if (status != HumanEditRecovery.unconfirmed || !retryOriginal) return status;

    try {
      await transport.request('PATCH', path, data: {
        'requestId': pending.requestId,
        'text': pending.text,
        'expectedVersion': pending.expectedVersion,
      });
    } on DioException catch (e) {
      if (e.response?.statusCode != null && e.response!.statusCode! < 500) rethrow;
    }
    return inspect();
  }
}
