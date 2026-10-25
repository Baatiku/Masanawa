import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity_detail_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

AuthUser user(String id)=>AuthUser(id:id,name:'Fan',locale:'en',
  status:'ACTIVE',role:'fan',isNewUser:false,createdAt:'2026-10-25T00:00:00Z');

class _Session extends SessionController {
  @override
  SessionState build() {
    final me=user('fan_a');
    return SessionSignedIn(me,AuthTokens(accessToken:'a',refreshToken:'r',
      accessExpiresIn:600,user:me));
  }
  void switchAccount() {
    final me=user('fan_b');
    state=SessionSignedIn(me,AuthTokens(accessToken:'b',refreshToken:'r2',
      accessExpiresIn:600,user:me));
  }
}

GbActivityItem item(String id,int amount,{String unit='MB',String kind='send'})=>
  GbActivityItem(id:id,operationId:'original_$id',unit:unit,
    amount:amount,kind:kind,status:'completed',createdAt:DateTime.utc(2026,10,25,19));

class _Activity implements GbActivityTransport {
  final requests=<String?>[];
  final units=<String>[];
  final summaryRequests=<int>[];
  final detailRequests=<String>[];
  final responses=<String?,GbActivityPage>{};
  Completer<GbActivityPage>? pending;
  Completer<GbActivityItem>? pendingDetail;
  GbActivityItem? detailResponse;
  bool fail=false;
  bool failSummary=false;
  @override
  Future<GbActivityPage> page({required int limit,String? cursor,
    String unit='all',
    CancelToken? cancellation}) async {
    requests.add(cursor);
    units.add(unit);
    if(fail)throw StateError('offline');
    if(pending!=null && cursor!=null)return pending!.future;
    return responses[cursor]??const GbActivityPage([],null);
  }
  @override
  Future<GbActivityItem> detail({required String entryId,
    CancelToken? cancellation}) async {
    detailRequests.add(entryId);
    if(fail)throw StateError('offline');
    if(pendingDetail!=null)return pendingDetail!.future;
    if(detailResponse==null)throw StateError('missing');
    return detailResponse!;
  }
  @override
  Future<GbActivityPeriodSummary> summary({required int days,
    CancelToken? cancellation}) async {
    summaryRequests.add(days);
    if(fail || failSummary)throw StateError('offline');
    return GbActivityPeriodSummary(days:days,
      fromAt:DateTime.utc(2026,10,25).subtract(Duration(days:days)),
      toAt:DateTime.utc(2026,10,25),
      mb:const GbActivityAmounts(500,200,300),
      ngn:const GbActivityAmounts(500050,10000,490050));
  }
}

