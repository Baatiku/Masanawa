import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/core/wallet_payment_request.dart';
import 'package:masanawa/src/screens/wallet/wallet_payment_entry_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
class _Session extends SessionController{
 @override SessionState build(){
  final user=AuthUser(id:'payer',name:'Payer',locale:'en',status:'ACTIVE',role:'fan',isNewUser:false,createdAt:'2026-10-21T00:00:00Z');
  return SessionSignedIn(user,AuthTokens(accessToken:'fixture',refreshToken:'fixture',accessExpiresIn:900,user:user));
 }
}
void main(){
 setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
 testWidgets('second request on same route replaces first recipient and exact amount',(tester)async{
  final dio=Dio();
  final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),dioProvider.overrideWithValue(dio),apiClientProvider.overrideWithValue(ApiClient(dio:dio))]);
  addTearDown(container.dispose);
  WalletPaymentRequest make(String account,String user,String amount)=>WalletPaymentRequest(accountNumber:account,userId:user,amountAtomic:amount,expiresAt:DateTime.now().toUtc().add(const Duration(hours:1)));
  Widget page(WalletPaymentRequest request)=>UncontrolledProviderScope(container:container,child:MaterialApp(home:WalletPaymentEntryScreen(location:Uri.parse(request.route))));
  await tester.pumpWidget(page(make('8123456789','first','1000001')));await tester.pumpAndSettle();
  List<String> fields()=>tester.widgetList<TextField>(find.byType(TextField)).map((w)=>w.controller?.text??'').toList();
  expect(fields(),containsAll(['8123456789','1.000001']));
  await tester.pumpWidget(page(make('8987654321','second','2000002')));await tester.pumpAndSettle();
  expect(fields(),containsAll(['8987654321','2.000002']));
  expect(fields(),isNot(contains('8123456789')));
 });
}
