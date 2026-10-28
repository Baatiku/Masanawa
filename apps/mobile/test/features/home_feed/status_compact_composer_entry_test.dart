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
  testWidgets('large-type Hausa, dark theme and RTL keep compact paid-entry actions reachable',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(320, 760));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(MaterialApp(
      locale: const Locale('ha'),
      localizationsDelegates: MasanawaLocalization.delegates,
      supportedLocales: MasanawaLocalization.supportedLocales,
      theme: ThemeData.dark(),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(2)),
          child: Scaffold(body: MasanaFeedScreen(
            api: _EmptyHome(),
            promotions: _AvailablePromotion(),
            accountKey: 'signed-owner',
            ownerName: 'Bello Abubakar',
          )),
        ),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Me kuke son yaɗawa?'), findsOneWidget);
    expect(find.text('Hoto'), findsOneWidget);
    expect(find.text('Yaɗa'), findsOneWidget);
    expect(tester.getSize(find.byKey(const Key('status-composer-photo'))).height,
      greaterThanOrEqualTo(48));
    expect(tester.getSize(find.byKey(const Key('status-composer-promote'))).height,
      greaterThanOrEqualTo(48));
    expect(tester.takeException(), isNull);
  });

  testWidgets('320dp signed-in Home entry has owner avatar, Photo, Promote and no free editor',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(320, 760));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: MasanaFeedScreen(
        api: _EmptyHome(),
        promotions: _AvailablePromotion(),
        accountKey: 'signed-owner',
        ownerName: 'Bello Abubakar',
      )),
    ));
    await tester.pumpAndSettle();
    expect(find.text('B'), findsOneWidget);
    expect(find.byKey(const Key('status-composer-prompt')), findsOneWidget);
    expect(find.byKey(const Key('status-composer-photo')), findsOneWidget);
    expect(find.byKey(const Key('status-composer-manage')), findsOneWidget);
    expect(find.byKey(const Key('status-composer-promote')), findsOneWidget);
    expect(find.byType(StatusPromotionSheet), findsNothing);

    await tester.tap(find.byKey(const Key('status-composer-photo')));
    await tester.pumpAndSettle();
    expect(find.byType(StatusPromotionSheet), findsOneWidget);
    expect(find.textContaining('Photo promotions are not available'),
      findsOneWidget);
    expect(find.text('Review price'), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.ensureVisible(find.text('Not now'));
    await tester.tap(find.text('Not now'));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('status-composer-promote')));
    await tester.pumpAndSettle();
    expect(find.byType(StatusPromotionSheet), findsOneWidget);
    expect(find.textContaining('Photo promotions are not available'),
      findsNothing);
    expect(find.text('Review price'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