void main() {
  test('rejects invented/unsafe Activity units, amounts, and next cursors',(){
    final valid={'items':[{'entryId':'mb:1','operationId':'send_1',
      'unit':'MB','amount':-100,'kind':'send','status':'completed',
      'createdAt':'2026-10-25T19:00:00.000Z'}], 'nextCursor':null};
    expect(GbActivityPage.read(valid).items.single.amount,-100);
    final totals={'periodDays':7,'fromAt':'2026-10-18T00:00:00.000Z',
      'toAt':'2026-10-25T00:00:00.000Z',
      'MB':{'received':500,'spent':200,'net':300},
      'NGN':{'received':500050,'spent':10000,'net':490050}};
    expect(GbActivityPeriodSummary.read(totals,7).mb.net,300);
    expect(()=>GbActivityPeriodSummary.read({...totals,
      'NGN':{'received':500050,'spent':10000,'net':999999}},7),throwsFormatException);
    final row=Map<String,dynamic>.from((valid['items'] as List).single as Map);
    for(final change in [
      {'unit':'MSNW'}, {'amount':0}, {'amount':1.5},
      {'entryId':'other-tenant'}, {'status':'pending'},
    ]) {
      expect(()=>GbActivityPage.read({
        ...valid,'items':[{...row,...change}]
      }),throwsFormatException);
    }
    expect(()=>GbActivityPage.read({...valid,'nextCursor':'has spaces'}),throwsFormatException);
  });

  Future<ProviderContainer> mount(WidgetTester tester,_Activity fake) async {
    tester.view.physicalSize=const Size(320,760);
    tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
    ],child:MaterialApp(
      theme:buildMasanawaTheme(brightness:Brightness.light),
      home:const GbWalletActivityScreen(),
    )));
    await tester.pumpAndSettle();
    return ProviderScope.containerOf(tester.element(find.byType(GbWalletActivityScreen)));
  }

  testWidgets('real posted units, See-all pagination and duplicate replay', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([
        item('mb:1',-500),item('ngn:deposit_1',500050,unit:'NGN',kind:'deposit')],
        'next-page')
      ..responses['next-page']=GbActivityPage([
        item('mb:1',-500),item('mb:2',1000,kind:'ngn_exchange')],null);
    await mount(tester,fake);
    expect(find.text('−500 MB'),findsOneWidget);
    expect(find.text('+₦5,000.50'),findsOneWidget);
    await tester.dragUntilVisible(find.text('Load more activity'),
      find.byType(ListView),const Offset(0,-170));
    expect(find.text('Load more activity'),findsOneWidget);
    await tester.tap(find.text('Load more activity'));
    await tester.pumpAndSettle();
    expect(find.text('+1,000 MB'),findsOneWidget);
    expect(find.text('−500 MB'),findsOneWidget);
    expect(find.text('Load more activity'),findsNothing);
    expect(fake.requests,contains('next-page'));
    expect(tester.takeException(),isNull);
  });

  testWidgets('failed page retains verified entries and retries its own cursor', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-100)],'next-page')
      ..responses['next-page']=GbActivityPage([item('mb:2',200)],null);
    await mount(tester,fake);
    fake.fail=true;
    await tester.dragUntilVisible(find.text('Load more activity'),
      find.byType(ListView),const Offset(0,-170));
    await tester.tap(find.text('Load more activity'));
    await tester.pumpAndSettle();
    expect(find.text('−100 MB'),findsOneWidget);
    expect(find.byTooltip('Retry loading activity'),findsOneWidget);
    fake.fail=false;
    await tester.tap(find.byTooltip('Retry loading activity'));
    await tester.pumpAndSettle();
    expect(fake.requests.where((cursor)=>cursor=='next-page'),hasLength(2));
    expect(find.text('+200 MB'),findsOneWidget);
  });

  testWidgets('account switch hides private rows and invalidates pending continuation', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-100)],'next-page');
    final container=await mount(tester,fake);
    fake.pending=Completer<GbActivityPage>();
    await tester.dragUntilVisible(find.text('Load more activity'),
      find.byType(ListView),const Offset(0,-170));
    await tester.tap(find.text('Load more activity'));
    await tester.pump();
    fake.responses[null]=GbActivityPage([item('mb:2',50)],null);
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    await tester.pump();
    fake.pending!.complete(GbActivityPage([item('mb:foreign',300)],null));
    await tester.pumpAndSettle();
    expect(find.text('+300 MB'),findsNothing);
    expect(find.text('−100 MB'),findsNothing);
    expect(find.text('+50 MB'),findsOneWidget,
      reason:'Only the newly authorized account\'s journal may become visible');
    expect(tester.takeException(),isNull);
  });

  testWidgets('unit chips refetch with server filter and fence an older unit cursor', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-200)],'next-page');
    await mount(tester,fake);
    fake.pending=Completer<GbActivityPage>();
    await tester.dragUntilVisible(find.text('Load more activity'),
      find.byType(ListView),const Offset(0,-170));
    await tester.tap(find.text('Load more activity'));
    await tester.pump();
    fake.responses[null]=GbActivityPage([
      item('ngn:deposit_new',500050,unit:'NGN',kind:'deposit')],null);
    await tester.dragUntilVisible(find.byKey(const ValueKey('activity-unit-NGN')),
      find.byType(ListView),const Offset(0,180));
    await tester.tap(find.byKey(const ValueKey('activity-unit-NGN')));
    await tester.pump();
    fake.pending!.complete(GbActivityPage([item('mb:stale',999)],null));
    await tester.pumpAndSettle();
    expect(fake.units,contains('NGN'));
    expect(fake.units.first,'all');
    expect(find.text('+₦5,000.50'),findsOneWidget);
    expect(find.text('+999 MB'),findsNothing);
    expect(find.text('−200 MB'),findsNothing);
    expect(tester.takeException(),isNull);
  });

  testWidgets('authoritative period summaries separate units and switch periods', (tester) async {
    final fake=_Activity()..responses[null]=const GbActivityPage([],null);
    await mount(tester,fake);
    expect(find.text('Received: +500 MB'),findsOneWidget);
    expect(find.text('Used: −200 MB'),findsOneWidget);
    expect(find.text('Received: +₦5,000.50'),findsOneWidget);
    await tester.tap(find.text('Last 30 days'));
    await tester.pumpAndSettle();
    expect(fake.summaryRequests,[7,30]);
    expect(find.text('Spent: −₦100.00'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('offline totals stay unavailable without erasing verified journal rows; Retry is isolated', (tester) async {
    final fake=_Activity()..failSummary=true
      ..responses[null]=GbActivityPage([item('mb:posted_1',-200)],null);
    await mount(tester,fake);
    expect(find.text('Period totals unavailable. No zero balance is assumed.'),findsOneWidget);
    expect(find.text('−200 MB'),findsOneWidget);
    fake.failSummary=false;
    await tester.tap(find.text('Retry totals'));
    await tester.pumpAndSettle();
    expect(fake.summaryRequests,[7,7]);
    expect(find.text('Received: +500 MB'),findsOneWidget);
    expect(find.text('−200 MB'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('detail reads authoritative exact ID and copies its original reference', (tester) async {
    final fake=_Activity()..detailResponse=item('ngn:fund_1',-128050,
      unit:'NGN',kind:'deposit_reversal');
    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
    ],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),
      home:const GbWalletActivityDetailScreen(entryId:'ngn:fund_1'))));
    await tester.pumpAndSettle();
    expect(fake.detailRequests,['ngn:fund_1']);
    expect(find.text('−₦1,280.50'),findsOneWidget);
    expect(find.text('original_ngn:fund_1'),findsOneWidget);
    expect(find.text('Copy reference'),findsOneWidget);
    await tester.dragUntilVisible(find.textContaining(
      'not proof of external bank settlement'),find.byType(ListView),
      const Offset(0,-150));
    expect(find.textContaining('not proof of external bank settlement'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('detail failures retry and account change discards older private detail', (tester) async {
    final fake=_Activity()..fail=true;
    final container=ProviderContainer(overrides:[
      sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
    ]);
    addTearDown(container.dispose);
    await tester.pumpWidget(UncontrolledProviderScope(container:container,
      child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),
        home:const GbWalletActivityDetailScreen(entryId:'mb:1'))));
    await tester.pumpAndSettle();
    expect(find.text('This transaction could not be verified.'),findsOneWidget);
    fake.fail=false;
    fake.pendingDetail=Completer<GbActivityItem>();
    await tester.tap(find.text('Retry transaction'));
    await tester.pump();
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    // The new account cannot read the old actor's entry. A resolved old HTTP
    // request is still delivered below to exercise the epoch guard.
    fake.fail=true;
    await tester.pump();
    fake.pendingDetail!.complete(item('mb:1',150));
    await tester.pumpAndSettle();
    expect(find.text('+150 MB'),findsNothing);
    expect(find.text('original_mb:1'),findsNothing);
    expect(tester.takeException(),isNull);
  });
}
