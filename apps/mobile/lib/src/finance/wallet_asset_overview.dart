import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'crypto_state.dart';
import 'crypto_wallet_screen.dart';

class WalletAssetOverview extends ConsumerWidget {
  const WalletAssetOverview({super.key,this.hideBalances=false});
  final bool hideBalances;
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
      data: (wallet) => Column(
        children: [
          for (final route in wallet.depositRoutes) ...[
            Divider(height: 1, color: context.masanawa.structuralBorder),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: context.masanawa.surfaceMuted,
                foregroundColor: context.masanawa.textPrimary,
                child: Text(route.asset.substring(0, 1)),
              ),
              title: Text(
                route.asset,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: route.network == null ? null : Text(route.network!),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    hideBalances?'••••':wallet.balances[route.providerCode] ?? '—',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.chevron_right, size: 18),
                ],
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => CryptoWalletScreen(
                    initialProviderCode: route.providerCode,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
