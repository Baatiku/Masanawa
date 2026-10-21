import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/state/wallet_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/state/session_state.dart';

WalletView _view({
  int amount = 9007199254740991,
  bool empty = false,
}) => WalletView(
  spendableCredits: amount,
  pendingEarningsCredits: 123,
  availableEarningsCredits: 456,
  ngnBalanceKobo: 0,
  entries: empty
      ? const []
      : [
          WalletEntry(
            id: 'entry-1',
            kind: WalletEntryKind.transferReceived,
            title:
                'A long authorized transaction description that wraps on a narrow screen',
            amountCredits: amount,
            incoming: true,
            createdAt: DateTime(2026, 10, 12, 13, 42),
          ),
          WalletEntry(
            id: 'entry-2',
            kind: WalletEntryKind.purchase,
            title: 'Data bundle',
            amountCredits: 75,
            incoming: false,
            createdAt: DateTime(2026, 10, 11, 9, 5),
          ),
        ],
);

class _SignedOut extends SessionController {
  @override SessionState build() => const SessionSignedOut();
}

class _Wallet extends WalletController {
  _Wallet(this.value);
  final WalletView? value;
  @override
  Future<WalletView?> build() async => value;
}

class _RetryWallet extends WalletController {
  int attempts = 0;
  @override
  Future<WalletView?> build() async => throw StateError('fixture outage');
  @override
  Future<void> refresh() async {
    attempts++;
    state = AsyncData(_view(amount: 42, empty: true));
  }
}

class _LoadingWallet extends WalletController {
  final pending = Completer<WalletView?>();
  @override
  Future<WalletView?> build() => pending.future;
}

