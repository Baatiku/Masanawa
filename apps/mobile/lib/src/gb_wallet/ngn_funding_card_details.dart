import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/session_state.dart';
import 'ngn_wallet.dart';

/// Read-only account information: viewing a card never allocates an account.
class NgnFundingBalance extends ConsumerWidget {
  const NgnFundingBalance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(sessionProvider);
    final owner = s is SessionSignedIn
        ? (accountId: s.user.id,
            authorizationEpoch: ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    final cash = owner == null ? null : ref.watch(ngnWalletBalanceProvider(owner));
    return Semantics(
      label: 'NGN balance',
      child: Text(
        cash?.valueOrNull == null
            ? (cash?.isLoading == true ? 'Checking…' : 'Unavailable')
            : formatNgn(cash!.valueOrNull!.balanceKobo),
        textAlign: TextAlign.end,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class NgnFundingCardDetails extends ConsumerWidget {
  const NgnFundingCardDetails({super.key, this.compact = false, this.showBalance = true});
  final bool compact;
  final bool showBalance;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    final account = bank?.valueOrNull;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Divider(height: compact ? 8 : 16),
        if (showBalance) Row(
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
                cash?.valueOrNull == null
                    ? (cash?.isLoading == true ? 'Checking…' : 'Unavailable')
                    : formatNgn(cash!.valueOrNull!.balanceKobo),
                textAlign: TextAlign.end,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        if (cash?.valueOrNull?.frozen == true)
          const Text('NGN wallet restricted'),
        if ((cash?.valueOrNull?.debtKobo ?? 0) > 0)
          Text('Reconciliation due: ${formatNgn(cash!.valueOrNull!.debtKobo)}'),
        SizedBox(height: compact ? 2 : 4),
        if (account?.state == 'assigned') ...[
          if (compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5)
            Text(account!.bank!, style: Theme.of(context).textTheme.labelMedium),
          Row(
            children: [
              if (!(compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5)) Expanded(
                child: Text(account!.bank!, maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium),
              ),
              if (!(compact && MediaQuery.textScalerOf(context).scale(1) >= 1.5))
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
                  await Clipboard.setData(ClipboardData(text: account!.number!));
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
          TextButton(
            onPressed: () {
              ref.invalidate(ngnWalletBalanceProvider(owner));
              ref.invalidate(ngnBankAccountProvider(owner));
            },
            child: const Text('Retry wallet details'),
          ),
      ],
    );
  }
}
