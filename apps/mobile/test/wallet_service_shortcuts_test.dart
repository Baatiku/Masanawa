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
  expect(tester.getCenter(find.text('Send')).dy,tester.getCenter(find.text('Swap')).dy);
  await tester.scrollUntilVisible(find.text('Data bundles'),200,scrollable:find.descendant(of:find.byType(WalletScreen),matching:find.byType(Scrollable)).first);await tester.pumpAndSettle();await tester.tap(find.text('Data bundles'));expect(services,['data']);
  await tester.ensureVisible(find.text('Transactions'));await tester.pumpAndSettle();await tester.tap(find.text('Transactions'));await tester.pumpAndSettle();
  expect(find.text('No transactions yet. Fund your MSNW wallet to get started.'),findsOneWidget);
  await tester.tap(find.text('View all transactions'));await tester.pumpAndSettle();expect(find.text('Transaction history'),findsOneWidget);
  (container.read(sessionProvider.notifier) as _Session).change(const SessionSignedOut());await tester.pumpAndSettle();
  expect(find.text('No transactions yet. Fund your MSNW wallet to get started.'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);
  expect(tester.takeException(),isNull);
 });
}
