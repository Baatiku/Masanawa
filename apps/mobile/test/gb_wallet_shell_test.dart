import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_screen.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

class _SignedIn extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(
      id: 'fan-1', name: 'Masanawa fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-12T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'signed-in-test',
        refreshToken: 'refresh-test',
        accessExpiresIn: 900,
        user: user,
      ),
    );
  }
}

void main() {
  testWidgets('compact GB Wallet never represents legacy money as MB',
      (tester) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: Scaffold(body: GbWalletScreen())),
    ));
    expect(find.text('— GB'), findsOneWidget);
    expect(find.text('Exact MB balance unavailable'), findsOneWidget);
    expect(find.text('Send'), findsOneWidget);
    expect(find.text('Request'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('reads a scoped authoritative MB summary with separate welcome credit',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith(
          (ref, owner) async => const GbWalletBalance(
            totalMb: 11000,
            availableMb: 10850,
            purchasedAvailableMb: 10375,
            welcomeAvailableMb: 475,
            reservedMb: 150,
            frozen: false,
          ),
        ),
      ],
      child: const MaterialApp(home: Scaffold(body: GbWalletScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('10.85 GB'), findsOneWidget);
    expect(find.text('10,850 MB available'), findsOneWidget);
    expect(find.textContaining('Welcome: 475 MB'), findsOneWidget);
    expect(find.textContaining('Pending reservations: 150 MB'), findsOneWidget);
    expect(find.text('Exact MB balance unavailable'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  test('rejects fabricated or inconsistent MB readback', () {
    final valid = <String, dynamic>{
      'balance': {
        'unit': 'MB',
        'conversion': 'decimal_1000',
        'totalMb': 11000,
        'totalGb': '11',
        'availableMb': 10850,
        'availableGb': '10.85',
        'purchasedAvailableMb': 10375,
        'welcomeAvailableMb': 475,
        'reservedMb': 150,
        'frozen': false,
      },
    };
    expect(GbWalletBalance.fromJson(valid).availableMb, 10850);
    expect(decimalGb(10001), '10.001');
    expect(decimalGb(500), '0.5');
    expect(groupedMb(1234567), '1,234,567');
    expect(() => GbWalletBalance.fromJson({
      ...valid,
      'balance': {...(valid['balance'] as Map<String, dynamic>), 'unit': 'MSNW'},
    }), throwsFormatException);
    expect(() => GbWalletBalance.fromJson({
      ...valid,
      'balance': {...(valid['balance'] as Map<String, dynamic>), 'welcomeAvailableMb': 500},
    }), throwsFormatException);
  });

  testWidgets('Data never offers unverified Flutterwave purchases',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: Scaffold(
        body: DataRedemptionScreen(),
      )),
    ));
    expect(find.text('No verified GB bundles available'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
        isNull);
    await tester.enterText(find.byType(TextField), 'not a phone');
    await tester.pump();
    expect(find.text('Enter a valid Nigerian mobile number'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
