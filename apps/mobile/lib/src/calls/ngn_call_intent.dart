import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class NgnCallIntentStore {
  Future<String?> read();
  Future<void> write(String? value);
}

/// Every signed-in account gets its own encrypted recovery slot. A pending
/// financial operation from account A must not block an unrelated account B
/// or be cleared when B signs in. Legacy single-slot data is migrated only
/// for the matching authenticated owner and only after durable new storage.
class SecureNgnCallIntentStore implements NgnCallIntentStore {
  const SecureNgnCallIntentStore({this.ownerId});
  final String? ownerId;
  static const _storage = FlutterSecureStorage();
  static const _legacyKey = 'ngn_call_original_operation_v1';

  String get _key {
    final owner = ownerId;
    if (owner == null) return _legacyKey;
    if (owner.isEmpty) throw StateError('Cannot store an unowned NGN call.');
    return 'ngn_call_original_operation_v2_${sha256.convert(utf8.encode(owner))}';
  }

  @override
  Future<String?> read() async {
    final current = await _storage.read(key: _key);
    if (current != null || ownerId == null) return current;
    final legacy = await _storage.read(key: _legacyKey);
    if (legacy == null) return null;
    try {
      final value = jsonDecode(legacy);
      if (value is! Map || value['ownerId'] != ownerId) return null;
    } catch (_) {
      return null;
    }
    await _storage.write(key: _key, value: legacy);
    await _storage.delete(key: _legacyKey);
    return legacy;
  }

  @override
  Future<void> write(String? value) => value == null
      ? _storage.delete(key: _key)
      : _storage.write(key: _key, value: value);
}

class NgnCallIntent {
  const NgnCallIntent({required this.ownerId, required this.characterId,
    required this.operationKey, required this.submitted});
  final String ownerId, characterId, operationKey;
  /// True before the first confirm HTTP dispatch; response loss remains unknown.
  final bool submitted;
}

/// One encrypted original call operation is enough: a new admission is refused
/// until the prior one has a terminal server receipt or explicit recovery.
class NgnCallIntentJournal {
  NgnCallIntentJournal(this.store);
  final NgnCallIntentStore store;
  Future<void> _serial = Future<void>.value();
  Future<T> _run<T>(Future<T> Function() action) {
    final task = _serial.then((_) => action());
    _serial = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }
  bool _valid(String value) => RegExp(r'^[A-Za-z0-9_:.-]{1,160}$').hasMatch(value);
  Future<NgnCallIntent?> _read() async {
    final raw = await store.read();
    if (raw == null) return null;
    final value = jsonDecode(raw);
    if (value is! Map || value['currency'] != 'NGN' || value['ownerId'] is! String ||
        value['characterId'] is! String || value['operationKey'] is! String ||
        value['submitted'] is! bool || !_valid(value['ownerId'] as String) ||
        !_valid(value['characterId'] as String) ||
        !RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(value['operationKey'] as String)) {
      throw const FormatException('Invalid saved call recovery operation');
    }
    return NgnCallIntent(ownerId: value['ownerId'] as String,
      characterId: value['characterId'] as String,
      operationKey: value['operationKey'] as String,
      submitted: value['submitted'] as bool);
  }
  Future<void> _write(NgnCallIntent value) => store.write(jsonEncode({
    'currency':'NGN','ownerId':value.ownerId,'characterId':value.characterId,
    'operationKey':value.operationKey,'submitted':value.submitted,
  }));
  Future<NgnCallIntent?> forOwner(String ownerId) => _run(() async {
    final pending = await _read();
    return pending?.ownerId == ownerId ? pending : null;
  });
  Future<void> prepare(String ownerId, String characterId, String operationKey) =>
    _run(() async {
      if (!_valid(ownerId) || !_valid(characterId) ||
          !RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(operationKey)) {
        throw const FormatException('Invalid call intent');
      }
      final prior = await _read();
      if (prior != null) {
        if (prior.ownerId == ownerId && prior.characterId == characterId &&
            prior.operationKey == operationKey) return;
        throw StateError('Resolve the original call before starting another.');
      }
      await _write(NgnCallIntent(ownerId: ownerId,characterId: characterId,
        operationKey: operationKey,submitted: false));
    });
  Future<void> markSubmitted(String ownerId, String operationKey) => _run(() async {
    final prior = await _read();
    if (prior == null || prior.ownerId != ownerId ||
        prior.operationKey != operationKey) {
      throw StateError('Original call operation changed.');
    }
    if (!prior.submitted) await _write(NgnCallIntent(ownerId: prior.ownerId,
      characterId: prior.characterId,operationKey: prior.operationKey,
      submitted: true));
  });
  Future<void> clear(String ownerId, String operationKey) => _run(() async {
    final prior = await _read();
    if (prior == null || prior.ownerId != ownerId ||
        prior.operationKey != operationKey) {
      throw StateError('Original call operation changed.');
    }
    await store.write(null);
  });
}
