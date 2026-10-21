import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/billing_models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/billing/billing_screen.dart';

class Catalog extends ApiClient {
  Catalog({this.historyFails=false,this.onlyAirtel=false,this.otherOperator=false}):super(dio:Dio());
  final bool historyFails,onlyAirtel,otherOperator;
  final requested=<String>[];
  @override Future<List<BillCategory>> billingCategories() async=>const [BillCategory(code:'MOBILE_DATA',name:'Data Bundles',description:null,country:'NG')];
  @override Future<List<BillingCheckoutView>> billingHistory({int limit=20}) async {if(historyFails)throw Exception('history unavailable');return [];}
  @override Future<List<BillBiller>> billingBillers(String code)async=>[if(!onlyAirtel)const BillBiller(billerCode:'mtn',name:'MTN'),const BillBiller(billerCode:'airtel',name:'Airtel'),if(otherOperator)const BillBiller(billerCode:'regional',name:'Regional Operator')];
  @override Future<List<BillItem>> billingItems(String code)async{requested.add(code);return [BillItem(billerCode:code,itemCode:'monthly',name:'${code.toUpperCase()} 2GB 30 days',amount:'1000',currency:'NGN',labelName:null)];}
}
Future<void> open(WidgetTester t,Catalog api)async{
 t.view.physicalSize=const Size(360,800);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
 await t.pumpWidget(ProviderScope(overrides:[apiClientProvider.overrideWithValue(api)],child:const MaterialApp(home:BillingScreen(initialService:'data'))));await t.pumpAndSettle();
}
void main(){
 test('phone validation accepts local and international forms without guessing an operator',(){expect(normalizeNigerianBillingPhone('+234 803 123 4567'),'08031234567');expect(normalizeNigerianBillingPhone('08031234567'),'08031234567');expect(normalizeNigerianBillingPhone('abc08031234567'),isNull);expect(normalizeNigerianBillingPhone('12345678901'),isNull);expect(normalizeNigerianBillingPhone('0803123456'),isNull);});
 testWidgets('catalogue remains usable when receipts fail',(t)async{final api=Catalog(historyFails:true);await open(t,api);expect(api.requested,isEmpty);await t.tap(find.text('MTN'));await t.pumpAndSettle();expect(find.text('MTN 2GB 30 days'),findsOneWidget);expect(api.requested,['mtn']);expect(t.takeException(),isNull);});
 testWidgets('unavailable operator never falls back to a different provider',(t)async{final api=Catalog(onlyAirtel:true);await open(t,api);expect(api.requested,isEmpty);expect(find.text('AIRTEL 2GB 30 days'),findsNothing);});
 testWidgets('manual operator selection survives ported number typing',(t)async{final api=Catalog();await open(t,api);await t.tap(find.text('Airtel'));await t.pumpAndSettle();await t.enterText(find.byType(TextField).first,'08031234567');await t.pumpAndSettle();expect(api.requested.last,'airtel');expect(find.text('AIRTEL 2GB 30 days'),findsOneWidget);});
 testWidgets('prefix suggestion cannot silently select an operator',(t)async{final api=Catalog();await open(t,api);await t.enterText(find.byType(TextField).first,'08031234567');await t.pumpAndSettle();expect(find.text('Prefix suggests MTN. Confirm your current operator below.'),findsOneWidget);expect(api.requested,isEmpty);await t.tap(find.text('Airtel'));await t.pumpAndSettle();expect(api.requested,['airtel']);expect(find.text('AIRTEL 2GB 30 days'),findsOneWidget);});
 testWidgets('provider catalog can offer an operator outside the four shortcuts',(t)async{final api=Catalog(otherOperator:true);await open(t,api);await t.tap(find.text('Current operator from provider catalog'));await t.pumpAndSettle();await t.tap(find.text('Regional Operator').last);await t.pumpAndSettle();expect(api.requested,['regional']);expect(find.text('REGIONAL 2GB 30 days'),findsOneWidget);});
 testWidgets('monthly packages do not also appear as daily',(t)async{final api=Catalog();await open(t,api);await t.tap(find.text('MTN'));await t.pumpAndSettle();await t.tap(find.text('Daily'));await t.pumpAndSettle();expect(find.text('MTN 2GB 30 days'),findsNothing);expect(find.text('Instant Activation'),findsNothing);});
}
