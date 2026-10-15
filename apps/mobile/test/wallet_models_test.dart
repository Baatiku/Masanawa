import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';

void main() {
  test('parses simple wallet projection', () {
    final wallet = WalletView.fromJson({
      'spendableCredits': 5000,
      'pendingEarningsCredits': 800,
      'availableEarningsCredits': 1200,
      'entries': [
        {
          'id': 'entry-1',
          'kind': 'gift',
          'title': 'Gift received',
          'amountCredits': 200,
          'incoming': true,
          'createdAt': '2026-10-05T09:00:00Z',
        },
      ],
    });

    expect(wallet.spendableCredits, 5000);
    expect(wallet.availableEarningsCredits, 1200);
    expect(wallet.entries.single.kind, WalletEntryKind.gift);
  });

  test('wallet model has no Agent Float balance', () {
    final wallet = WalletView.fromJson({
      'spendableCredits': 1,
      'pendingEarningsCredits': 2,
      'availableEarningsCredits': 3,
      'agentFloatCredits': 9999,
      'entries': [],
    });

    expect(wallet.spendableCredits, 1);
  });

  test('honest zero remains distinct from unavailable financial data', () {
    final realZero = WalletView.fromJson({
      'spendableCredits': 0,
      'pendingEarningsCredits': 0,
      'availableEarningsCredits': 0,
      'entries': [],
    });
    expect(realZero.spendableCredits, 0);
    expect(realZero.ngnBalanceKobo, isNull);
    expect(realZero.ngnBalanceLabel, 'Unavailable');
    expect(realZero.bankName, isNull);
    expect(realZero.accountNumber, isNull);
  });

  test('missing, fractional and malformed Credits fail closed', () {
    final valid = {
      'spendableCredits': 25,
      'pendingEarningsCredits': 0,
      'availableEarningsCredits': 0,
      'entries': [],
    };
    for (final key in [
      'spendableCredits',
      'pendingEarningsCredits',
      'availableEarningsCredits',
    ]) {
      final missing = Map<String, dynamic>.from(valid)..remove(key);
      expect(() => WalletView.fromJson(missing), throwsFormatException);
      final fractional = {...valid, key: 0.5};
      expect(() => WalletView.fromJson(fractional), throwsFormatException);
      final negative = {...valid, key: -1};
      expect(() => WalletView.fromJson(negative), throwsFormatException);
    }
    expect(() => WalletView.fromJson({...valid, 'entries': null}),
        throwsFormatException);
    expect(() => WalletView.fromJson({...valid, 'entries': [null]}),
        throwsFormatException);
    expect(() => WalletView.fromJson({
      ...valid, 'ngnBalanceKobo': 1.5,
    }), throwsFormatException);
  });

  test('history amounts, timestamps and direction cannot silently change', () {
    final row = {
      'id': 'entry-2',
      'kind': 'transfer-received',
      'title': 'Received',
      'amountCredits': 20,
      'incoming': true,
      'createdAt': '2026-10-05T09:00:00Z',
    };
    for (final change in [
      {'amountCredits': 0.5},
      {'incoming': null},
      {'createdAt': 'not-a-date'},
      {'amountCredits': -10},
    ]) {
      expect(() => WalletEntry.fromJson({...row, ...change}),
          throwsFormatException);
    }
  });
}
