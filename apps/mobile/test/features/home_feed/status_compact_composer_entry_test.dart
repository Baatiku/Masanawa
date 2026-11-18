import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_api.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_sheet.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';

class _EmptyHome implements FeedApi {
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async =>
      FeedPage([], null);
  @override Future<void> like(String postId, bool enabled) async {}
  @override Future<void> save(String postId, bool enabled) async {}
  @override Future<void> comment(String postId, String body, String key) async {}
  @override Future<List<FeedComment>> comments(String postId) async => [];
}

class _EmptyJournal implements StatusPromotionJournal {
  @override Future<String?> read() async => null;
  @override Future<void> write(String? data) async {}
}

class _AvailablePromotion extends StatusPromotionApi {
  _AvailablePromotion() : super(
    dio: Dio(),
    ownerAccount: 'signed-owner',
    currentAccount: () => 'signed-owner',
    accessToken: () async => 'test-token',
    journal: _EmptyJournal(),
  );
  @override Future<bool> available() async => true;
}

void main() {
  for(final large in [false,true])testWidgets('officials pivot removes posting even when old capability is true; large=$large',(tester)async{
    await tester.binding.setSurfaceSize(const Size(320,760));
    addTearDown(()=>tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(MaterialApp(
      locale:large?const Locale('ha'):const Locale('en'),
      localizationsDelegates:MasanawaLocalization.delegates,
      supportedLocales:MasanawaLocalization.supportedLocales,
      theme:large?ThemeData.dark():ThemeData.light(),
      builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(textScaler:TextScaler.linear(large?2:1)),
        child:Directionality(textDirection:large?TextDirection.rtl:TextDirection.ltr,child:child!)),
      home:Scaffold(body:MasanaFeedScreen(api:_EmptyHome(),promotions:_AvailablePromotion(),
        accountKey:'signed-owner',ownerName:'Bello Abubakar'))));
    await tester.pumpAndSettle();
    for(final key in ['status-composer-prompt','status-composer-photo','status-composer-promote'])
      expect(find.byKey(Key(key)),findsNothing);
    expect(find.byType(StatusPromotionSheet),findsNothing);
    expect(find.byIcon(Icons.receipt_long_outlined),findsNothing,
      reason:'The Home header stays focused; historical finance remains in Wallet Activity');
    expect(find.text('Promotion history'),findsNothing);
    expect(tester.takeException(),isNull);
  });
}
