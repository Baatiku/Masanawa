import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
class _Api extends Mock implements ApiClient {}
const _user=AuthUser(id:'account-a',name:'Fan',locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-12');
const _tokens=AuthTokens(accessToken:'test',refreshToken:'refresh',accessExpiresIn:3600,user:_user);
class _Session extends SessionController {
 @override SessionState build()=>const SessionSignedIn(_user,_tokens);
 void change(SessionState value)=>state=value;
}
class _Adapter implements HttpClientAdapter {
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? c)async=>ResponseBody.fromString(
  o.path.endsWith('/custody')?'{"asset":"MSNW","scope":"platform_custody","availableMicro":"0","reservedMicro":"0"}':
  o.path.endsWith('/v1/wallet/account')?'{"accountNumber":"8123456789"}':
  o.path.contains('/crypto/history')?'{"intents":[]}':o.path.contains('/v1/wallet?')?'{"entries":[]}':'{"items":[]}',200,headers:{Headers.contentTypeHeader:[Headers.jsonContentType]});
 @override void close({bool force=false}){}
}
void main(){
 testWidgets('Wallet home connects zero balance, service rows and full history at phone width',(tester)async{
  tester.view.physicalSize=const Size(360,800);tester.view.devicePixelRatio=1;
  addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
  final dio=Dio()..httpClientAdapter=_Adapter();final api=_Api();when(()=>api.accessToken).thenReturn('test');
  final container=ProviderContainer(overrides:[dioProvider.overrideWithValue(dio),apiClientProvider.overrideWithValue(api),sessionProvider.overrideWith(_Session.new)]);
  addTearDown(container.dispose);
  final services=<String>[];
  await tester.pumpWidget(UncontrolledProviderScope(container:container,child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:WalletScreen(embeddedInShell:true,onOpenBillingService:services.add))));
  await tester.pump(const Duration(seconds: 1));expect(find.text('0 MSNW'),findsOneWidget);expect(find.text('Services'),findsNothing);
  expect(tester.getCenter(find.text('Send')).dy,lessThan(tester.getCenter(find.text('Swap')).dy));
  await tester.scrollUntilVisible(find.text('Data'),200,scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);await tester.pumpAndSettle();await tester.tap(find.text('Data'));expect(services,['data']);
  await tester.ensureVisible(find.text('Transaction history'));await tester.pumpAndSettle();await tester.tap(find.text('Transaction history'));await tester.pumpAndSettle();
  expect(find.text('No transactions yet. Fund your MSNW wallet to get started.'),findsOneWidget);
  (container.read(sessionProvider.notifier) as _Session).change(const SessionSignedOut());await tester.pumpAndSettle();
  expect(find.text('No transactions yet. Fund your MSNW wallet to get started.'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);
  expect(tester.takeException(),isNull);
 });

 testWidgets('WLT01 320dp and 200 percent text keeps all ten vertical cards actionable',(tester)async{
  tester.view.physicalSize=const Size(320,640);
  tester.view.devicePixelRatio=1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  final dio=Dio()..httpClientAdapter=_Adapter();
  final api=_Api();when(()=>api.accessToken).thenReturn('test');
  final container=ProviderContainer(overrides:[
    dioProvider.overrideWithValue(dio),
    apiClientProvider.overrideWithValue(api),
    sessionProvider.overrideWith(_Session.new),
  ]);
  addTearDown(container.dispose);
  final chosen=<String>[];
  await tester.pumpWidget(UncontrolledProviderScope(
    container:container,child:MaterialApp(
      theme:buildMasanawaTheme(brightness:Brightness.light),
      builder:(context,child)=>MediaQuery(
        data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(2)),
        child:child!),
      home:WalletScreen(embeddedInShell:true,onOpenBillingService:chosen.add),
    )));
  await tester.pump(const Duration(seconds:1));
  final root=find.byType(WalletScreen);
  final scroll=find.descendant(of:root,matching:find.byType(Scrollable)).first;
  expect(find.byType(IndexedStack),findsNothing);
  expect(find.byKey(const ValueKey('wallet-balance-card')),findsOneWidget);
  expect(find.text('Fund'),findsNothing);
  expect(find.text('Bills & services'),findsNothing);
  // The verified internal receiving account and Deposit stay inside one card,
  // not inside a floating independent account badge.
  await tester.scrollUntilVisible(find.text('Deposit'),-100,scrollable:scroll);
  expect(find.byTooltip('Copy Masanawa account number'),findsOneWidget);
  expect(find.text('8123 456 789'),findsOneWidget);
  final cards=['withdraw','send','swap','p2p','airtime','data','tv','electricity'];
  for(final name in cards){
    final key=find.byKey(ValueKey('wallet-action-$name'));
    await tester.scrollUntilVisible(key,120,scrollable:scroll);
    expect(key,findsOneWidget);
    expect(tester.takeException(),isNull);
  }
  for(final name in ['my-assets','transaction-history']){
    final key=find.byKey(ValueKey('wallet-composite-$name'));
    await tester.scrollUntilVisible(key,170,scrollable:scroll);
    expect(key,findsOneWidget);
    expect(tester.takeException(),isNull);
  }
  await tester.scrollUntilVisible(find.text('Airtime'),-140,scrollable:scroll);
  await tester.pumpAndSettle();
  // After traversing all ten cards, a 200%-scaled row may sit precisely on
  // the top viewport edge; scroll it fully into the tappable area.
  await tester.drag(scroll,const Offset(0,110));
  await tester.pumpAndSettle();
  expect(find.text('Airtime').hitTestable(),findsOneWidget);
  await tester.tap(find.text('Airtime'));
  expect(chosen,['airtime']);
  await tester.pump();
  expect(tester.takeException(),isNull);
 });

}
