import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import 'ngn_wallet.dart';

/// Read-only account information: viewing a card never allocates an account.
class NgnFundingCardDetails extends ConsumerWidget {
  const NgnFundingCardDetails({super.key});
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
        const Divider(height: 24),
        Text('NGN balance', style: Theme.of(context).textTheme.labelMedium),
        Text(
          cash?.valueOrNull == null
              ? (cash?.isLoading == true
                    ? 'Checking NGN balance…'
                    : 'NGN balance unavailable')
              : formatNgn(cash!.valueOrNull!.balanceKobo),
          style: Theme.of(context).textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        if (cash?.valueOrNull?.frozen == true)
          const Text('NGN wallet restricted'),
        if ((cash?.valueOrNull?.debtKobo ?? 0) > 0)
          Text('Reconciliation due: ${formatNgn(cash!.valueOrNull!.debtKobo)}'),
        const SizedBox(height: 8),
        if (account?.state == 'assigned') ...[
          Text(account!.bank!, style: Theme.of(context).textTheme.labelMedium),
          Row(
            children: [
              Expanded(
                child: SelectableText(
                  account.number!,
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
          TextButton(
            onPressed: () {
              ref.invalidate(ngnWalletBalanceProvider(owner));
              ref.invalidate(ngnBankAccountProvider(owner));
            },
            child: const Text('Retry wallet details'),
          ),
        const SizedBox(height: 8),
        FilledButton.icon(
          key: const ValueKey('wallet-card-add-data'),
          onPressed: owner == null ? null : () => context.push('/wallet/add'),
          icon: const Icon(Icons.add_rounded),
          label: const Text('Add data'),
        ),
      ],
    );
  }
}
