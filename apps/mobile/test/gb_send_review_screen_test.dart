import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_send_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

const _fan = AuthUser(
  id: 'send-fan', name: 'Sender', locale: 'en', status: 'ACTIVE',
  role: 'USER', isNewUser: false, createdAt: '2026-10-25T00:00:00Z',
);

class _SignedIn extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_fan, AuthTokens(
    accessToken: 'scoped-fixture', refreshToken: 'refresh-fixture',
    accessExpiresIn: 900, user: _fan,
  ));
}

Map<String, dynamic> _quote(String expiry) => {
  'recipient': {
    'id': 'fan-b', 'username': 'bello.user', 'displayName': 'Bello',
  },
  'amountMb': 250, 'feeMb': 0, 'requiresConfirmation': true,
  'operationId': 'send_12345678901234567890123456789012',
  'reviewToken': 'fixture-reviewed-token-with-a-length-over-forty-characters',
  'expiresAt': expiry,
};

void main() {
  test('review enforces server identity, purchased MB and short expiry', () {
    final expiry = DateTime.now().toUtc().add(
      const Duration(minutes: 4)).toIso8601String();
    final review = GbSendQuote.fromJson(_quote(expiry), 250);
    expect(review.recipientHandle, 'bello.user');
    expect(review.amountMb, 250);
    for (final broken in [
      {..._quote(expiry), 'feeMb': 2},
      {..._quote(expiry), 'amountMb': 500},
      {..._quote(expiry), 'requiresConfirmation': false},
      {..._quote(expiry), 'operationId': 'broken'},
      {..._quote(expiry), 'expiresAt': '2020-01-01T00:00:00Z'},
      {..._quote(expiry), 'recipient': {
        'id': '', 'username': 'bello.user', 'displayName': 'Bello',
      }},
    ]) {
      expect(() => GbSendQuote.fromJson(broken, 250),
          throwsFormatException);
    }
  });

  test('receipt must match exact original operation and amount', () {
    final expiry = DateTime.now().toUtc().add(
      const Duration(minutes: 4)).toIso8601String();
    final quote = GbSendQuote.fromJson(_quote(expiry), 250);
    expect(GbSendReceipt.fromJson({
      'receipt': {
        'operationId': quote.operationId,
        'amountMb': 250,
        'state': 'completed',
      },
    }, quote).amountMb, 250);
    expect(() => GbSendReceipt.fromJson({
      'receipt': {
        'operationId': 'send_another-operation',
        'amountMb': 250,
        'state': 'completed',
      },
    }, quote), throwsFormatException);
  });

  testWidgets('signed-out Send never exposes a transfer confirmation',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    expect(find.text('Sign in before transferring MB.'), findsOneWidget);
    expect(find.text('Confirm Send'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Send reuses actual balance and Max excludes welcome/reserved MB',
      (tester) async {
    tester.view.physicalSize = const Size(390, 950);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith((ref, owner) async =>
          const GbWalletBalance(
            totalMb: 1500, availableMb: 1350,
            purchasedAvailableMb: 850, welcomeAvailableMb: 500,
            reservedMb: 150, frozen: false,
          )),
      ],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('gb-wallet-balance-card')),
      findsOneWidget);
    expect(find.text('1.35 GB'), findsOneWidget);
    expect(find.text('1,350 MB'), findsOneWidget);
    expect(find.text('Sendable: 850 MB purchased'), findsOneWidget);
    expect(find.textContaining('Send only purchased MB'), findsNothing);
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('send-quick-1000'))).onSelected, isNull);

    await tester.tap(find.byKey(const ValueKey('send-quick-500')));
    await tester.pump();
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('send-custom-mb'))).controller!.text, '500');
    await tester.enterText(find.byType(TextField).first, '@recipient');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNotNull);

    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')), '851');
    await tester.pump();
    expect(find.text('Amount exceeds sendable purchased MB'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNull);
    await tester.ensureVisible(find.byKey(const ValueKey('send-quick-max')));
    await tester.tap(find.byKey(const ValueKey('send-quick-max')));
    await tester.pump();
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('send-custom-mb'))).controller!.text, '850');
    expect(tester.takeException(), isNull);
  });

  testWidgets('no summary or frozen wallet cannot enable Send review',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith((ref, owner) async =>
          const GbWalletBalance(
            totalMb: 1000, availableMb: 1000,
            purchasedAvailableMb: 1000, welcomeAvailableMb: 0,
            reservedMb: 0, frozen: true,
          )),
      ],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Wallet restricted'), findsOneWidget);
    expect(find.text('Sendable: 0 MB purchased'), findsOneWidget);
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('send-quick-100'))).onSelected, isNull);
    await tester.enterText(find.byType(TextField).first, '@recipient');
    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')), '1');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNull);
    expect(tester.takeException(), isNull);
  });
}
