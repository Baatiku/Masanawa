import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/state/wallet_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _SignedOut extends SessionController {
  @override SessionState build() => const SessionSignedOut();
}

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
  testWidgets('Wallet renders MSNW without rebranding old Credits or unverified bank details',
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
          sessionProvider.overrideWith(_SignedOut.new),
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

    // MSNW is the only wallet credit/token; legacy Credits and historical
    // bank metadata must not be silently presented as MSNW funding.
    expect(find.text('Available balance'), findsOneWidget);
    expect(find.textContaining('MSNW'), findsWidgets);
    expect(find.text('2500'), findsNothing);
    expect(find.text('Credits'), findsNothing);
    expect(find.text('Dedicated Bank Account'), findsNothing);
    expect(find.text('9930481726'), findsNothing);
    expect(find.text('Wema Bank (Paystack)'), findsNothing);
    expect(find.text('Masanawa / Test User'), findsNothing);
    expect(find.text('Sign in to view your balance'), findsOneWidget);

    // Owner-approved WLT01: no standalone crypto wallet/card on the home,
    // and a signed-out viewer cannot use financial actions.
    expect(find.text('All crypto assets'),findsNothing);
    expect(find.text('Bills & services'),findsNothing);
    expect(find.byType(IndexedStack),findsNothing);
    final scroll=find.descendant(of:find.byType(WalletScreen),
      matching:find.byType(Scrollable)).first;
    await tester.scrollUntilVisible(find.text('P2P'),150,scrollable:scroll);
    expect(tester.widget<InkWell>(find.ancestor(
      of:find.text('P2P'),matching:find.byType(InkWell)).first).onTap,isNull);
    await tester.scrollUntilVisible(find.text('My assets'),150,scrollable:scroll);
    expect(find.text('My assets'),findsOneWidget);
    await tester.scrollUntilVisible(find.text('Transaction history'),150,scrollable:scroll);
    expect(find.text('Transaction history'),findsOneWidget);
  });
}
