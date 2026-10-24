import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_trader_page.dart';

Map<String, dynamic> ad(String id) => {
  'offer_id': id,
  'rate_kobo_per_msnw': '100',
  'remaining_micro': '2000000',
  'min_micro': '100000',
  'max_micro': '2000000',
  'bank_name': 'Example Bank',
  'bank_method_verified': true,
};

class Fixture {
  String? user = 'buyer';
  int completed = 7, closed = 10;
  bool fail = false, denied = false, breakdown = false;
  String? cursor;
  final cursors = <String?>[];
  final offers = <Map<String, dynamic>>[ad('ad-one')];
  Completer<Map<String, dynamic>>? held;
  Future<Map<String, dynamic>> load(String? after) async {
    cursors.add(after);
    if (held != null) return held!.future;
    if (fail) throw StateError('offline');
    if (denied) {
      throw DioException(
        requestOptions: RequestOptions(path: '/trader'),
        response: Response(
          requestOptions: RequestOptions(path: '/trader'),
          statusCode: 404,
        ),
      );
    }
    return {
      'trader': {
        'displayName': 'Public Seller',
        'completedOrders30d': completed,
        'closedOrders30d': closed,
        if (breakdown) ...{
          'cancelledOrders30d': 2,
          'expiredOrders30d': 1,
          'disputedOrders30d': 1,
          'totalOrders30d': 12,
        },
        'windowDays': 30,
        'asOf': '2026-10-23T05:00:00Z',
      },
      'items': List.of(offers),
      'nextCursor': cursor,
    };
  }

  Widget page({bool large = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pTraderPage(
          expectedUserId: 'buyer',
          currentUserId: () => user,
          load: load,
          formatMsnw: (v) => '$v micro-MSNW',
          formatNgn: (v) => '$v kobo',
        ),
      ),
    ),
  );
}

void main() {
  testWidgets(
    'shows separate same-cohort outcomes without implying a reputation score',
    (t) async {
      final f = Fixture()..breakdown = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(
        find.text('2 cancelled · 1 expired · 1 currently disputed'),
        findsOneWidget,
      );
      expect(
        find.text('12 total orders opened in this window'),
        findsOneWidget,
      );
      expect(find.textContaining('not a lifetime score'), findsOneWidget);
      expect(find.textContaining('%'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'shows the actual cohort denominator and bank-method scope without a fabricated merchant badge',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Public Seller'), findsOneWidget);
      expect(find.text('7 completed / 10 closed orders'), findsOneWidget);
      expect(
        find.textContaining('Orders opened in the last 30 days'),
        findsOneWidget,
      );
      expect(find.text('Bank method verified'), findsOneWidget);
      expect(find.text('Verified merchant'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'a small sample stays insufficient rather than a manufactured score',
    (t) async {
      final f = Fixture()
        ..closed = 4
        ..completed = 3;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(
        find.text('Not enough trading history · 4 closed orders'),
        findsOneWidget,
      );
      expect(find.textContaining('%'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'older ads append using the server cursor and refresh discards stale ads',
    (t) async {
      final f = Fixture()..cursor = 'next-page';
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.offers
        ..clear()
        ..add(ad('ad-two'));
      f.cursor = null;
      await t.ensureVisible(find.text('Load more ads'));
      await t.tap(find.text('Load more ads'));
      await t.pumpAndSettle();
      expect(f.cursors, [null, 'next-page']);
      expect(find.text('Review buy quote'), findsNWidgets(2));
      await t.tap(find.byTooltip('Refresh trader'));
      await t.pumpAndSettle();
      expect(find.text('Review buy quote'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'a revoked reference scrubs previously displayed profile and ads',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.denied = true;
      await t.tap(find.byTooltip('Refresh trader'));
      await t.pumpAndSettle();
      expect(find.text('Public Seller'), findsNothing);
      expect(find.text('Review buy quote'), findsNothing);
      expect(
        find.text('This trader is unavailable for this account.'),
        findsOneWidget,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'offline refresh retains context and a retry restores current ads',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.fail = true;
      await t.tap(find.byTooltip('Refresh trader'));
      await t.pumpAndSettle();
      expect(find.text('Public Seller'), findsOneWidget);
      expect(find.text('Retry'), findsOneWidget);
      f.fail = false;
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(find.text('Retry'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'account replacement clears state and rejects an in-flight profile response',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.held = Completer();
      await t.tap(find.byTooltip('Refresh trader'));
      await t.pump();
      f.user = 'other';
      await t.pump(const Duration(seconds: 1));
      await t.pump();
      f.held!.complete({
        'trader': {'displayName': 'Wrong account stale result'},
        'items': [ad('other')],
      });
      await t.pumpAndSettle();
      expect(find.text('Public Seller'), findsNothing);
      expect(find.text('Wrong account stale result'), findsNothing);
      expect(
        find.text('Trader profile closed after account change.'),
        findsOneWidget,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    '320dp 200 percent RTL exposes the existing quote-review selection',
    (t) async {
      t.view.physicalSize = const Size(320, 760);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Review buy quote'),
        250,
        maxScrolls: 40,
      );
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      expect(find.text('Review buy quote'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'selecting an ad returns its identity for the existing quote flow without placing an order',
    (t) async {
      final f = Fixture();
      Map<String, dynamic>? selected;
      await t.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (ctx) => Scaffold(
              body: TextButton(
                onPressed: () async {
                  selected = await Navigator.push<Map<String, dynamic>>(
                    ctx,
                    MaterialPageRoute(
                      builder: (_) => P2pTraderPage(
                        expectedUserId: 'buyer',
                        currentUserId: () => f.user,
                        load: f.load,
                        formatMsnw: (v) => '$v',
                        formatNgn: (v) => '$v',
                      ),
                    ),
                  );
                },
                child: const Text('Open profile'),
              ),
            ),
          ),
        ),
      );
      await t.tap(find.text('Open profile'));
      await t.pumpAndSettle();
      await t.ensureVisible(find.text('Review buy quote'));
      await t.tap(find.text('Review buy quote'));
      await t.pumpAndSettle();
      expect(selected?['offer_id'], 'ad-one');
      expect(f.cursors, [null]);
    },
  );
}
