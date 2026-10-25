import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_send_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
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
}
