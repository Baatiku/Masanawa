import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/wallet_payment_request.dart';
import 'package:masanawa/src/finance/wallet_request_scan_sheet.dart';

void main() {
  final now = DateTime.utc(2026, 10, 21, 4);
  test('camera and gallery share a strict untrusted payment-link parser', () {
    final link = WalletPaymentRequest(
      accountNumber: '8123456789',
      userId: 'user_test',
      expiresAt: now.add(const Duration(hours: 12)),
      amountAtomic: '1500001',
    ).link.toString();
    final parsed = parsePaymentQrPayload('  $link  ', now: now);
    expect(parsed?.accountNumber, '8123456789');
    expect(parsed?.amountAtomic, '1500001');
    expect(
      parsePaymentQrPayload(link, now: now.add(const Duration(days: 2))),
      isNull,
    );
  });
  test(
    'untrusted QR cannot inject destinations, hostnames or payment authority',
    () {
      for (final value in [
        'https://evil.example/pay?v=1',
        'masanawa://wallet',
        'https://masanawa.com/pay?paid=true',
        'https://masanawa.com/pay?recipient=a&recipient=b',
        'https://user@masanawa.com/pay',
        'https://masanawa.com/pay#secret',
        'data:text/html,paid',
        'https://masanawa.com/transaction/abc',
        'a' * 2100,
        '',
      ]) {
        expect(
          parsePaymentQrPayload(value, now: now),
          isNull,
          reason: value.substring(0, value.length > 80 ? 80 : value.length),
        );
      }
    },
  );
}
