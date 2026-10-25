import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';

typedef GbWalletOwner = ({String accountId, int authorizationEpoch});

/// Server-originated balance. No Credits, fiat or MSNW are ever mapped to MB.
class GbWalletBalance {
  const GbWalletBalance({
    required this.totalMb,
    required this.availableMb,
    required this.purchasedAvailableMb,
    required this.welcomeAvailableMb,
    required this.reservedMb,
    required this.frozen,
  });

  final int totalMb;
  final int availableMb;
  final int purchasedAvailableMb;
  final int welcomeAvailableMb;
  final int reservedMb;
  final bool frozen;

  factory GbWalletBalance.fromJson(Object? response) {
    if (response is! Map<String, dynamic>) {
      throw const FormatException('Invalid GB wallet response');
    }
    final raw = response['balance'];
    if (raw is! Map<String, dynamic> ||
        raw['unit'] != 'MB' ||
        raw['conversion'] != 'decimal_1000') {
      throw const FormatException('Unrecognized GB wallet units');
    }
    int whole(String key) {
      final value = raw[key];
      if (value is! int || value < 0) {
        throw const FormatException('Invalid whole-MB wallet value');
      }
      return value;
    }

    final total = whole('totalMb');
    final available = whole('availableMb');
    final purchased = whole('purchasedAvailableMb');
    final welcome = whole('welcomeAvailableMb');
    final reserved = whole('reservedMb');
    if (total < available ||
        total - available != reserved ||
        purchased > available ||
        welcome > available ||
        purchased + welcome != available ||
        raw['frozen'] is! bool ||
        raw['totalGb'] != decimalGb(total) ||
        raw['availableGb'] != decimalGb(available)) {
      throw const FormatException('Inconsistent authoritative MB balance');
    }
    return GbWalletBalance(
      totalMb: total,
      availableMb: available,
      purchasedAvailableMb: purchased,
      welcomeAvailableMb: welcome,
      reservedMb: reserved,
      frozen: raw['frozen'] as bool,
    );
  }
}

/// Decimal GB (1000 MB) is display-only, never a floating-point currency.
String decimalGb(int amountMb) {
  if (amountMb < 0) throw const FormatException('Invalid MB');
  final whole = amountMb ~/ 1000;
  final fractional = (amountMb % 1000)
      .toString()
      .padLeft(3, '0')
      .replaceFirst(RegExp(r'0+$'), '');
  return fractional.isEmpty ? whole.toString() : '$whole.$fractional';
}

String groupedMb(int amountMb) {
  if (amountMb < 0) throw const FormatException('Invalid MB');
  return amountMb.toString().replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'), (_) => ',',
  );
}

/// Credential refresh retains the same authorizationEpoch. Sign-out or a new
/// login (even the same person) selects a distinct provider identity.
final gbWalletSummaryProvider =
    FutureProvider.autoDispose.family<GbWalletBalance, GbWalletOwner>(
  (ref, owner) async {
    bool belongsToOwner() {
      final session = ref.read(sessionProvider);
      return session is SessionSignedIn &&
          session.user.id == owner.accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch ==
              owner.authorizationEpoch;
    }

    if (!belongsToOwner()) throw StateError('account_changed');
    final api = ref.watch(apiClientProvider);
    final cancel = CancelToken();
    ref.onDispose(cancel.cancel);
    final response = await api.dio.get<Object?>(
      '/v1/gb/wallet/summary',
      cancelToken: cancel,
      options: Options(headers: const {'Cache-Control': 'no-store'}),
    );
    if (!belongsToOwner()) throw StateError('account_changed');
    return GbWalletBalance.fromJson(response.data);
  },
);
