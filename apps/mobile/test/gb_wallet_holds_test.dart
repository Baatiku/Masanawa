import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_holds.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_holds_panel.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';

Map<String,Object?> raw(String id,{String state='reserved'})=>{
 'operationId':id,'kind':'connected_call','operationState':state=='reserved'?'reserved':state=='captured'?'completed':'failed',
 'state':state,'reservedMb':250,'heldMb':state=='reserved'?250:0,'chargedMb':state=='captured'?100:0,
 'releasedMb':state=='reserved'?0:state=='captured'?150:250,'purchasedReservedMb':200,'welcomeReservedMb':50,
 'createdAt':'2026-10-27T00:00:00.000001Z','resolvedAt':state=='reserved'?null:'2026-10-27T00:01:00.000000Z',
 'entryIds':state=='captured'?['mb:1','mb:2']:[]};
final at=DateTime.utc(2026,10,28);
GbWalletHold hold(String id,{String state='reserved'})=>GbWalletHold.read(raw(id,state:state));
class _Session extends SessionController {
 @override SessionState build()=>signed('fan_a');
 SessionSignedIn signed(String id){
  final me=AuthUser(id:id,name:id,locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-27T00:00:00Z');
  return SessionSignedIn(me,AuthTokens(accessToken:'access_$id',refreshToken:'refresh_$id',accessExpiresIn:3600,user:me));
 }
 void change()=>state=signed('fan_b');
}
class _Transport implements GbWalletHoldTransport {
 final requests=<({String? cursor,String state})>[],details=<String>[],tokens=<CancelToken?>[];
 Future<GbWalletHoldPage> Function(String?,String)? onPage;
 Future<GbWalletHold> Function(String)? onDetail;
 @override Future<GbWalletHoldPage> page({String? cursor,String state='all',CancelToken? cancellation})async{
  requests.add((cursor:cursor,state:state));tokens.add(cancellation);
  return onPage==null?GbWalletHoldPage([hold('call_1')],null,at):onPage!(cursor,state);
 }
 @override Future<GbWalletHold> detail(String id,{CancelToken? cancellation})async{
  details.add(id);tokens.add(cancellation);return onDetail==null?hold(id,state:'captured'):onDetail!(id);
 }
}
class _Entries implements GbActivityTransport {
 final ids=<String>[];
 @override Future<GbActivityItem> detail({required String entryId,CancelToken? cancellation})async{
  ids.add(entryId);return GbActivityItem(id:entryId,operationId:'call_1',unit:'MB',amount:-50,kind:'connected_call',status:'completed',createdAt:at);
 }
 @override Future<GbActivityPage> page({required int limit,String? cursor,String unit='all',GbActivityFilters filters=gbActivityAllFilters,CancelToken? cancellation})async=>const GbActivityPage([],null);
 @override Future<GbActivityPeriodSummary> summary({required int days,CancelToken? cancellation})=>throw UnimplementedError();
}
Future<ProviderContainer> mount(WidgetTester tester,_Transport transport,{bool detail=false,bool large=false,_Entries? entries})async{
 final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),gbWalletHoldTransportProvider.overrideWithValue(transport),
  if(entries!=null)gbActivityTransportProvider.overrideWithValue(entries)]);
 addTearDown(container.dispose);container.read(sessionProvider);
 final owner=(accountId:'fan_a',authorizationEpoch:container.read(sessionProvider.notifier).authorizationEpoch);
 if(large){tester.view.physicalSize=const Size(320,1000);tester.view.devicePixelRatio=1;addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);}
 Widget body=detail?GbWalletHoldDetailScreen(owner:owner,operationId:'call_1'):Scaffold(body:ListView(children:[GbWalletHoldsPanel(owner:owner)]));
 if(large)body=MediaQuery(data:const MediaQueryData(textScaler:TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:body));
 await tester.pumpWidget(UncontrolledProviderScope(container:container,child:MaterialApp(home:body)));
 await tester.pump();return container;
}
Future<void> reveal(WidgetTester tester,Finder target,{bool up=false})async{
 await tester.dragUntilVisible(target.hitTestable(),find.byType(ListView).first,Offset(0,up?180:-180));
}
void main(){
 test('hold accounting preserves partial release and rejects fabricated charges and receipts',(){
  final captured=hold('call_1',state:'captured');expect(captured.reservedMb,250);expect(captured.chargedMb,100);expect(captured.releasedMb,150);
  expect(captured.createdAt.microsecond,1);expect(hold('call_1',state:'released').chargedMb,0);
  for(final change in [{'chargedMb':251},{'releasedMb':0},{'heldMb':1},{'purchasedReservedMb':9007199254740992},
   {'reservedMb':0},{'state':'delivered'},{'operationState':'pending'},{'resolvedAt':null},
   {'entryIds':['mb:1','mb:1']},{'entryIds':['ngn:foreign']},{'createdAt':'not-a-date'}])
   expect(()=>GbWalletHold.read({...raw('call_1',state:'captured'),...change}),throwsFormatException);
  expect(()=>GbWalletHoldPage.read({'items':[],'nextCursor':'broken cursor','snapshotAt':at.toIso8601String()}),throwsFormatException);
 });
 testWidgets('collapsed history waits for user and fresh detail opens original posted entries',(tester)async{
  final fake=_Transport(),entries=_Entries();await mount(tester,fake,entries:entries);await tester.pumpAndSettle();
  expect(fake.requests,isEmpty);await tester.tap(find.text('Reservations and releases'));await tester.pumpAndSettle();
  expect(fake.requests,[(cursor:null,state:'all')]);expect(find.text('Held 250 MB'),findsOneWidget);
  await tester.tap(find.text('Masana call · Still held'));await tester.pumpAndSettle();
  expect(fake.details,['call_1']);expect(find.text('150 MB'),findsOneWidget);expect(find.text('Preview receipt'),findsNothing);
  await reveal(tester,find.text('View posted entry mb:1'));await tester.tap(find.text('View posted entry mb:1'));await tester.pumpAndSettle();
  expect(entries.ids,['mb:1']);expect(find.text('Transaction details'),findsOneWidget);expect(find.text('−50 MB'),findsOneWidget);
 });
 testWidgets('failed page retries the original cursor and repeated pages cannot loop',(tester)async{
  var fail=true;final fake=_Transport()..onPage=(cursor,state)async{
   if(cursor==null)return GbWalletHoldPage([hold('call_1')],'next_page',at);
   if(fail){fail=false;throw StateError('offline');}return GbWalletHoldPage([hold('call_1')],'next_page',at);
  };
  await mount(tester,fake);await tester.tap(find.text('Reservations and releases'));await tester.pumpAndSettle();
  await reveal(tester,find.text('Load more reservations'));await tester.tap(find.text('Load more reservations'));await tester.pumpAndSettle();
  expect(find.text('Held 250 MB'),findsOneWidget);await reveal(tester,find.text('Could not load more reservations. Retry.'));
  await tester.tap(find.text('Could not load more reservations. Retry.'));await tester.pumpAndSettle();
  expect(fake.requests.map((x)=>x.cursor),[null,'next_page','next_page']);expect(find.text('Load more reservations'),findsNothing);
 });
 testWidgets('changing filter cancels an older page and fences its late result',(tester)async{
  final pending=Completer<GbWalletHoldPage>();final fake=_Transport()..onPage=(cursor,state)async{
   if(cursor!=null)return pending.future;
   return state=='released'?GbWalletHoldPage([hold('released_1',state:'released')],null,at):GbWalletHoldPage([hold('call_1')],'next_page',at);
  };
  await mount(tester,fake);await tester.tap(find.text('Reservations and releases'));await tester.pumpAndSettle();
  await reveal(tester,find.text('Load more reservations'));await tester.tap(find.text('Load more reservations'));await tester.pump();
  final oldToken=fake.tokens.last;await reveal(tester,find.byKey(const ValueKey('hold-state-released')),up:true);
  await tester.tap(find.byKey(const ValueKey('hold-state-released')));await tester.pumpAndSettle();
  expect(oldToken!.isCancelled,isTrue);pending.complete(GbWalletHoldPage([hold('private',state:'captured')],null,at));await tester.pumpAndSettle();
  expect(fake.requests.last.state,'released');expect(find.text('Masana call · Released'),findsOneWidget);expect(find.text('Masana call · Posted debit'),findsNothing);
 });
 testWidgets('revoked reads clear old rows and unavailable never becomes an empty success',(tester)async{
  var reject=false;final fake=_Transport()..onPage=(cursor,state)async{
   if(reject)throw DioException(requestOptions:RequestOptions(path:'/holds'),response:Response(requestOptions:RequestOptions(path:'/holds'),statusCode:403));
   return GbWalletHoldPage([hold('call_1')],null,at);
  };
  await mount(tester,fake);await tester.tap(find.text('Reservations and releases'));await tester.pumpAndSettle();reject=true;
  await reveal(tester,find.text('Refresh reservations'),up:true);await tester.tap(find.text('Refresh reservations'));await tester.pumpAndSettle();
  expect(find.text('Held 250 MB'),findsNothing);expect(find.text('Could not verify reservations. Retry.'),findsOneWidget);
  expect(find.text('No reservations match this filter.'),findsNothing);fake.onPage=(cursor,state)async=>GbWalletHoldPage([],null,at);
  await tester.tap(find.text('Could not verify reservations. Retry.'));await tester.pumpAndSettle();expect(find.text('No reservations match this filter.'),findsOneWidget);
 });
 testWidgets('account replacement cancels and hides a late private list',(tester)async{
  final pending=Completer<GbWalletHoldPage>();final fake=_Transport()..onPage=(cursor,state)=>pending.future;
  final container=await mount(tester,fake);await tester.tap(find.text('Reservations and releases'));await tester.pump();
  (container.read(sessionProvider.notifier) as _Session).change();await tester.pump();expect(fake.tokens.single!.isCancelled,isTrue);
  pending.complete(GbWalletHoldPage([hold('private')],null,at));await tester.pumpAndSettle();
  expect(find.text('Held 250 MB'),findsNothing);expect(find.text('Reservations and releases'),findsNothing);
 });
 testWidgets('detail retry and account replacement are safe at narrow large text RTL',(tester)async{
  var fail=true;final fake=_Transport()..onDetail=(id)async{if(fail){fail=false;throw StateError('offline');}return hold(id);};
  final container=await mount(tester,fake,detail:true,large:true);await tester.pumpAndSettle();await tester.tap(find.text('Retry reservation'));await tester.pumpAndSettle();
  await reveal(tester,find.text('Copy operation reference'));expect(find.text('Preview receipt'),findsNothing);expect(find.textContaining('View posted entry'),findsNothing);
  expect(fake.details,['call_1','call_1']);expect(tester.takeException(),isNull);
  (container.read(sessionProvider.notifier) as _Session).change();await tester.pumpAndSettle();
  expect(find.text('Sign in again to view this reservation.'),findsOneWidget);expect(find.text('250 MB'),findsNothing);
 });
 testWidgets('late private detail cannot survive an account replacement',(tester)async{
  final pending=Completer<GbWalletHold>();final fake=_Transport()..onDetail=(id)=>pending.future;
  final container=await mount(tester,fake,detail:true);await tester.pump();
  (container.read(sessionProvider.notifier) as _Session).change();await tester.pump();
  expect(fake.tokens.single!.isCancelled,isTrue);pending.complete(hold('call_1',state:'captured'));await tester.pumpAndSettle();
  expect(find.text('Sign in again to view this reservation.'),findsOneWidget);expect(find.text('150 MB'),findsNothing);
 });
 testWidgets('a mismatched original operation cannot become a visible detail',(tester)async{
  final fake=_Transport()..onDetail=(id)async=>hold('foreign',state:'captured');
  await mount(tester,fake,detail:true);await tester.pumpAndSettle();
  expect(find.text('Retry reservation'),findsOneWidget);expect(find.text('foreign'),findsNothing);
  expect(find.textContaining('View posted entry'),findsNothing);expect(tester.takeException(),isNull);
 });
 test('hold gateway transport uses only no-store GET reads',()async{
  final dio=Dio(BaseOptions(baseUrl:'https://example.invalid')),requests=<RequestOptions>[];
  dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){requests.add(options);handler.resolve(Response(requestOptions:options,statusCode:200,
   data:options.path.endsWith('/call_1')?{'hold':raw('call_1',state:'captured')}:{'items':[raw('call_1')],'nextCursor':null,'snapshotAt':at.toIso8601String()}));}));
  final container=ProviderContainer(overrides:[apiClientProvider.overrideWithValue(ApiClient(dio:dio))]);addTearDown(container.dispose);
  final transport=container.read(gbWalletHoldTransportProvider);await transport.page(state:'released',cursor:'opaque_cursor');await transport.detail('call_1');
  expect(requests.map((x)=>x.method),['GET','GET']);expect(requests.first.queryParameters,{'limit':10,'state':'released','cursor':'opaque_cursor'});
  expect(requests.every((x)=>x.headers['Cache-Control']=='no-store'),isTrue);
 });
}
