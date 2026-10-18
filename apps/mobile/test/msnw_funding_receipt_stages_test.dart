import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_paystack_funding_sheet.dart';

Map<String,dynamic> evidence(String status,{String? issuedMicro}) => {
  'reference':'PAYSTACK-1234',
  'state':'fiat_verified_backing_pending',
  'amountKobo':'12500',
  'obligationState':status,
  if(issuedMicro!=null)'issuedMicro':issuedMicro,
};
void main() {
  test('verified fiat distinguishes pending reserve from merchant bank payout',(){
    expect(msnwVerifiedFundingReceiptMessage(evidence('backing_pending')),
      contains('reserve confirmation pending'));
    expect(msnwVerifiedFundingReceiptMessage(
      evidence('merchant_payout_verified')),contains('issuance pending'));
    expect(msnwVerifiedFundingReceiptMessage(
      evidence('registration_pending')),contains('registration pending'));
  });
  test('issued MSNW requires a matching positive exact issued atomic amount',(){
    expect(msnwVerifiedFundingReceiptMessage(
      evidence('msnw_issued',issuedMicro:'1234567')),
      contains('1.234567 MSNW'));
    expect(()=>msnwVerifiedFundingReceiptMessage(evidence('msnw_issued')),
      throwsFormatException);
    expect(()=>msnwVerifiedFundingReceiptMessage(
      evidence('msnw_issued',issuedMicro:'-99')),throwsFormatException);
  });
  test('forged or unsupported provider response cannot claim issuance',(){
    expect(()=>msnwVerifiedFundingReceiptMessage({
      ...evidence('msnw_issued',issuedMicro:'1000000'),
      'state':'success',
    }),throwsFormatException);
    expect(()=>msnwVerifiedFundingReceiptMessage(
      evidence('unknown')),throwsFormatException);
  });
}
