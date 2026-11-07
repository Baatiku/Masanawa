import 'dart:convert';
import 'dart:math';

import 'ngn_call_intent.dart';
import 'ngn_call_transport.dart';

/// Serial, account-bound original-operation recovery for the only active
/// Masana call rail. No client clock or lifecycle event ever posts NGN usage.
class NgnCallFlow {
  NgnCallFlow({required this.transport, required this.journal, required this.ownerId,this.recoverLegacy});
  final NgnCallTransport transport;
  final NgnCallIntentJournal journal;
  final String ownerId;
  final Future<void> Function()? recoverLegacy;

  String _newKey() {
    final secure = Random.secure();
    final bytes = List<int>.generate(24, (_) => secure.nextInt(256));
    return base64UrlEncode(bytes).replaceAll('=', '');
  }

  bool _terminal(NgnCallAdmission row) =>
      row.state == 'completed' || row.state == 'failed';

  /// Reconcile a previously dispatched confirm before reserving anything new.
  /// Unknown responses, unavailable reads and an unfinished settlement keep
  /// the encrypted original operation intact. No fresh confirm is replayed.
  Future<void> recover() async {
    final old = await journal.forOwner(ownerId);
    if (old == null) return;
    if (!old.submitted) {
      await journal.clear(ownerId, old.operationKey);
      return;
    }
    var row = await transport.readOriginal(old.operationKey);
    if (row.characterId != old.characterId) {
      throw StateError('Original call belongs to a different Masana.');
    }
    if (row.active) {
      row = await transport.finish(row.id);
    }
    if (!_terminal(row)) {
      throw StateError('Previous call is settling. Check it before another call.');
    }
    await journal.clear(ownerId, old.operationKey);
  }

  /// Review never reserves. Persist a recoverable identifier first so that
  /// pending/unknown admissions can be reconciled by original operation.
  Future<NgnCallReview> review(String characterId) async {
    await recoverLegacy?.call();
    await recover();
    final key = _newKey();
    await journal.prepare(ownerId, characterId, key);
    try {
      return await transport.review(characterId, key);
    } catch (_) {
      // Only review was attempted; no balance-moving confirm was dispatched.
      await journal.clear(ownerId, key);
      rethrow;
    }
  }

  Future<void> decline(NgnCallReview review) =>
      journal.clear(ownerId, review.operationKey);

  Future<NgnCallAdmission> confirm(NgnCallReview review) async {
    if (!DateTime.now().isBefore(review.expiresAt)) {
      await journal.clear(ownerId, review.operationKey);
      throw StateError('Call review expired. Please request a new review.');
    }
    // The durable submitted bit must precede the first balance-moving POST.
    await journal.markSubmitted(ownerId, review.operationKey);
    // Never retry an uncertain confirm here or submit a new operation key.
    return transport.confirm(review);
  }

  /// Server-observed connected seconds are the only settlement authority.
  /// Keep the original key until a definitive terminal admission is returned.
  Future<NgnCallAdmission> finish(NgnCallAdmission admission) async {
    final row = await transport.finish(admission.id);
    if (row.id != admission.id || row.characterId != admission.characterId) {
      throw StateError('Call receipt changed its original admission.');
    }
    if (_terminal(row)) {
      final old = await journal.forOwner(ownerId);
      if (old != null && old.submitted &&
          old.characterId == admission.characterId) {
        // A previous call to the SAME Masana may still have an uncertain
        // financial outcome. Never clear its durable original key just
        // because a different admission returned a terminal receipt.
        final original = await transport.readOriginal(old.operationKey);
        if (original.id != admission.id ||
            original.characterId != admission.characterId) {
          throw StateError('Call receipt does not match the original admission.');
        }
        if (!_terminal(original)) {
          throw StateError('Original call settlement is still pending.');
        }
        await journal.clear(ownerId, old.operationKey);
      }
    }
    return row;
  }
}