void main() {
  Future<void> mount(
    WidgetTester tester, {
    double width = 390,
    double scale = 1,
    TextDirection direction = TextDirection.ltr,
    WalletView? value,
    WalletController Function()? controller,
    VoidCallback? onCrypto,
    VoidCallback? onSend,
    ValueChanged<String>? onBilling,
  }) async {
    tester.view.physicalSize = Size(width, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      ProviderScope(
        key: UniqueKey(),
        overrides: [
          sessionProvider.overrideWith(_SignedOut.new),
          walletProvider.overrideWith(controller ?? () => _Wallet(value)),
        ],
        child: MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          home: MediaQuery(
            data: MediaQueryData(
              size: Size(width, 900),
              textScaler: TextScaler.linear(scale),
            ),
            child: Directionality(
              textDirection: direction,
              child: WalletScreen(
                onOpenCrypto: onCrypto,
                onSend: onSend,
                onOpenBillingService: onBilling,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
  }

  for (final width in [320.0, 360.0, 390.0, 430.0]) {
    for (final scale in [1.0, 2.0]) {
      for (final direction in TextDirection.values) {
        testWidgets('truthful flat wallet $width ${scale}x $direction', (
          tester,
        ) async {
          await mount(
            tester,
            width: width,
            scale: scale,
            direction: direction,
            value: _view(),
            onCrypto: () {},
            onBilling: (_) {},
          );
          expect(find.text('Wallet'), findsOneWidget);
          expect(find.textContaining('MSNW'), findsWidgets);
          // Pricing policy copy may mention ₦1, but a signed-out portfolio
          // must not invent an NGN valuation.
          expect(find.text('Unavailable'), findsOneWidget);
          await tester.scrollUntilVisible(find.text('Available balance'), 100,
              scrollable: find.byType(Scrollable).first);
          expect(find.text('Available balance'), findsOneWidget);
          expect(find.text('Sign in to view your balance'), findsOneWidget);
          expect(find.text('9007199254740991'), findsNothing);
          expect(find.text('Credits'), findsNothing);
          await tester.scrollUntilVisible(find.text('Send'), 100,
              scrollable: find.byType(Scrollable).first);
          expect(find.text('Send'), findsOneWidget);
          expect(find.text('Withdraw'), findsOneWidget);
          await tester.scrollUntilVisible(find.text('Data bundles'), 180, scrollable: find.byType(Scrollable).first);
          expect(find.text('+9007199254740991 Credits'), findsNothing);
          expect(tester.takeException(), isNull);
        });
      }
    }
  }

  testWidgets('legacy zero is not misrepresented as verified MSNW', (
    tester,
  ) async {
    await mount(tester, value: _view(amount: 0, empty: true));
    expect(find.text('0'), findsNothing);
    expect(find.text('— MSNW'), findsOneWidget);
    expect(find.text('Sign in to view your balance'), findsOneWidget);
  });

  testWidgets(
    'loading preserves qualified services without invented balances',
    (tester) async {
      final intents = <String>[];
      final loading = _LoadingWallet();
      await mount(tester, controller: () => loading, onBilling: intents.add);
      expect(find.byType(LinearProgressIndicator), findsNothing);
      expect(find.text('0'), findsNothing);
      await tester.tap(find.text('Airtime'));
      expect(intents, ['airtime']);
    },
  );

  testWidgets('legacy wallet outage does not create an MSNW receipt', (
    tester,
  ) async {
    final controller = _RetryWallet();
    await mount(tester, controller: () => controller, onCrypto: () {});
    expect(find.text('— MSNW'), findsOneWidget);
    expect(find.text('Sign in to view your balance'), findsOneWidget);
    expect(find.text('42'), findsNothing);
    expect(controller.attempts, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('existing qualified Crypto and Billing destinations still open', (
    tester,
  ) async {
    late GoRouter router;
    router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, _) => WalletScreen(
            onOpenCrypto: () => context.push('/crypto'),
            onOpenBillingService: (service) =>
                context.push('/billing?service=$service'),
          ),
        ),
        GoRoute(
          path: '/crypto',
          builder: (_, _) => const Scaffold(body: Text('Crypto route')),
        ),
        GoRoute(
          path: '/billing',
          builder: (_, state) => Scaffold(
            body: Text('Billing ${state.uri.queryParameters['service']}'),
          ),
        ),
      ],
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
      ProviderScope(
        key: UniqueKey(),
        overrides: [
          sessionProvider.overrideWith(_SignedOut.new),
          walletProvider.overrideWith(
            () => _Wallet(_view(amount: 12, empty: true)),
          ),
        ],
        child: MaterialApp.router(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          routerConfig: router,
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('All crypto assets'), 180, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('All crypto assets'));
    await tester.pumpAndSettle();
    expect(find.text('Crypto route'), findsOneWidget);
    router.pop();
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Data bundles'));
    await tester.tap(find.text('Data bundles'));
    await tester.pumpAndSettle();
    expect(find.text('Billing data'), findsOneWidget);
  });
  testWidgets(
    'legacy Send callback cannot authorize MSNW in a signed-out wallet',
    (tester) async {
      var sent = 0;
      await mount(
        tester,
        width: 320,
        scale: 2,
        value: _view(amount: 12, empty: true),
        onSend: () => sent++,
      );
      expect(find.text('Fund'), findsOneWidget);
      expect(find.byTooltip('Withdraw'), findsNothing);
      await tester.ensureVisible(find.text('Send'));
      await tester.tap(find.text('Send'));
      expect(sent, 0);
      final send = tester.widget<InkWell>(find.ancestor(
        of: find.text('Send'), matching: find.byType(InkWell)).first);
      expect(send.onTap, isNull);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('MSNW Send stays disabled without an authenticated account', (
    tester,
  ) async {
    await mount(
      tester,
      value: _view(amount: 1000, empty: true),
    );
    final sendButton = tester.widget<InkWell>(find.ancestor(
      of: find.text('Send'), matching: find.byType(InkWell)).first);
    expect(sendButton.onTap, isNull);
    expect(find.byTooltip('Send Credits'), findsNothing);
    expect(find.text('Credits'), findsNothing);
  });
}
