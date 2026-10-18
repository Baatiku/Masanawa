import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/billing_models.dart';
import 'package:masanawa/src/screens/billing/billing_screen.dart';

const old=BillingQuote(
  quoteId:'original-quote',revision:2,
  categoryCode:'AIRTIME',billerCode:'MTN',itemCode:'AIRTIME',
  itemName:'MTN Airtime',customerId:'08031234567',
  serviceAmountKobo:25000,feeAmountKobo:100,totalAmountKobo:25100,
  currency:'NGN',state:'fulfilled',
  expiresAt:'2026-10-18T07:00:00Z',
  checkoutUrl:null,providerReference:null,billProviderReference:null,
  fulfillmentReference:'old-purchase',refundReference:null,
  createdAt:'2026-10-17T09:00:00Z',updatedAt:'2026-10-17T09:01:00Z',
);
const live=BillItem(
  billerCode:'MTN',itemCode:'AIRTIME',name:'MTN Airtime',
  amount:'300',currency:'NGN',labelName:null,
);
void main() {
  test('repeat matches only fresh authoritative provider and product IDs',(){
    expect(billingCurrentRepeatProduct([live],old),same(live));
    expect(billingCurrentRepeatProduct([
      const BillItem(billerCode:'GLO',itemCode:'AIRTIME',
        name:'Glo Airtime',amount:'300',currency:'NGN',labelName:null),
    ],old),isNull);
    expect(billingCurrentRepeatProduct([
      const BillItem(billerCode:'MTN',itemCode:'AIRTIME',
        name:'MTN Airtime',amount:'300',currency:'USD',labelName:null),
    ],old),isNull);
  });
  test('old receipt price is never reused for current repeat package',(){
    final chosen=billingCurrentRepeatProduct([live],old);
    expect(chosen,isNotNull);
    expect(chosen!.amount,'300');
    expect(chosen.amount, isNot(old.serviceAmount));
    expect(old.totalAmountKobo,25100);
  });
  test('duplicate ambiguous provider products fail closed',(){
    expect(billingCurrentRepeatProduct([live,live],old),isNull);
  });
}
