import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_identity_enrollment.dart';
import 'package:masanawa/src/finance/msnw_paystack_funding_sheet.dart';
import 'package:masanawa/src/finance/wallet_flow_page.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Adapter implements HttpClientAdapter{
 _Adapter(this.handle);final Map<String,dynamic> Function(RequestOptions) handle;
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? cancel)async=>ResponseBody.fromString(jsonEncode(handle(o)),200,headers:{Headers.contentTypeHeader:['application/json']});
 @override void close({bool force=false}){}
}
class _Session extends SessionController{
 @override SessionState build(){const user=AuthUser(id:'owner',name:'Amina Yusuf',locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-18T00:00:00Z');return SessionSignedIn(user,AuthTokens(accessToken:'owner-token',refreshToken:'refresh',accessExpiresIn:3600,user:user));}
}
class _Crypto extends CryptoWalletController{
 @override Future<CryptoWalletSnapshot> build()async=>const CryptoWalletSnapshot(capabilities:CryptoCapabilities(deposits:true,withdrawals:true,conversions:false,fiatOnRamp:false,fiatCurrencies:[],fiatSettlementProviderCode:null),depositRoutes:[CryptoRoute(providerCode:'USDTTRC20',asset:'USDT',network:'Tron'),CryptoRoute(providerCode:'USDCMATIC',asset:'USDC',network:'Polygon')],conversionRoutes:[],history:[],balances:{'USDTTRC20':'12.5','USDCMATIC':'0'},selectedProviderCode:'USDTTRC20');
}
void main(){
 testWidgets('funding displays one profile link and no inline identity or description',(t)async{
  final dio=Dio()..httpClientAdapter=_Adapter((o)=>{'state':'identity_verification_required'});
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwPaystackFundingSheet(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token'))));await t.pumpAndSettle();
  expect(find.text('Bank transfer'),findsOneWidget);expect(find.text('Complete identity details'),findsOneWidget);expect(find.byType(MsnwIdentityEnrollment),findsNothing);expect(find.byType(TextField),findsNothing);expect(find.textContaining('reconciliation'),findsNothing);
 });
 testWidgets('identity prefills collected fields and submits missing details once with selected bank',(t)async{
  Map<String,dynamic>? submitted;var ready=false;
  final dio=Dio()..httpClientAdapter=_Adapter((o){
   if(o.path.endsWith('/banks'))return {'banks':[{'code':'007','name':'Test Bank'}]};
   if(o.method=='POST'){submitted=Map<String,dynamic>.from(o.data as Map);ready=true;return {'state':'identity_validation_pending'};}
   return {'state':ready?'identity_validation_pending':'identity_details_required','profile':{'legalName':'Amina Yusuf','email':'amina@example.com','phone':'','legalNameEditable':!ready,'emailEditable':false,'phoneEditable':!ready}};
  });
  await t.pumpWidget(MaterialApp(home:Scaffold(body:ListView(children:[MsnwIdentityEnrollment(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token',onQualified:(){})]))));await t.pumpAndSettle();
  final fields=find.byType(TextFormField);
  expect(t.widget<TextFormField>(fields.at(0)).controller!.text,'Amina Yusuf');expect(t.widget<EditableText>(find.descendant(of:fields.at(1),matching:find.byType(EditableText))).readOnly,isTrue);
  await t.enterText(fields.at(2),'+2348012345678');await t.enterText(fields.at(3),'22222222222');await t.enterText(fields.at(4),'0123456789');
  await t.ensureVisible(find.byType(WalletSelectionField<String>));await t.tap(find.byType(WalletSelectionField<String>));await t.pumpAndSettle();
  expect(find.byType(PopupMenuButton),findsNothing);expect(find.text('Search'),findsOneWidget);
  await t.tap(find.text('Test Bank'));await t.pumpAndSettle();
  await t.ensureVisible(find.byType(CheckboxListTile));await t.tap(find.byType(CheckboxListTile));await t.pump();
  await t.ensureVisible(find.text('Submit details'));await t.tap(find.text('Submit details'));await t.pumpAndSettle();
  expect(submitted,{'consent':true,'bvn':'22222222222','accountNumber':'0123456789','bankCode':'007','legalName':'Amina Yusuf','phone':'+2348012345678'});
  expect(find.text('Verification pending'),findsOneWidget);expect(find.text('22222222222'),findsNothing);expect(find.byType(CheckboxListTile),findsNothing);
 });
 testWidgets('wallet uses primary brand with real multi-asset balances and compact services at 360px',(t)async{
  t.view.physicalSize=const Size(360,800);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  final dio=Dio()..httpClientAdapter=_Adapter((o)=>{'asset':'MSNW','scope':'platform_custody','availableMicro':'0','reservedMicro':'2000000'});
  final api=ApiClient(dio:dio)..accessToken='owner-token';
  await t.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(_Session.new),dioProvider.overrideWithValue(dio),apiClientProvider.overrideWithValue(api),cryptoWalletProvider.overrideWith(_Crypto.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const WalletScreen(embeddedInShell:true))));await t.pump(const Duration(seconds: 1));
  final card=t.widget<Container>(find.byKey(const ValueKey('wallet-balance-card')));
  final context=t.element(find.byKey(const ValueKey('wallet-balance-card')));
  expect((card.decoration as BoxDecoration).color,context.masanawa.brand);
  expect(find.text('0 MSNW'),findsOneWidget);expect(find.text('2 MSNW reserved'),findsOneWidget);
  await t.scrollUntilVisible(find.text('USDT'), 140, scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);await t.pump(const Duration(milliseconds: 200));
  expect(find.text('USDT'),findsOneWidget);expect(find.text('Provider-reported: 12.5 (custody unverified)'),findsOneWidget);expect(find.text('Tron'),findsOneWidget);
  await t.scrollUntilVisible(find.text('USDC'), 110, scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);
  expect(find.text('USDC'),findsOneWidget);expect(find.text('Provider-reported: 0 (custody unverified)'),findsOneWidget);expect(find.text('Polygon'),findsOneWidget);
  await t.scrollUntilVisible(find.text('Data bundles'),200,scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);await t.pumpAndSettle();
  expect(find.text('Data bundles'),findsOneWidget);expect(find.text('Transactions'),findsOneWidget);expect(t.takeException(),isNull);
  await t.scrollUntilVisible(find.byTooltip('Hide balance'), -160, scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);
  await t.pump(const Duration(milliseconds: 100));await t.tap(find.byTooltip('Hide balance'));await t.pump();expect(find.text('12.5'),findsNothing);expect(find.text('0 MSNW'),findsNothing);expect(find.text('••••'),findsNWidgets(3));
 });
}
