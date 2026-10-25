import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

String formatNgn(int kobo) =>
    '₦${groupedMb(kobo ~/ 100)}'
    '${kobo % 100 == 0 ? '' : '.${(kobo % 100).toString().padLeft(2, '0')}'}';

class NgnWalletBalance {
  const NgnWalletBalance(
    this.balanceKobo,
    this.debtKobo,
    this.frozen,
    this.exchangeEnabled,
  );
  final int balanceKobo;
  final int debtKobo;
  final bool frozen;
  final bool exchangeEnabled;
  factory NgnWalletBalance.fromJson(Object? data) {
    if (data is! Map<String, dynamic> ||
        data['balance'] is! Map<String, dynamic>) {
      throw const FormatException('Invalid NGN wallet');
    }
    final r = data['balance'] as Map<String, dynamic>;
    if (r['currency'] != 'NGN' ||
        r['unit'] != 'kobo' ||
        r['balanceKobo'] is! int ||
        r['debtKobo'] is! int ||
        (r['balanceKobo'] as int) < 0 ||
        (r['debtKobo'] as int) < 0 ||
        ((r['balanceKobo'] as int) > 0 && (r['debtKobo'] as int) > 0) ||
        r['frozen'] is! bool ||
        data['exchangeEnabled'] is! bool) {
      throw const FormatException('Invalid NGN balance');
    }
    return NgnWalletBalance(
      r['balanceKobo'] as int,
      r['debtKobo'] as int,
      r['frozen'] as bool,
      data['exchangeEnabled'] as bool,
    );
  }
}

class NgnBankAccount {
  const NgnBankAccount(
    this.state, {
    this.number,
    this.name,
    this.bank,
    this.fundingEnabled = false,
    this.assignmentEnabled = false,
    this.applicantComplete = false,
  });
  final String state;
  final bool fundingEnabled;
  final bool assignmentEnabled;
  final bool applicantComplete;
  final String? number, name, bank;
  factory NgnBankAccount.fromJson(Object? data) {
    if (data is! Map<String, dynamic> ||
        data['account'] is! Map<String, dynamic>) {
      throw const FormatException('Invalid bank account');
    }
    final r = data['account'] as Map<String, dynamic>;
    final state = r['state'];
    if (!['unassigned', 'assigned', 'pending', 'suspended'].contains(state)) {
      throw const FormatException('Unknown bank state');
    }
    if (state != 'assigned')
      return NgnBankAccount(
        state as String,
        fundingEnabled: data['fundingEnabled'] == true,
        assignmentEnabled: data['assignmentEnabled'] == true,
        applicantComplete: data['applicantComplete'] == true,
      );
    if (r['bankId'] != '9PSB' ||
        r['accountNumber'] is! String ||
        !RegExp(r'^\d{10}$').hasMatch(r['accountNumber'] as String) ||
        r['accountName'] is! String ||
        (r['accountName'] as String).isEmpty ||
        r['bankName'] is! String ||
        (r['bankName'] as String).isEmpty) {
      throw const FormatException('Unverified bank account');
    }
    return NgnBankAccount(
      'assigned',
      fundingEnabled: data['fundingEnabled'] == true,
      assignmentEnabled: data['assignmentEnabled'] == true,
      applicantComplete: data['applicantComplete'] == true,
      number: r['accountNumber'] as String,
      name: r['accountName'] as String,
      bank: r['bankName'] as String,
    );
  }
}

bool isNgnOwner(Ref ref, GbWalletOwner owner) {
  final s = ref.read(sessionProvider);
  return s is SessionSignedIn &&
      s.user.id == owner.accountId &&
      ref.read(sessionProvider.notifier).authorizationEpoch ==
          owner.authorizationEpoch;
}

final ngnWalletBalanceProvider = FutureProvider.autoDispose
    .family<NgnWalletBalance, GbWalletOwner>((ref, owner) async {
      if (!isNgnOwner(ref, owner)) throw StateError('account_changed');
      final cancel = CancelToken();
      ref.onDispose(cancel.cancel);
      final r = await ref
          .watch(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/gb/wallet/ngn/summary',
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!isNgnOwner(ref, owner)) throw StateError('account_changed');
      return NgnWalletBalance.fromJson(r.data);
    });
final ngnBankAccountProvider = FutureProvider.autoDispose
    .family<NgnBankAccount, GbWalletOwner>((ref, owner) async {
      if (!isNgnOwner(ref, owner)) throw StateError('account_changed');
      final cancel = CancelToken();
      ref.onDispose(cancel.cancel);
      final r = await ref
          .watch(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/gb/wallet/virtual-account',
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      if (!isNgnOwner(ref, owner)) throw StateError('account_changed');
      return NgnBankAccount.fromJson(r.data);
    });
