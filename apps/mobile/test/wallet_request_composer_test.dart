import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:masanawa/src/core/wallet_payment_request.dart';
import 'package:masanawa/src/finance/wallet_request_composer.dart';

void main() {
  test('request composer uses canonical Send six-decimal arithmetic', () {
    expect(parseMsnwRequestAmount('12.000001'), '12000001');
    expect(parseMsnwRequestAmount('0.000001'), '1');
    expect(parseMsnwRequestAmount('000.100000'), '100000');
    for (final invalid in [
      '0',
      '0.000000',
      '-2',
      '1.1234567',
      '1e4',
      '1,000',
      '1000000000000000000',
      '1.0.1',
    ]) {
      expect(parseMsnwRequestAmount(invalid), isNull, reason: invalid);
    }
  });

  testWidgets('optional exact amount survives signed-in link parsing', (
    tester,
  ) async {
    String? owner = 'user_fixture';
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: WalletRequestComposer(
            accountNumber: '8123456789',
            ownerId: 'user_fixture',
            currentOwnerId: () => owner,
          ),
        ),
      ),
    );
    await tester.enterText(
      find.byKey(const ValueKey('request-msnw-amount')),
      '12.000001',
    );
    await tester.tap(find.text('Create request link'));
    await tester.pump();
    final link = tester
        .widget<SelectableText>(find.byKey(const ValueKey('request-msnw-link')))
        .data!;
    expect(find.byType(QrImageView), findsOneWidget);
    final parsed = parseWalletPaymentRequest(Uri.parse(link));
    expect(parsed?.amountAtomic, '12000001');
    expect(parsed?.accountNumber, '8123456789');
    expect(parsed?.userId, 'user_fixture');

    await tester.enterText(
      find.byKey(const ValueKey('request-msnw-amount')),
      '1.1234567',
    );
    await tester.tap(find.text('Create request link'));
    await tester.pump();
    expect(find.byKey(const ValueKey('request-msnw-link')), findsNothing);
    expect(find.textContaining('up to six decimal places'), findsOneWidget);

    owner = null;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: WalletRequestComposer(
            accountNumber: '8123456789',
            ownerId: 'user_fixture',
            currentOwnerId: () => owner,
          ),
        ),
      ),
    );
    expect(find.textContaining('Your account changed'), findsOneWidget);
    expect(find.text('Share link'), findsNothing);
  });

  testWidgets('blank optional amount creates an unapproved generic link', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: WalletRequestComposer(
            accountNumber: '8123456789',
            ownerId: 'user_fixture',
            currentOwnerId: () => 'user_fixture',
          ),
        ),
      ),
    );
    await tester.tap(find.text('Create request link'));
    await tester.pump();
    final uri = Uri.parse(
      tester
          .widget<SelectableText>(
            find.byKey(const ValueKey('request-msnw-link')),
          )
          .data!,
    );
    expect(parseWalletPaymentRequest(uri)?.amountAtomic, isNull);
    expect(find.textContaining('Any amount'), findsOneWidget);
  });
}
