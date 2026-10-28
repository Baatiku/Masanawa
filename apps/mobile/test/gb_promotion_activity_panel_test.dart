import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_promotion_activity_panel.dart';
import 'package:masanawa/src/gb_wallet/gb_promotion_journal.dart';

GbPromotionJournal sampleHistory() => GbPromotionJournal.read({
  'campaigns': [
    {'id':'human-active','postId':'post-1','kind':'human_primary',
      'state':'pending_review','targetViews':10,'deliveredViews':0,
      'spentMb':0,'reservedMb':10,'refundedUnusedMb':0,
      'priceVersion':'2026-10-27:1MB'},
    {'id':'boost-active','postId':'post-2','kind':'boost',
      'state':'active','targetViews':5,'deliveredViews':2,
      'spentMb':2,'reservedMb':3,'refundedUnusedMb':0,
      'priceVersion':'2026-10-27:1MB'},
    {'id':'boost-refunded','postId':'post-3','kind':'boost',
      'state':'cancelled','targetViews':10,'deliveredViews':3,
      'spentMb':3,'reservedMb':0,'refundedUnusedMb':7,
      'priceVersion':'old-rate'},
  ],
  'sharingEarnings': [
    {'postId':'earned-1','referredQualifiedViews':1,'pendingHalfMb':1},
    {'postId':'earned-2','referredQualifiedViews':1,'pendingHalfMb':1},
  ],
  'lifecycleNotifications': [],
});

void main() {
  testWidgets('filters read-only campaigns, boosts, released holds and earnings without changing totals',
      (tester) async {
    tester.view.physicalSize = const Size(320, 780);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final history = sampleHistory();
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SingleChildScrollView(
      child: GbPromotionActivityPanel(key: const ValueKey('owner-a'), journal: history)))));
    expect(find.text('1 MB'), findsOneWidget);
    expect(find.text('13 MB'), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-promotion-human-active')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-promotion-boost-active')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-promotion-boost-refunded')), findsOneWidget);

    Future<void> choose(String value) async {
      final choice = find.byKey(ValueKey('promotion-filter-$value'));
      await tester.ensureVisible(choice);
      await tester.tap(choice);
      await tester.pumpAndSettle();
    }

    await choose('boosts');
    expect(find.byKey(const ValueKey('wallet-promotion-human-active')), findsNothing);
    expect(find.byKey(const ValueKey('wallet-promotion-boost-active')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-promotion-boost-refunded')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-referral-earned-1')), findsNothing);

    await choose('releases');
    expect(find.byKey(const ValueKey('wallet-promotion-boost-active')), findsNothing);
    expect(find.byKey(const ValueKey('wallet-promotion-boost-refunded')), findsOneWidget);
    expect(find.textContaining('7 MB unused released'), findsOneWidget);
    expect(find.textContaining('Original price version: old-rate'), findsOneWidget);

    await choose('earnings');
    expect(find.byKey(const ValueKey('wallet-promotion-boost-refunded')), findsNothing);
    expect(find.byKey(const ValueKey('wallet-referral-earned-1')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-referral-earned-2')), findsOneWidget);
    expect(find.textContaining('pending · not redeemable'), findsNWidgets(2));
    expect(tester.takeException(), isNull);
  });

  testWidgets('changing owner resets private history filter, large text stays scrollable',
      (tester) async {
    tester.view.physicalSize = const Size(320, 700);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    Widget screen(String owner) => MaterialApp(home: MediaQuery(
      data: const MediaQueryData(textScaler: TextScaler.linear(2)),
      child: Scaffold(body: SingleChildScrollView(child:
        GbPromotionActivityPanel(key: ValueKey(owner), journal: sampleHistory())))));
    await tester.pumpWidget(screen('owner-a'));
    await tester.ensureVisible(find.byKey(const ValueKey('promotion-filter-earnings')));
    await tester.tap(find.byKey(const ValueKey('promotion-filter-earnings')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('wallet-promotion-human-active')), findsNothing);
    await tester.pumpWidget(screen('owner-b'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('wallet-promotion-human-active')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
