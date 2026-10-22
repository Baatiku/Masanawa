import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';

Map<String, dynamic> record(Map<String, String> details, {
  String amountAtomic = '1000000',
  int decimals = 6,
  String asset = 'MSNW',
}) => <String, dynamic>{
  'id': 'Conversions:owned',
  'reference': 'owned',
  'category': 'Conversions',
  'title': 'MSNW to stablecoin',
  'asset': asset,
  'amountAtomic': amountAtomic,
  'decimals': decimals,
  'status': 'processing',
  'incoming': false,
  'createdAt': '2026-10-22T06:00:00.000Z',
  'details': details,
};

void main() {
  test('historical USDT and USDC payout units are currencies, not network routes', () {
    for (final route in <String, String>{
      'USDTTRC20': 'USDT',
      'USDTMATIC': 'USDT',
      'USDCMATIC': 'USDC',
    }.entries) {
      final receipt = parseWalletActivity(record({
        'Network': route.key,
        'Crypto amount atomic': '1234567',
      }));
      expect(receipt.details['Crypto amount'], '1.234567 ${route.value}');
      expect(receipt.details['Network'], route.key);
      expect(receipt.details.containsKey('Crypto amount atomic'), isFalse);
    }
  });

  test('unknown historical routes keep raw units without an invented ticker', () {
    final receipt = parseWalletActivity(record({
      'Network': 'HISTORICAL',
      'Crypto amount atomic': '1999999',
    }));
    expect(receipt.details['Crypto amount (atomic units)'], '1999999');
    expect(receipt.details.containsKey('Crypto amount'), isFalse);
  });

  test('current server-formatted payout and high precision crypto value are unchanged', () {
    final settlement = parseWalletActivity(record({
      'Network': 'USDCMATIC',
      'Crypto amount': '1.234567 USDC',
    }));
    expect(settlement.details['Crypto amount'], '1.234567 USDC');
    final crypto = parseWalletActivity(record({
      'Network': 'tron',
    }, amountAtomic: '1', decimals: 18, asset: 'USDT'));
    expect(crypto.amount, '0.000000000000000001');
    expect(crypto.displayAmount, '−0.000000000000000001 USDT');
  });
}
