import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class MbCallIntentStore {
  Future<String?> read();
  Future<void> write(String? value);
}

class SecureMbCallIntentStore implements MbCallIntentStore {
  const SecureMbCallIntentStore();
  static const _storage = FlutterSecureStorage();
  static const _key = 'mb_call_original_operation_v1';
  @override
  Future<String?> read() => _storage.read(key: _key);
  @override
  Future<void> write(String? value) => value == null
      ? _storage.delete(key: _key)
      : _storage.write(key: _key, value: value);
}

class MbCallIntent {
  const MbCallIntent({required this.ownerId, required this.characterId,
    required this.operationKey, required this.submitted});
  final String ownerId, characterId, operationKey;
  /// True before the first confirm HTTP dispatch; response loss remains unknown.
  final bool submitted;
}

/// One encrypted original call operation is enough: a new admission is refused
/// until the prior one has a terminal server receipt or explicit recovery.
class MbCallIntentJournal {
  MbCallIntentJournal(this.store);
  final MbCallIntentStore store;
  Future<void> _serial = Future<void>.value();
  Future<T> _run<T>(Future<T> Function() action) {
    final task = _serial.then((_) => action());
    _serial = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }
  bool _valid(String value) => RegExp(r'^[A-Za-z0-9_:.-]{1,160}$').hasMatch(value);
  Future<MbCallIntent?> _read() async {
    final raw = await store.read();
    if (raw == null) return null;
    final value = jsonDecode(raw);
    if (value is! Map || value['ownerId'] is! String ||
        value['characterId'] is! String || value['operationKey'] is! String ||
        value['submitted'] is! bool || !_valid(value['ownerId'] as String) ||
        !_valid(value['characterId'] as String) ||
        !RegExp(r'^[A-Za-z0-9_-]{8,128}$').hasMatch(value['operationKey'] as String)) {
      throw const FormatException('Invalid saved call recovery operation');
    }
    return MbCallIntent(ownerId: value['ownerId'] as String,
      characterId: value['characterId'] as String,
      operationKey: value['operationKey'] as String,
      submitted: value['submitted'] as bool);
  }
  Future<void> _write(MbCallIntent value) => store.write(jsonEncode({
    'ownerId':value.ownerId,'characterId':value.characterId,
    'operationKey':value.operationKey,'submitted':value.submitted,
  }));
  Future<MbCallIntent?> forOwner(String ownerId) => _run(() async {
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
      await _write(MbCallIntent(ownerId: ownerId,characterId: characterId,
        operationKey: operationKey,submitted: false));
    });
  Future<void> markSubmitted(String ownerId, String operationKey) => _run(() async {
    final prior = await _read();
    if (prior == null || prior.ownerId != ownerId ||
        prior.operationKey != operationKey) {
      throw StateError('Original call operation changed.');
    }
    if (!prior.submitted) await _write(MbCallIntent(ownerId: prior.ownerId,
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
