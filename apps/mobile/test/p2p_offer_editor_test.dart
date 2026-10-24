import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(id: 'buyer', name: 'Buyer', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-18');
    return SessionSignedIn(user, AuthTokens(
      accessToken: 'token', refreshToken: 'refresh',
      accessExpiresIn: 3600, user: user));
  }
}

class _P2pAdapter implements HttpClientAdapter {
  final calls=<RequestOptions>[];
  final edits=<Map<String,dynamic>>[];
  bool uncertain=false,stale=false,accepted=false;
  @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? stream,Future<void>? cancel)async{
    calls.add(o);var status=200;
    dynamic body={'items':[]};
    const ad={'offer_id':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','offer_side':'sell','payment_method_id':'cccccccc-cccc-4ccc-8ccc-cccccccccccc',
      'rate_kobo_per_msnw':'150000','min_micro':'1000000','max_micro':'30000000','remaining_micro':'50000000','state':'active','fee_bps':50,'revision':7,'terms_revision':2};
    if(o.path.contains('/my-offers/page'))body={'items':[ad]};
    if(o.path.endsWith('/edit')&&o.method=='GET')body=ad;
    if(o.path.endsWith('/methods'))body={'items':[{'method_id':'cccccccc-cccc-4ccc-8ccc-cccccccccccc','bank_name':'Own Verified Bank','account_name':'Test Seller','account_number':'2222222222'}]};
    if(o.path.endsWith('/seller-capacity'))body={'availableMicro':'100000000'};
    if(o.path.contains('/offer-edits/by-request/')){status=accepted?200:404;body=accepted?{'offerId':ad['offer_id'],'revision':8}:{};}
    if(o.path.endsWith('/edit')&&o.method=='POST'){
      edits.add(Map<String,dynamic>.from(o.data as Map));
      status=stale?409:uncertain?503:201;
      body=stale?{'error':'p2p.offer_edit_stale'}:uncertain?{'error':'test-unknown'}:{'offerId':ad['offer_id'],'revision':8,'replay':false};
    }
    return ResponseBody.fromString(jsonEncode(body),status,headers:{Headers.contentTypeHeader:['application/json']});
  }
  @override void close({bool force=false}){}
}

Widget _app(_P2pAdapter adapter, {double textScale = 1,bool rtl=false}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return ProviderScope(
    overrides: [sessionProvider.overrideWith(_Session.new)],
    child: MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(textScale)),
        child: Directionality(textDirection:rtl?TextDirection.rtl:TextDirection.ltr,child:child!),
      ),
      home: MsnwP2pScreen(
      dio: dio, baseUrl: 'https://test',
      expectedUserId: 'buyer', currentUserId: () => 'buyer',
      accessToken: () => 'token')),
  );
}


void main(){
  Future<void> edit(WidgetTester t,_P2pAdapter a)async{
    FlutterSecureStorage.setMockInitialValues({});await t.pumpWidget(_app(a));await t.pumpAndSettle();
    await t.tap(find.byTooltip('P2P options'));await t.pumpAndSettle();await t.tap(find.text('My ads').last);await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
    await t.scrollUntilVisible(find.text('Edit ad').hitTestable(),200,scrollable:find.byType(Scrollable).last);await t.tap(find.text('Edit ad'));await t.pumpAndSettle();
  }
  Future<void> review(WidgetTester t)async{
    await t.scrollUntilVisible(find.widgetWithText(TextFormField,'NGN per MSNW').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);
    await t.enterText(find.widgetWithText(TextFormField,'NGN per MSNW'),'1600.01');
    await t.scrollUntilVisible(find.text('Review offer').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);await t.tap(find.text('Review offer'));await t.pumpAndSettle();
  }
  testWidgets('edit reads authoritative revision and reviews exact future terms before writing',(t)async{
    final a=_P2pAdapter();await edit(t,a);
    expect(find.text('Edit sell ad'),findsOneWidget);await review(t);
    expect(find.text('Review ad changes'),findsOneWidget);expect(find.text('Remaining for new orders'),findsOneWidget);expect(a.edits,isEmpty);
    await t.scrollUntilVisible(find.text('Save changes').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);await t.tap(find.text('Save changes'));await t.pumpAndSettle();
    expect(a.edits,hasLength(1));expect(a.edits.single,containsPair('expectedRevision',7));
    expect(a.edits.single,containsPair('rateKoboPerMsnw','160001'));expect(a.edits.single,containsPair('remainingMicro','50000000'));
    expect(a.edits.single.containsKey('inventoryMicro'),isFalse);expect(t.takeException(),isNull);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('uncertain edit recovers original accepted request after reopening without a second POST',(t)async{
    final a=_P2pAdapter()..uncertain=true;await edit(t,a);await review(t);
    await t.scrollUntilVisible(find.text('Save changes').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);await t.tap(find.text('Save changes'));await t.pumpAndSettle();
    expect(a.edits,hasLength(1));await t.pumpWidget(const SizedBox());await t.pumpAndSettle();
    a.accepted=true;await t.pumpWidget(_app(a));await t.pumpAndSettle();
    await t.tap(find.text('Check unfinished ad'));await t.pumpAndSettle();
    expect(a.edits,hasLength(1));expect(a.calls.where((r)=>r.path.contains('/offer-edits/by-request/')).length,2);
    expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
  });
  testWidgets('stale ad prevents blind overwrite and asks to reopen current server state',(t)async{
    final a=_P2pAdapter()..stale=true;await edit(t,a);await review(t);
    await t.scrollUntilVisible(find.text('Save changes').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);await t.tap(find.text('Save changes'));await t.pumpAndSettle();
    expect(find.text('The ad changed. Return to My ads and reopen it before editing.'),findsOneWidget);
    expect(find.text('Save changes'),findsNothing);expect(a.edits,hasLength(1));
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('320dp 200 percent RTL retains edit review and explicit save controls',(t)async{
    t.view.physicalSize=const Size(320,700);t.view.devicePixelRatio=1;
    addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
    FlutterSecureStorage.setMockInitialValues({});final a=_P2pAdapter();
    await t.pumpWidget(_app(a,textScale:2,rtl:true));await t.pumpAndSettle();
    await t.tap(find.byTooltip('P2P options'));await t.pumpAndSettle();await t.tap(find.text('My ads').last);await t.pumpAndSettle();
    await t.scrollUntilVisible(find.textContaining('₦1500.00 / MSNW').first.hitTestable(),200,scrollable:find.byType(Scrollable).last);await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
    await t.scrollUntilVisible(find.text('Edit ad').hitTestable(),200,scrollable:find.byType(Scrollable).last);await t.tap(find.text('Edit ad'));await t.pumpAndSettle();
    await review(t);
    await t.scrollUntilVisible(find.text('Save changes').hitTestable(),200,scrollable:find.descendant(of:find.byType(MsnwP2pSellerOfferForm),matching:find.byType(Scrollable)).first);
    expect(find.text('Save changes').hitTestable(),findsOneWidget);expect(a.edits,isEmpty);expect(t.takeException(),isNull);
    await t.pumpWidget(const SizedBox());
  });

}
