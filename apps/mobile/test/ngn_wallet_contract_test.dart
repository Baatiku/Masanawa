import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/ngn_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/ngn_wallet/gb_data_catalogue.dart';
import 'package:masanawa/src/ngn_wallet/gb_data_pending_store.dart';
import 'package:masanawa/src/ngn_wallet/ngn_holds.dart';
void main(){
 test('Naira input is exact kobo and rejects unsupported precision',(){
  expect(parseNgnInput('2'),200);expect(parseNgnInput('1.01'),101);expect(parseNgnInput('0.01'),1);expect(parseNgnInput('١٢٫٥٠'),1250);
  for(final text in ['-1','1.001','NaN','1e3','1,000','0','10000000.01']){expect(parseNgnInput(text),isNull,reason:text);}
  expect(ngnMoney(100001),'₦1,000.01');expect(ngnInput(101),'1.01');
 });
 test('cash summary rejects legacy units and retains reversal holds',(){
  Map<String,dynamic> summary(int total,int available,int held,{bool frozen=false})=>{'balance':{'currency':'NGN','unit':'kobo','totalKobo':total,'availableKobo':available,'reservedKobo':held,'frozen':frozen}};
  expect(GbWalletBalance.fromJson(summary(10000,9800,200)).availableKobo,9800);
  expect(()=>GbWalletBalance.fromJson({'balance':{'unit':'MB','availableMb':1000}}),throwsFormatException);
  expect(()=>GbWalletBalance.fromJson(summary(10000,10000,200)),throwsFormatException);
  expect(GbWalletBalance.fromJson(summary(100,0,200,frozen:true)).reservedKobo,200);
 });
 test('telecom size is distinct from price and journal is currency bound',(){
  final row=<String,dynamic>{'currency':'NGN','unit':'kobo','id':'BILL:ITEM','version':'v1','network':'MTN','allowanceGb':1,'allowanceMb':1000,'costKobo':25000,'validityDays':7,'providerAmount':'250.00','expiresAt':DateTime.now().toUtc().add(const Duration(hours:1)).toIso8601String()};
  final bundle=GbVerifiedBundle.fromJson(row);expect(bundle.allowanceLabel,'1 GB');expect(bundle.costKobo,25000);
  expect(()=>GbVerifiedBundle.fromJson({...row,'unit':'MB'}),throwsFormatException);
  expect(()=>GbVerifiedBundle.fromJson({...row,'allowanceMb':25000}),throwsFormatException);
  final intent={'currency':'NGN','unit':'kobo','idempotencyKey':'ngnbuy_${'a'*48}','bundleId':'BILL:ITEM','version':'v1','recipientPhone':'+2348031234567','costKobo':25000};
  expect(GbPendingDataPurchase.fromJson(intent).costKobo,25000);
  expect(()=>GbPendingDataPurchase.fromJson({...intent,'currency':'MB'}),throwsFormatException);
 });
 test('hold release is not a second posted payment',(){
  final hold={'currency':'NGN','unit':'kobo','operationId':'ngncall_original','kind':'connected_call','state':'captured','reservedKobo':1000,'heldKobo':0,'chargedKobo':200,'releasedKobo':800};
  expect(NgnHold.read(hold).chargedKobo,200);expect(()=>NgnHold.read({...hold,'releasedKobo':801}),throwsFormatException);
 });
}
