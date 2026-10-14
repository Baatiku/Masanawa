import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/state/wallet_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _FakeWalletController extends WalletController {
  _FakeWalletController(this.view);
  final WalletView? view;
  @override
  Future<WalletView?> build() async => view;
}

class _FakeCryptoController extends CryptoWalletController {
  @override
  Future<CryptoWalletSnapshot> build() async => const CryptoWalletSnapshot(
        capabilities: CryptoCapabilities(
          deposits: true,
          withdrawals: true,
          conversions: true,
          fiatOnRamp: true,
          fiatCurrencies: ['NGN'],
          fiatSettlementProviderCode: 'USDTTRC20',
        ),
        depositRoutes: [
          CryptoRoute(providerCode: 'USDTTRC20', asset: 'USDT', network: 'tron'),
        ],
        conversionRoutes: [],
        history: [],
        balances: {'USDTTRC20': '150.00'},
        selectedProviderCode: 'USDTTRC20',
      );
}

void main() {
  testWidgets('Wallet renders one MSN-first wallet with crypto drilldown and bank card',
      (tester) async {
    final testView = WalletView(
      spendableCredits: 2500,
      pendingEarningsCredits: 100,
      availableEarningsCredits: 400,
      ngnBalanceKobo: 250000,
      bankName: 'Wema Bank (Paystack)',
      accountNumber: '9930481726',
      accountHolderName: 'Masanawa / Test User',
      entries: [
        WalletEntry(
          id: 'tx_1',
          kind: WalletEntryKind.transferReceived,
          title: 'Bank Transfer (Wema Bank)',
          amountCredits: 2500,
          incoming: true,
          createdAt: DateTime(2026, 10, 14, 12, 0),
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          walletProvider.overrideWith(() => _FakeWalletController(testView)),
          cryptoWalletProvider.overrideWith(_FakeCryptoController.new),
        ],
        child: MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          home: const WalletScreen(embeddedInShell: true),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // No duplicated Balance/Crypto tab strip: MSN hero and direct crypto navigation.
    expect(find.text('MSN balance'), findsOneWidget);
    expect(find.text('My assets'), findsOneWidget);

    // Verify Balance tab contents
    expect(find.text('2500'), findsOneWidget);
    expect(find.text('Dedicated Bank Account'), findsOneWidget);
    expect(find.text('9930481726'), findsOneWidget);
    expect(find.text('Wema Bank (Paystack)'), findsOneWidget);
    expect(find.text('Masanawa / Test User'), findsOneWidget);

    // Verify Copy button
    expect(find.text('Copy'), findsOneWidget);
    await tester.tap(find.text('Copy'));
    await tester.pumpAndSettle();
    expect(find.text('Account number copied to clipboard'), findsOneWidget);

    // Verify navigating to the same crypto wallet within the Wallet screen.
    await tester.tap(find.text('Crypto assets'));
    await tester.pumpAndSettle();

    // Verify Crypto tab loaded
    expect(find.textContaining('USDT'), findsWidgets);
    expect(find.text('150.00'), findsWidgets);
  });
}
