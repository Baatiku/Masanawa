import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'models.dart';
import 'transport.dart';

abstract interface class HumanReportRequestStore {
  Future<String?> read();
  Future<void> write(String value);
  Future<void> clear(String expected);
}

/// Device encryption is scoped to one account and conversation. A shared
/// in-process queue prevents competing routes overwriting different intents.
class EncryptedHumanReportRequestStore implements HumanReportRequestStore {
  EncryptedHumanReportRequestStore(
    String owner,
    String conversationId, {
    FlutterSecureStorage? storage,
  }) : key = 'human-report.v1:${Uri.encodeComponent(owner)}:${Uri.encodeComponent(conversationId)}',
       storage = storage ?? const FlutterSecureStorage();

  final String key;
  final FlutterSecureStorage storage;
  static final Map<String, Future<void>> _queues = {};

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
  Future<void> write(String value) => _serial(() async {
    final existing = await storage.read(key: key);
    if (existing != null && existing != value) {
      throw StateError('Resolve pending report first');
    }
    await storage.write(key: key, value: value);
  });

  @override
  Future<void> clear(String expected) => _serial(() async {
    final existing = await storage.read(key: key);
    if (existing != null && existing != expected) {
      throw StateError('Saved report changed');
    }
    if (existing != null) await storage.delete(key: key);
  });
}

/// One immutable user-authorized report intent, isolated from message drafts.
class PendingHumanReport {
  const PendingHumanReport({
    required this.conversationId,
    required this.messageId,
    required this.reason,
    required this.requestId,
  });
  final String conversationId, messageId, reason, requestId;

  HumanJson toJson() => {
    'conversationId': conversationId,
    'messageId': messageId,
    'reason': reason,
    'requestId': requestId,
  };

  factory PendingHumanReport.fromJson(HumanJson data) {
    String field(String key, int max) {
      final value = data[key];
      if (value is! String || value.trim().isEmpty ||
          value.length > max || value != value.trim()) {
        throw const FormatException('Saved report is unavailable');
      }
      return value;
    }
    return PendingHumanReport(
      conversationId: field('conversationId', 200),
      messageId: field('messageId', 200),
      reason: field('reason', 2000),
      requestId: field('requestId', 200),
    );
  }

  bool sameAs(PendingHumanReport other) =>
      conversationId == other.conversationId &&
      messageId == other.messageId &&
      reason == other.reason &&
      requestId == other.requestId;
}

enum HumanReportRecovery { noSavedRequest, submitted, unconfirmed }

/// Report submission does not imply moderator review. Never auto-resubmit on
/// boot, network reconnect or account switch. Only an explicit user retry
/// may POST the frozen original request, after actor-bound GET readback.
class HumanReportRequestJournal {
  HumanReportRequestJournal(
    this.owner,
    this.conversationId, {
    HumanReportRequestStore? store,
  }) : store = store ?? EncryptedHumanReportRequestStore(owner, conversationId);

  final String owner, conversationId;
  final HumanReportRequestStore store;

  Future<PendingHumanReport?> read() async {
    final raw = await store.read();
    if (raw == null) return null;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) throw const FormatException('Saved report is unavailable');
      final item = PendingHumanReport.fromJson(Map<String, dynamic>.from(decoded));
      if (item.conversationId != conversationId) {
        throw const FormatException('Saved report belongs to another conversation');
      }
      return item;
    } on FormatException {
      rethrow;
    } catch (_) {
      throw const FormatException('Saved report is unavailable');
    }
  }

  Future<void> stage(PendingHumanReport incoming) async {
    if (incoming.conversationId != conversationId) {
      throw StateError('Different conversation');
    }
    final existing = await read();
    if (existing != null && !existing.sameAs(incoming)) {
      throw StateError('Resolve the saved report before making another');
    }
    await store.write(jsonEncode(incoming.toJson()));
  }

  Future<void> discard(String expectedRequestId) async {
    final current = await read();
    if (current != null && current.requestId != expectedRequestId) {
      throw StateError('Saved report changed');
    }
    if (current != null) await store.clear(jsonEncode(current.toJson()));
  }

  /// A 404 on the actor-bound original receipt means there is no accepted
  /// result *yet*. An auth failure/network failure is NOT proof of absence.
  Future<HumanReportRecovery> recover(HumanCommunicationTransport transport, {
    bool retryOriginal = false,
  }) async {
    final saved = await read();
    if (saved == null) return HumanReportRecovery.noSavedRequest;
    if (!transport.active) throw StateError('Account changed');

    Future<bool> accepted() async {
      try {
        final receipt = await transport.request(
          'GET',
          '/reports/${Uri.encodeComponent(saved.requestId)}',
        );
        if (receipt['ok'] != true) throw const FormatException('Invalid report receipt');
        final reportId = receipt['reportId'];
        if (reportId != null && (reportId is! String || reportId.isEmpty)) {
          throw const FormatException('Invalid report receipt');
        }
        await discard(saved.requestId);
        return true;
      } on DioException catch (error) {
        if (error.response?.statusCode == 404) return false;
        rethrow;
      }
    }

    if (await accepted()) return HumanReportRecovery.submitted;
    if (!retryOriginal) return HumanReportRecovery.unconfirmed;

    try {
      await transport.request(
        'POST',
        '/conversations/${Uri.encodeComponent(saved.conversationId)}/messages/${Uri.encodeComponent(saved.messageId)}/report',
        data: {'requestId': saved.requestId, 'reason': saved.reason},
      );
    } on DioException catch (error) {
      // A lost response is ambiguous. Only retry-safe transport failures may
      // continue to one status read. Authorization denials are never hidden.
      if (error.response?.statusCode != null &&
          error.response!.statusCode! < 500) rethrow;
    }

    if (await accepted()) return HumanReportRecovery.submitted;
    return HumanReportRecovery.unconfirmed;
  }
}
