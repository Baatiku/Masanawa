import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/legacy_ngn_exchange_receipt.dart';

// Internal package sales are retired; only original immutable receipts remain.
void main(){
 test('historical NGN exchange review keeps its original currency amounts',(){
  final row={'sizeGb':10,'amountMb':10000,'amountKobo':500000,'rateVersion':'ngn-quantity-v1','operationId':'ngnx_${'a'*48}','reviewToken':'a'*80,'expiresAt':'2026-10-25T12:00:00.000Z','canAfford':true};
  final old=NgnExchangeReview.fromJson(row,requireFresh:false);
  expect(old.amountMb,10000);expect(old.amountKobo,500000);expect(old.operationId,row['operationId']);
  expect(()=>NgnExchangeReview.fromJson({...row,'amountMb':1},requireFresh:false),throwsFormatException);
 });
}
