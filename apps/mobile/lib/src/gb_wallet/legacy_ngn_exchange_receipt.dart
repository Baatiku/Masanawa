import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NgnExchangeReview {
  const NgnExchangeReview({
    required this.sizeGb,
    required this.amountMb,
    required this.amountKobo,
    required this.rateVersion,
    required this.operationId,
    required this.token,
    required this.expiresAt,
    required this.canAfford,
  });
  final int sizeGb, amountMb, amountKobo;
  final String rateVersion, operationId, token;
  final DateTime expiresAt;
  final bool canAfford;
  factory NgnExchangeReview.fromJson(
    Object? data, {
    int? expectedGb,
    String? expectedVersion,
    bool requireFresh = true,
  }) {
    if (data is! Map<String, dynamic>)
      throw const FormatException('Invalid exchange review');
    final gb = data['sizeGb'], mb = data['amountMb'], kobo = data['amountKobo'];
    final version = data['rateVersion'],
        id = data['operationId'],
        token = data['reviewToken'];
    final time = data['expiresAt'];
    final expiry = time is String ? DateTime.tryParse(time) : null;
    if (gb is! int ||
        gb < 1 ||
        gb > 2000 ||
        mb != gb * 1000 ||
        kobo is! int ||
        kobo <= 0 ||
        version is! String ||
        version.isEmpty ||
        (expectedGb != null && gb != expectedGb) ||
        (expectedVersion != null && version != expectedVersion) ||
        id is! String ||
        !RegExp(r'^ngnx_[a-f0-9]{48}$').hasMatch(id) ||
        token is! String ||
        token.length < 40 ||
        token.length > 4096 ||
        expiry == null ||
        !expiry.isUtc ||
        data['canAfford'] is! bool ||
        (requireFresh &&
            (!expiry.isAfter(DateTime.now().toUtc()) ||
                expiry.isAfter(
                  DateTime.now().toUtc().add(const Duration(minutes: 6)),
                )))) {
      throw const FormatException('Inconsistent exchange review');
    }
    return NgnExchangeReview(
      sizeGb: gb,
      amountMb: mb as int,
      amountKobo: kobo,
      rateVersion: version,
      operationId: id,
      token: token,
      expiresAt: expiry,
      canAfford: data['canAfford'] as bool,
    );
  }
  Map<String, dynamic> toJson() => {
    'sizeGb': sizeGb,
    'amountMb': amountMb,
    'amountKobo': amountKobo,
    'rateVersion': rateVersion,
    'operationId': operationId,
    'reviewToken': token,
    'expiresAt': expiresAt.toIso8601String(),
    'canAfford': canAfford,
  };
  void verifyReceipt(Object? data) {
    if (data is! Map<String, dynamic> ||
        data['receipt'] is! Map<String, dynamic>) {
      throw const FormatException('Invalid exchange receipt');
    }
    final r = data['receipt'] as Map<String, dynamic>;
    if (r['kind'] != 'exchange' ||
        r['operationId'] != operationId ||
        r['amountMb'] != amountMb ||
        r['amountKobo'] != amountKobo ||
        r['rateVersion'] != rateVersion ||
        r['createdAt'] is! String ||
        DateTime.tryParse(r['createdAt'] as String) == null) {
      throw const FormatException('Receipt mismatch');
    }
  }
}

/// Persist BEFORE dispatch; the signed token is private, encrypted at rest.
/// A new login can read its own original receipt, never another user's draft.
class NgnPendingStore {
  const NgnPendingStore();
  static const _storage = FlutterSecureStorage();
  String _key(String accountId) =>
      'ngn-exchange-v1-${sha256.convert(utf8.encode(accountId))}';
  Future<NgnExchangeReview?> read(String accountId) async {
    final value = await _storage.read(key: _key(accountId));
    return value == null
        ? null
        : NgnExchangeReview.fromJson(jsonDecode(value), requireFresh: false);
  }

  Future<void> write(String accountId, NgnExchangeReview review) =>
      _storage.write(key: _key(accountId), value: jsonEncode(review.toJson()));
  Future<void> clear(String accountId) => _storage.delete(key: _key(accountId));
}

final ngnPendingStoreProvider = Provider<NgnPendingStore>(
  (ref) => const NgnPendingStore(),
);
