import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'crypto_state.dart';
import 'crypto_wallet_screen.dart';

/// Provider-reported balances may be useful while custody inventory is down,
/// but cannot be presented as confirmed spendable custody or verified reserves.
String walletAssetBalanceLabel(CryptoWalletSnapshot wallet, String providerCode, {
  required bool hidden,
}) {
  if (hidden) return '••••';
  final amount=wallet.balances[providerCode];
  if (amount == null) return 'Available balance unavailable';
  return wallet.verifiedCustodyFor(providerCode)
      ? 'Available: $amount'
      : 'Provider-reported: $amount (custody unverified)';
}

class WalletAssetOverview extends ConsumerWidget {
  const WalletAssetOverview({super.key,this.hideBalances=false,this.ownedOnly=false});
  final bool hideBalances;
  /// WLT01 composite card shows only verified held quantities, not deposit
  /// route suggestions or provider-reported informational balances.
  final bool ownedOnly;
  static bool _positive(String? value) {
    if(value==null||value.trim().isEmpty)return false;
    return !RegExp(r'^0+(?:\.0+)?$').hasMatch(value.trim());
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(sessionProvider) is! SessionSignedIn)
      return const SizedBox.shrink();
    final snapshot = ref.watch(cryptoWalletProvider);
    return snapshot.when(
      loading: () => const Padding(
        padding: EdgeInsets.all(20),
        child: LinearProgressIndicator(),
      ),
      error: (_, __) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Crypto assets unavailable'),
        trailing: TextButton(
          onPressed: () => ref.read(cryptoWalletProvider.notifier).refresh(),
          child: const Text('Retry'),
        ),
      ),
      data: (wallet) {
        final ownedRoutes=wallet.assetRoutes.where((route)=>
          !ownedOnly || (wallet.verifiedCustodyFor(route.providerCode) &&
           (_positive(wallet.balances[route.providerCode]) ||
            _positive(wallet.reservedBalances[route.providerCode])))).toList();
        return Column(children: [
          if (!wallet.holdingsVerified && wallet.assetRoutes.isNotEmpty)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.info_outline),
              title: const Text('Custody holdings not verified'),
              subtitle: const Text(
                'Provider figures are informational, not confirmed spendable funds. '
                'Retry before reviewing a financial action.'),
              trailing: TextButton(
                onPressed: () => ref.read(cryptoWalletProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ),
          if(ownedOnly && ownedRoutes.isEmpty)
            ListTile(contentPadding:EdgeInsets.zero,
              title:Text(wallet.holdingsVerified
                ? 'No verified crypto holdings yet'
                : 'Crypto holdings verification unavailable'),
              subtitle:const Text('Balances are shown only after custody verification.')),
          for (final route in ownedRoutes) ...[
            Divider(height: 1, color: context.masanawa.structuralBorder),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: context.masanawa.surfaceMuted,
                foregroundColor: context.masanawa.textPrimary,
                child: Text(route.asset.isEmpty ? '?' : route.asset.substring(0, 1)),
              ),
              title: Text(
                route.asset,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (route.network != null) Text(route.network!),
                  if(wallet.verifiedCustodyFor(route.providerCode) &&
                      wallet.reservedBalances[route.providerCode]!=null)
                    Text(hideBalances?'Reserved: ••••':'Reserved: ${wallet.reservedBalances[route.providerCode]}'),
                  const SizedBox(height: 4),
                  Text(
                    walletAssetBalanceLabel(wallet, route.providerCode, hidden: hideBalances),
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              trailing: const Icon(Icons.chevron_right, size: 18),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => CryptoWalletScreen(
                    initialProviderCode: route.providerCode,
                  ),
                ),
              ),
            ),
          ],
        ]);
      },
    );
  }
}
