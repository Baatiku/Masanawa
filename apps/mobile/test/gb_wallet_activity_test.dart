import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity_detail_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_receipt_actions.dart';
import 'package:masanawa/src/gb_wallet/gb_receipt_document.dart';
import 'package:masanawa/src/gb_wallet/gb_receipt_share.dart';
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

class _Exporter implements GbReceiptExporter {
  final formats=<GbReceiptFormat>[];
  @override Future<void> share(GbReceiptDocument document,GbReceiptFormat format,
    {required bool Function() isCurrent,Rect? origin})async{
    expect(isCurrent(),isTrue);formats.add(format);
    if(formats.length==1)throw StateError('share unavailable');
  }
}

GbActivityItem item(String id,int amount,{String unit='MB',String kind='send',
  DateTime? at})=>
  GbActivityItem(id:id,operationId:'original_$id',unit:unit,
    amount:amount,kind:kind,status:'completed',
    createdAt:at??DateTime.utc(2026,10,25,19));

class _Activity implements GbActivityTransport {
  final requests=<String?>[];
  final units=<String>[];
  final filters=<GbActivityFilters>[];
  final summaryRequests=<int>[];
  final detailRequests=<String>[];
  final responses=<String?,GbActivityPage>{};
  Completer<GbActivityPage>? pending;
  Completer<GbActivityItem>? pendingDetail;
  Completer<GbActivityPeriodSummary>? pendingSummary;
  GbActivityItem? detailResponse;
  bool fail=false;
  bool failSummary=false;
  GbActivityReconciliation? reconciliation;
  @override
  Future<GbActivityPage> page({required int limit,String? cursor,
    String unit='all',
    GbActivityFilters filters=gbActivityAllFilters,
    CancelToken? cancellation}) async {
    requests.add(cursor);
    units.add(unit);
    this.filters.add(filters);
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
    if(pendingSummary!=null)return pendingSummary!.future;
    return GbActivityPeriodSummary(days:days,
      fromAt:DateTime.utc(2026,10,25).subtract(Duration(days:days)),
      toAt:DateTime.utc(2026,10,25),
      mb:const GbActivityAmounts(500,200,300),
      ngn:const GbActivityAmounts(500050,10000,490050),reconciliation:reconciliation);
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

  testWidgets('compact transaction list shows the first deposit without technical clutter', (tester) async {
    tester.view.physicalSize=const Size(390,844);tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    final fake=_Activity()..responses[null]=GbActivityPage([
      item('ngn:deposit_1',10000,unit:'NGN',kind:'deposit')],null);
    await mount(tester,fake);
    expect(find.text('Transactions'),findsOneWidget);
    expect(find.text('Successful'),findsOneWidget);
    expect(find.textContaining('Ref:'),findsNothing);
    expect(find.textContaining('UTC '),findsNothing);
    expect(find.text('Posted activity totals'),findsNothing);
    expect(tester.getBottomRight(find.text('+₦100.00')).dy,lessThan(744));
    final rowRight = tester.getTopRight(
      find.byKey(const ValueKey('activity-ngn:deposit_1'))).dx;
    final amountRight = tester.getTopRight(find.text('+₦100.00')).dx;
    expect(rowRight - amountRight, inInclusiveRange(0, 12),
      reason: 'The amount/status column must reach the right edge of Activity');
    expect(find.text('Filter'),findsOneWidget);
    expect(find.text('Export'),findsOneWidget);
    expect(find.text('Analysis'),findsNothing);
    expect(find.text('Wallet inquiries'),findsNothing);
    expect(find.textContaining('Reservations'),findsNothing);
    await tester.tap(find.text('Filter'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('activity-unit-all')),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('maximum receipt amounts remain readable at narrow large text RTL', (tester) async {
    tester.view.physicalSize=const Size(320,900);tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.dark),
      home:MediaQuery(data:const MediaQueryData(textScaler:TextScaler.linear(2)),
        child:Directionality(textDirection:TextDirection.rtl,child:Scaffold(body:Padding(
          padding:const EdgeInsets.all(16),child:GbActivityTile(
            item:item('ngn:large',-9007199254740991,unit:'NGN',kind:'deposit_reversal'))))))));
    expect(find.text('−₦90,071,992,547,409.91'),findsOneWidget);
    expect(tester.widget<Text>(find.text('−₦90,071,992,547,409.91')).textDirection,TextDirection.ltr);
    expect(find.text('Successful'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('real posted units, See-all pagination and duplicate replay', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([
        item('mb:1',-500),item('ngn:deposit_1',500050,unit:'NGN',kind:'deposit')],
        'next-page')
      ..responses['next-page']=GbActivityPage([
        item('mb:1',-500),item('mb:2',1000,kind:'ngn_exchange')],null);
    await mount(tester,fake);
    await tester.dragUntilVisible(find.text('−500 MB'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('−500 MB'),findsOneWidget);
    await tester.dragUntilVisible(find.text('+₦5,000.50'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('+₦5,000.50'),findsOneWidget);
    await tester.dragUntilVisible(find.text('Load more activity').hitTestable(),
      find.byType(ListView),const Offset(0,-170));
    expect(find.text('Load more activity'),findsOneWidget);
    await tester.tap(find.text('Load more activity'));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('+1,000 MB'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('+1,000 MB'),findsOneWidget);
    await tester.dragUntilVisible(find.text('−500 MB'),
      find.byType(ListView),const Offset(0,160));
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
    await tester.dragUntilVisible(find.text('Load more activity').hitTestable(),
      find.byType(ListView),const Offset(0,-170));
    await tester.tap(find.text('Load more activity'));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('−100 MB'),
      find.byType(ListView),const Offset(0,150));
    expect(find.text('−100 MB'),findsOneWidget);
    await tester.dragUntilVisible(find.byTooltip('Retry loading activity'),
      find.byType(ListView),const Offset(0,-150));
    expect(find.byTooltip('Retry loading activity'),findsOneWidget);
    fake.fail=false;
    await tester.tap(find.byTooltip('Retry loading activity'));
    await tester.pumpAndSettle();
    expect(fake.requests.where((cursor)=>cursor=='next-page'),hasLength(2));
    await tester.dragUntilVisible(find.text('+200 MB'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('+200 MB'),findsOneWidget);
  });

  testWidgets('account switch hides private rows and invalidates pending continuation', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-100)],'next-page');
    final container=await mount(tester,fake);
    fake.pending=Completer<GbActivityPage>();
    await tester.dragUntilVisible(find.text('Load more activity').hitTestable(),
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
    await tester.dragUntilVisible(find.text('+50 MB'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('+50 MB'),findsOneWidget,
      reason:'Only the newly authorized account\'s journal may become visible');
    expect(tester.takeException(),isNull);
  });

  testWidgets('unit chips refetch with server filter and fence an older unit cursor', (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-200)],'next-page');
    await mount(tester,fake);
    fake.pending=Completer<GbActivityPage>();
    await tester.dragUntilVisible(find.text('Load more activity').hitTestable(),
      find.byType(ListView),const Offset(0,-170));
    await tester.tap(find.text('Load more activity'));
    await tester.pump();
    fake.responses[null]=GbActivityPage([
      item('ngn:deposit_new',500050,unit:'NGN',kind:'deposit')],null);
    await tester.tap(find.text('Filter'));
    // A pending pagination request displays an indeterminate progress bar.
    // Do not wait for every animation to settle before selecting a filter.
    await tester.pump();
    await tester.ensureVisible(find.byKey(const ValueKey('activity-unit-NGN')));
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('activity-unit-NGN')));
    await tester.pump();
    fake.pending!.complete(GbActivityPage([item('mb:stale',999)],null));
    await tester.pumpAndSettle();
    expect(fake.units,contains('NGN'));
    expect(fake.units.first,'all');
    await tester.dragUntilVisible(find.text('+₦5,000.50'),
      find.byType(ListView),const Offset(0,-120));
    expect(find.text('+₦5,000.50'),findsOneWidget);
    expect(find.text('+999 MB'),findsNothing);
    expect(find.text('−200 MB'),findsNothing);
    expect(tester.takeException(),isNull);
  });

  testWidgets('purpose, status, direction and date controls always ask server for a new scoped page',
      (tester) async {
    final fake=_Activity()
      ..responses[null]=GbActivityPage([item('mb:1',-200)],null);
    await mount(tester,fake);
    await tester.tap(find.byKey(const ValueKey('activity-toggle-more-filters')));
    await tester.pumpAndSettle();
    Future<void> choose(String key) async {
      final finder=find.byKey(ValueKey(key));
      await tester.ensureVisible(finder);
      await tester.pumpAndSettle();
      await tester.tap(finder);
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(find.byType(DropdownButtonFormField<String>).first);
    await tester.tap(find.byType(DropdownButtonFormField<String>).first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Funding').last);
    await tester.pumpAndSettle();
    expect(fake.filters.last.purpose,'funding');
    await tester.ensureVisible(find.byType(DropdownButtonFormField<String>).last);
    await tester.tap(find.byType(DropdownButtonFormField<String>).last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Reversed').last);
    await tester.pumpAndSettle();
    expect(fake.filters.last.status,'reversed');
    await choose('activity-direction-outgoing');
    expect(fake.filters.last.direction,'outgoing');
    await choose('activity-history-30');
    expect(fake.filters.last.days,'30');
    expect(fake.filters.last.purpose,'funding');
    expect(fake.filters.last.status,'reversed');
    expect(fake.filters.last.direction,'outgoing');
    await tester.ensureVisible(find.text('Clear filters'));
    await tester.tap(find.text('Clear filters'));
    await tester.pumpAndSettle();
    expect(fake.filters.last,gbActivityAllFilters);
    expect(fake.units.last,'all');
    expect(tester.takeException(),isNull);
  });

  testWidgets('exact reference Search is explicit and invalid input never makes a read',
      (tester) async {
    final fake=_Activity()..responses[null]=const GbActivityPage([],null);
    await mount(tester,fake);
    await tester.tap(find.byKey(const ValueKey('activity-toggle-more-filters')));
    await tester.pumpAndSettle();
    final initialRequests=fake.requests.length;
    final input=find.byKey(const ValueKey('activity-reference-input'));
    await tester.ensureVisible(input);
    await tester.enterText(input,"refer_42");
    await tester.pumpAndSettle();
    expect(fake.requests.length,initialRequests,
      reason:'Typing is not a network search or a changed cursor');
    await tester.tap(find.byKey(const ValueKey('activity-reference-submit')));
    await tester.pumpAndSettle();
    expect(fake.filters.last.reference,'refer_42');
    await tester.enterText(input,"evil' OR 1=1");
    await tester.tap(find.byKey(const ValueKey('activity-reference-submit')));
    await tester.pumpAndSettle();
    expect(fake.filters.last.reference,'refer_42');
    expect(find.textContaining('Use letters, numbers'),findsOneWidget);
    tester.testTextInput.hide();
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('No posted activity matches these filters.'),
      find.byType(ListView),const Offset(0,-180));
    expect(find.text('No posted activity matches these filters.'),findsOneWidget);
    await tester.dragUntilVisible(find.text('Clear filters and show all').hitTestable(),
      find.byType(ListView),const Offset(0,-160));
    await tester.tap(find.text('Clear filters and show all'));
    await tester.pumpAndSettle();
    expect(fake.filters.last.reference,'');
    await tester.dragUntilVisible(find.text('No posted MB or NGN activity yet.'),
      find.byType(ListView),const Offset(0,-160));
    expect(find.text('No posted MB or NGN activity yet.'),findsOneWidget);
  });

  testWidgets('history dates group verified entries across loaded pages without duplicate rows',
      (tester) async {
    tester.view.physicalSize=const Size(800,1600);tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    final fake=_Activity()
      ..responses[null]=GbActivityPage([
        item('mb:1',-100),item('mb:2',200)],'next-page')
      ..responses['next-page']=GbActivityPage([
        item('mb:2',200),item('mb:3',-30,at:DateTime.utc(2026,10,24,19))],null);
    await mount(tester,fake);
    tester.view.physicalSize=const Size(800,1600);
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('Load more activity').hitTestable(),
      find.byType(ListView),const Offset(0,-180));
    await tester.tap(find.text('Load more activity'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('activity-mb:3')),findsOneWidget);
    expect(find.text('3 verified entries loaded'),findsNothing);
    expect(find.byWidgetPredicate((widget)=>widget.key is ValueKey<String> &&
      (widget.key! as ValueKey<String>).value.startsWith('activity-date-')),
      findsNWidgets(2));
    expect(find.text('+200 MB'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('transactions omit legacy summaries while retaining server journal rows', (tester) async {
    final fake=_Activity()..failSummary=true
      ..responses[null]=GbActivityPage([item('mb:posted_1',-200)],null);
    await mount(tester,fake);
    expect(find.text('Received: +500 MB'),findsNothing);
    expect(find.text('Period totals unavailable. No zero balance is assumed.'),findsNothing);
    expect(find.text('Analysis'),findsNothing);
    expect(fake.summaryRequests,isEmpty);
    expect(find.text('−200 MB'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('failed transaction refresh keeps only the current verified journal and filter/export', (tester) async {
    final fake=_Activity()..responses[null]=GbActivityPage([
      item('mb:verified',-125)],null);
    final container=await mount(tester,fake);
    expect(find.text('−125 MB'),findsOneWidget);
    fake.fail=true;
    final owner=(accountId:'fan_a',authorizationEpoch:
      container.read(sessionProvider.notifier).authorizationEpoch);
    container.invalidate(gbActivityPageProvider((owner:owner,limit:20,
      unit:'all',filters:gbActivityAllFilters)));
    await tester.pumpAndSettle();
    expect(find.text('−125 MB'),findsOneWidget);
    expect(find.text('Filter'),findsOneWidget);
    expect(find.text('Export'),findsOneWidget);
    expect(find.textContaining('Check your connection'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  test('balance reconciliation refuses fabricated matches, unsafe amounts and fake initialized zero',(){
    final raw={'periodDays':7,'fromAt':'2026-10-18T00:00:00.000Z','toAt':'2026-10-25T00:00:00.000Z',
      'MB':{'received':500,'spent':200,'net':300},'NGN':{'received':0,'spent':190000,'net':-190000}};
    final mb={'state':'matched','opening':700,'closing':1000,'recordedBalance':1000,'reserved':250,'available':750,'debt':0};
    final ngn={'state':'matched','opening':100000,'closing':-90000,'recordedBalance':-90000,'reserved':0,'available':0,'debt':90000};
    final valid={...raw,'reconciliation':{'MB':mb,'NGN':ngn}};
    final parsed=GbActivityPeriodSummary.read(valid,7);
    expect(parsed.reconciliation!.mb.reserved,250);expect(parsed.reconciliation!.ngn.debt,90000);
    for(final change in [
      {'closing':999},{'recordedBalance':999},{'available':751},{'debt':1},
      {'state':'uninitialized'},{'state':'bank_settled'},{'reserved':-1},
      {'opening':9007199254740992},{'opening':-9223372036854775808},{'recordedBalance':null},
    ])expect(()=>GbActivityPeriodSummary.read({...raw,'reconciliation':{'MB':{...mb,...change},'NGN':ngn}},7),throwsFormatException);
    final mismatch=GbActivityPeriodSummary.read({...raw,'reconciliation':{'MB':{...mb,'state':'mismatch','recordedBalance':1001,'available':751},'NGN':ngn}},7);
    expect(mismatch.reconciliation!.mb.state,'mismatch');
    expect(GbActivityPeriodSummary.read(raw,7).reconciliation,isNull);
    final zero={'received':0,'spent':0,'net':0};
    final uninitialized={'state':'uninitialized','opening':0,'closing':0,'recordedBalance':null,'reserved':null,'available':null,'debt':null};
    expect(GbActivityPeriodSummary.read({...raw,'MB':zero,'NGN':zero,
      'reconciliation':{'MB':uninitialized,'NGN':uninitialized}},7).reconciliation!.mb.available,isNull);
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

  testWidgets('receipt preview re-reads authority and discards a completed render after account switch', (tester)async{
    final fake=_Activity()..detailResponse=item('mb:1',1050,kind:'ngn_exchange');
    final pending=Completer<GbReceiptDocument>();
    final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
      gbReceiptDocumentBuilderProvider.overrideWithValue((_)=>pending.future)]);
    addTearDown(container.dispose);
    await tester.pumpWidget(UncontrolledProviderScope(container:container,
      child:const MaterialApp(home:GbWalletActivityDetailScreen(entryId:'mb:1'))));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('Preview receipt'),find.byType(ListView),const Offset(0,-150));
    await tester.tap(find.text('Preview receipt'));await tester.pump();await tester.pump();
    expect(fake.detailRequests,['mb:1','mb:1']);
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    pending.complete(GbReceiptDocument(pngPages:[],pdf:Uint8List(0)));
    await tester.pumpAndSettle();
    expect(find.text('Wallet receipt'),findsNothing);
    expect(find.text('Share PDF'),findsNothing);
  });

  testWidgets('receipt preview wraps RTL large text and retries a failed native share', (tester)async{
    tester.view.physicalSize=const Size(320,900);tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    final fake=_Activity()..detailResponse=item('mb:1',1050);
    final exporter=_Exporter();
    final document=GbReceiptDocument(pngPages:[base64Decode('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAwMCAO+aD1sAAAAASUVORK5CYII=')],pdf:Uint8List.fromList([1]));
    await tester.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
      gbReceiptDocumentBuilderProvider.overrideWithValue((_)async=>document),
      gbReceiptExporterProvider.overrideWithValue(exporter)],child:MaterialApp(
        home:MediaQuery(data:const MediaQueryData(textScaler:TextScaler.linear(2)),
          child:Directionality(textDirection:TextDirection.rtl,
            child:const GbWalletActivityDetailScreen(entryId:'mb:1'))))));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('Preview receipt').hitTestable(),find.byType(ListView),const Offset(0,-180));
    await tester.tap(find.text('Preview receipt'));await tester.pumpAndSettle();
    expect(fake.detailRequests,['mb:1','mb:1']);
    expect(find.bySemanticsLabel('Masanawa receipt page'),findsOneWidget);
    await tester.tap(find.text('Share PDF'));await tester.pumpAndSettle();
    expect(find.text('Receipt sharing failed. Try again.'),findsOneWidget);
    await tester.tap(find.text('Share PNG'));await tester.pumpAndSettle();
    expect(exporter.formats,[GbReceiptFormat.pdf,GbReceiptFormat.png]);
    await tester.tap(find.byTooltip('Close receipt'));await tester.pumpAndSettle();
    expect(find.text('Wallet receipt'),findsNothing);expect(tester.takeException(),isNull);
  });

  testWidgets('offline fresh receipt read refuses cached export and supports retry', (tester)async{
    final fake=_Activity()..detailResponse=item('mb:1',1050);var renders=0;
    await tester.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(_Session.new),
      gbActivityTransportProvider.overrideWithValue(fake),
      gbReceiptDocumentBuilderProvider.overrideWithValue((_)async{
        renders++;throw StateError('renderer unavailable');
      })],child:const MaterialApp(home:GbWalletActivityDetailScreen(entryId:'mb:1'))));
    await tester.pumpAndSettle();fake.fail=true;
    await tester.dragUntilVisible(find.text('Preview receipt').hitTestable(),find.byType(ListView),const Offset(0,-150));
    await tester.tap(find.text('Preview receipt'));await tester.pumpAndSettle();
    expect(renders,0);expect(find.text('Share PDF'),findsNothing);
    expect(find.text('Receipt could not be verified. Retry when online.'),findsOneWidget);
    fake.fail=false;await tester.tap(find.text('Preview receipt'));await tester.pumpAndSettle();
    expect(renders,1);expect(fake.detailRequests.length,3);
    expect(find.text('Share PDF'),findsNothing);expect(tester.takeException(),isNull);
  });

  test('receipt metadata preserves cash/MB units, reversals and safe counterparties',(){
    final row=GbActivityItem.read({'entryId':'ngn:exchange_1','operationId':'exchange_1',
      'unit':'NGN','amount':-500050,'kind':'exchange','status':'completed',
      'createdAt':'2026-10-27T12:00:00.000Z','details':{'counterpartyKind':'service',
        'exchangedMb':1050,'exchangeKobo':500050,'rateVersion':'rate-v1',
        'reversesOperationId':'original_1'}});
    expect(row.amountLabel,'−₦5,000.50');
    expect(row.details!.exchangedMb,1050);expect(row.details!.rateVersion,'rate-v1');
    expect(row.details!.counterpartyLabel,'Masanawa');
    expect(()=>GbActivityDetails.read({'exchangedMb':true}),throwsFormatException);
    expect(()=>GbActivityDetails.read({'counterpartyId':'private@example.test'}),throwsFormatException);
    expect(()=>GbActivityDetails.read({'counterpartyKind':'bank_account'}),throwsFormatException);
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
