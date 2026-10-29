import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_api.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_sheet.dart';

class _MemoryJournal implements StatusPromotionJournal {
  String? pending;
  @override Future<String?> read() async => pending;
  @override Future<void> write(String? data) async { pending = data; }
}

class _MemoryDraftStore implements StatusPromotionDraftStore {
  final drafts=<String,StatusPromotionDraft>{};
  String _key(String? postId)=>postId??'new-post';
  @override Future<StatusPromotionDraft?> read(String? postId) async =>
    drafts[_key(postId)];
  @override Future<void> write(String? postId,StatusPromotionDraft draft) async {
    drafts[_key(postId)]=draft;
  }
  @override Future<void> clear(String? postId) async {
    drafts.remove(_key(postId));
  }
}

class _QuoteStub extends StatusPromotionApi {
  _QuoteStub() : super(dio:Dio(),accessToken:() async => 'synthetic',
    ownerAccount:'fan-one',currentAccount:()=> 'fan-one',
    journal:_MemoryJournal());

  final requests=<({String? postId,String? body,int views})>[];
  int confirmations=0;
  bool funded=false;
  Future<StatusPromotionCampaign>? heldConfirmation;

  @override Future<StatusPromotionQuote> quote({String? postId,String? body,
      required int targetViews}) async {
    requests.add((postId:postId,body:body,views:targetViews));
    return StatusPromotionQuote(id:'quote-${requests.length}',
      targetViews:targetViews,totalMb:targetViews,
      eligibleMb:funded?1000:0,insufficient:!funded,
      expiresAt:DateTime.now().add(const Duration(minutes:5)));
  }

  @override Future<StatusPromotionCampaign> confirm(StatusPromotionQuote quote) async {
    confirmations++;
    if(heldConfirmation!=null)return heldConfirmation!;
    return StatusPromotionCampaign(id:'campaign',quoteId:quote.id,
      postId:'post',state:'pending_review',kind:'human_primary',
      targetViews:quote.targetViews,deliveredViews:0,
      remainingViews:quote.targetViews);
  }
}

void main() {
  testWidgets('recharge return retains draft and views, refreshes quote, never auto-confirms',
      (tester) async {
    final api=_QuoteStub();
    final drafts=_MemoryDraftStore();
    var rechargeVisits=0;
    await tester.pumpWidget(MaterialApp(home:Scaffold(
      body:Builder(builder:(ctx)=>FilledButton(
        onPressed:()=>showModalBottomSheet<void>(context:ctx,
          isScrollControlled:true,builder:(_)=>StatusPromotionSheet(
            api:api,draftStore:drafts,onRecharge:() async {
              rechargeVisits++;
              api.funded=true;
            })),
        child:const Text('Open composer'))),
    )));
    await tester.tap(find.text('Open composer'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first,'Support education in Nigeria');
    tester.testTextInput.hide();
    await tester.tap(find.text('500'));
    await tester.pump(const Duration(milliseconds:350));
    expect(drafts.drafts['new-post']?.body,'Support education in Nigeria');
    expect(drafts.drafts['new-post']?.targetViews,500);
    await tester.ensureVisible(find.text('Review price'));
    await tester.tap(find.text('Review price'));
    await tester.pumpAndSettle();
    expect(find.text('Add MB'),findsOneWidget);
    expect(api.requests.single,(postId:null,body:'Support education in Nigeria',views:500));

    await tester.ensureVisible(find.text('Add MB'));
    await tester.tap(find.text('Add MB'));
    await tester.pumpAndSettle();
    expect(rechargeVisits,1);
    expect(api.requests.length,2);
    expect(api.requests.last,(postId:null,body:'Support education in Nigeria',views:500));
    expect(find.text('Support education in Nigeria'),findsOneWidget);
    expect(find.text('Confirm 500 MB'),findsOneWidget);
    expect(api.confirmations,0);
    expect(tester.takeException(),isNull);
  });

  testWidgets('separate composer instance restores only its saved text and selected budget',
      (tester) async {
    final api=_QuoteStub();
    final drafts=_MemoryDraftStore();
    await drafts.write(null,const StatusPromotionDraft(body:'Saved campaign',targetViews:1000));
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      StatusPromotionSheet(api:api,draftStore:drafts))));
    await tester.pumpAndSettle();
    expect(find.text('Saved campaign'),findsOneWidget);
    expect(find.text('1000 views × 1 MB = 1000 MB'),findsOneWidget);
    expect(tester.takeException(),isNull);
  });

  testWidgets('Boost is a compact existing-post quote with one explicit confirmed submit',
      (tester) async {
    final api=_QuoteStub()..funded=true;
    final drafts=_MemoryDraftStore();
    final finishing=Completer<StatusPromotionCampaign>();
    api.heldConfirmation=finishing.future;
    StatusPromotionCampaign? receipt;
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:Builder(
      builder:(ctx)=>FilledButton(onPressed:() async {
        receipt=await showModalBottomSheet<StatusPromotionCampaign>(context:ctx,
          isScrollControlled:true,builder:(_)=>StatusPromotionSheet(
            api:api,postId:'original-post',draftStore:drafts));
      },child:const Text('Boost post')),
    ))));
    await tester.tap(find.text('Boost post'));
    await tester.pumpAndSettle();
    expect(find.text('Boost this post'),findsOneWidget);
    expect(find.byType(TextField),findsOneWidget,
      reason:'Boost cannot modify another person\'s post body');
    await tester.tap(find.text('500'));
    await tester.ensureVisible(find.text('Review price'));
    await tester.tap(find.text('Review price'));
    await tester.pumpAndSettle();
    expect(api.requests.single,(postId:'original-post',body:null,views:500));
    expect(find.text('Confirm 500 MB'),findsOneWidget);
    await tester.tap(find.text('Confirm 500 MB'));
    await tester.pump();
    expect(api.confirmations,1);
    expect(find.text('Confirming…'),findsOneWidget);
    // Even a second synthetic tap cannot issue a second financial request.
    await tester.tap(find.text('Confirming…'));
    await tester.pump();
    expect(api.confirmations,1);
    finishing.complete(const StatusPromotionCampaign(id:'boost-receipt',
      quoteId:'quote-1',postId:'original-post',state:'active',kind:'boost',
      targetViews:500,deliveredViews:0,remainingViews:500));
    await tester.pumpAndSettle();
    expect(receipt?.id,'boost-receipt');
    expect(api.confirmations,1);
    expect(tester.takeException(),isNull);
  });
}
