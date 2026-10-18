import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_billing_checkout.dart';

Map<String,dynamic> original() => {
  'quoteId':'quoted_abc123',
  'quoteRevision':1,
  'expectedAmountMicro':'5000000',
  'expectedRateKoboPerMsnw':'10000',
  'fulfillmentReference':'msnw-bill-quoted_abc123',
  'customerId':'08030000000',
  'itemName':'Airtime',
  'totalAmount':'500.00',
};

void main() {
  test('a saved bill can be recovered only by its original quote reference', () {
    expect(isValidMsnwBillRecoveryRecord(original()), isTrue);
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'fulfillmentReference':'msnw-bill-other_quote',
    }), isFalse);
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'quoteId':'../../other-user',
    }), isFalse);
  });

  test('invalid saved amount and rate cannot be submitted on recovery', () {
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'expectedAmountMicro':'-5000000',
    }), isFalse);
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'expectedRateKoboPerMsnw':'0',
    }), isFalse);
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'quoteRevision':'1',
    }), isFalse);
    expect(isValidMsnwBillRecoveryRecord({
      ...original(),'itemName':null,
    }), isFalse);
  });
}
