import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/session_state.dart';
import 'gb_wallet_summary.dart';
import 'ngn_wallet.dart';

/// Read-only account information: viewing a card never allocates an account.
class NgnFundingBalance extends ConsumerStatefulWidget {
  const NgnFundingBalance({super.key});

  @override
  ConsumerState<NgnFundingBalance> createState() => _NgnFundingBalanceState();
}

bool _denied(AsyncValue<Object>? state) => state?.error is DioException &&
    const {401, 403, 410}.contains((state!.error as DioException).response?.statusCode);

class _NgnFundingBalanceState extends ConsumerState<NgnFundingBalance> {
  GbWalletOwner? _lastOwner;
  NgnWalletBalance? _lastCash;

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    final owner = s is SessionSignedIn
        ? (accountId: s.user.id,
            authorizationEpoch: ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    final cash = owner == null ? null : ref.watch(ngnWalletBalanceProvider(owner));
    if (owner != _lastOwner || _denied(cash)) {
      _lastOwner = owner;
      _lastCash = null;
    }
    if (!_denied(cash) && cash?.valueOrNull != null) _lastCash = cash!.valueOrNull;
    final verified = _lastCash;
    return Semantics(
      label: 'NGN balance',
      child: Text(
        verified == null
            ? (cash?.isLoading == true ? 'Checking…' : 'Unavailable')
            : formatNgn(verified.balanceKobo),
        textAlign: TextAlign.end,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class NgnFundingCardDetails extends ConsumerStatefulWidget {
  const NgnFundingCardDetails({super.key, this.compact = false, this.showBalance = true});
  final bool compact;
  final bool showBalance;

  @override
  ConsumerState<NgnFundingCardDetails> createState() => _NgnFundingCardDetailsState();
}

class _NgnFundingCardDetailsState extends ConsumerState<NgnFundingCardDetails> {
  GbWalletOwner? _lastOwner;
  NgnWalletBalance? _lastCash;
  NgnBankAccount? _lastAccount;

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    final owner = s is SessionSignedIn
        ? (
            accountId: s.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    final cash = owner == null
        ? null
        : ref.watch(ngnWalletBalanceProvider(owner));
    final bank = owner == null
        ? null
        : ref.watch(ngnBankAccountProvider(owner));
    if (owner != _lastOwner) {
      _lastOwner = owner;
      _lastCash = null;
      _lastAccount = null;
    }
    if (_denied(cash)) _lastCash = null;
    if (_denied(bank)) _lastAccount = null;
    if (!_denied(cash) && cash?.valueOrNull != null) _lastCash = cash!.valueOrNull;
    if (!_denied(bank) && bank?.valueOrNull != null) _lastAccount = bank!.valueOrNull;
    final verifiedCash = _lastCash;
    final account = _lastAccount;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Divider(height: widget.compact ? 8 : 16),
        if (widget.showBalance) Row(
          children: [
            Expanded(
              child: Text(
                'NGN balance',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                verifiedCash == null
                    ? (cash?.isLoading == true ? 'Checking…' : 'Unavailable')
                    : formatNgn(verifiedCash.balanceKobo),
                textAlign: TextAlign.end,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        if (verifiedCash?.frozen == true)
          const Text('NGN wallet restricted'),
        if ((verifiedCash?.debtKobo ?? 0) > 0)
          Text('Reconciliation due: ${formatNgn(verifiedCash!.debtKobo)}'),
        SizedBox(height: widget.compact ? 2 : 4),
        if (account?.state == 'assigned') ...[
          if (widget.compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5)
            Text(account!.bank!, style: Theme.of(context).textTheme.labelMedium),
          Row(
            children: [
              if (!(widget.compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5)) Expanded(
                child: Text(account!.bank!, maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium),
              ),
              if (!(widget.compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5))
                const SizedBox(width: 8),
              Expanded(
                child: SelectableText(
                  account!.number!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              IconButton(
                tooltip: 'Copy account number',
                icon: const Icon(Icons.copy_outlined, size: 20),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: account.number!));
                  if (context.mounted)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Account number copied')),
                    );
                },
              ),
            ],
          ),
        ] else
          Text(switch (account?.state) {
            'pending' => 'Bank account pending',
            'unassigned' => 'Funding account not assigned',
            'suspended' => 'Funding unavailable',
            _ =>
              bank?.isLoading == true
                  ? 'Checking bank account…'
                  : 'Bank account unavailable',
          }),
        if (owner != null && (cash?.hasError == true || bank?.hasError == true))
          Center(child: TextButton.icon(
            onPressed: () {
              ref.invalidate(ngnWalletBalanceProvider(owner));
              ref.invalidate(ngnBankAccountProvider(owner));
            },
            icon: const Icon(Icons.wifi_off_rounded, size: 16),
            label: const Text('Check your connection · Retry'),
          )),
      ],
    );
  }
}
