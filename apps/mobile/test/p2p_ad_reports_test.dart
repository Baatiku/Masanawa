import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_ad_reports.dart';
import 'package:masanawa/src/finance/p2p_trader_page.dart';

Map<String, dynamic> receipt([
  String id = 'report-one',
  String state = 'open',
]) => {
  'report_id': id,
  'offer_id': 'offer-one',
  'category': 'fraud',
  'state': state,
  'created_at': '2026-10-23T10:00:00Z',
};
DioException responseError(int status) => DioException(
  requestOptions: RequestOptions(path: '/report'),
  response: Response(
    requestOptions: RequestOptions(path: '/report'),
    statusCode: status,
  ),
);

class Fixture {
  String? user = 'reporter';
  bool exists = false,
      lost = false,
      statusOffline = false,
      acceptedLost = true,
      revoked = false;
  final writes = <Map<String, String>>[];
  int reads = 0;
  Completer<Map<String, dynamic>>? held;
  Future<Map<String, dynamic>> recover() async {
    reads++;
    if (held != null) return held!.future;
    if (revoked) throw responseError(401);
    if (statusOffline) throw responseError(503);
    if (!exists) throw responseError(404);
    return receipt();
  }

  Future<Map<String, dynamic>> submit(String category, String details) async {
    writes.add({'category': category, 'details': details, 'owner': '$user'});
    exists = acceptedLost;
    if (lost) throw responseError(503);
    return receipt();
  }

  Widget page({bool large = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pAdReportPage(
          expectedUserId: 'reporter',
          currentUserId: () => user,
          recover: recover,
          submit: submit,
        ),
      ),
    ),
  );
}

Future<void> fill(
  WidgetTester t, [
  String details = 'This ad asks for an unsafe payment.',
]) async {
  await t.enterText(
    find.widgetWithText(TextFormField, 'Private report details'),
    details,
  );
  await t.scrollUntilVisible(
    find.text('Submit private report').hitTestable(),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'private report validates Unicode details and returns an original receipt only after submit',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.textContaining('account numbers, passwords'), findsOneWidget);
      await fill(t, '😀😀😀😀😀');
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      expect(f.writes, isEmpty);
      expect(
        find.text('Use 10–2000 characters without control marks.'),
        findsOneWidget,
      );
      await fill(t, '😀'.padRight(20, '😀'));
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(find.text('report-one'), findsOneWidget);
      expect(find.text('Received'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'accepted lost result freezes original payload and recovers without a second write',
    (t) async {
      final f = Fixture()..lost = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await fill(t);
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(
        t
            .widget<TextFormField>(
              find.widgetWithText(TextFormField, 'Private report details'),
            )
            .enabled,
        isFalse,
      );
      await t.tap(find.text('Check or retry original report'));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(find.text('report-one'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'failed initial status check prevents new report until retry succeeds',
    (t) async {
      final f = Fixture()..statusOffline = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(
        t
            .widget<FilledButton>(
              find.widgetWithText(FilledButton, 'Submit private report'),
            )
            .onPressed,
        isNull,
      );
      f.statusOffline = false;
      await t.tap(find.text('Check report status'));
      await t.pumpAndSettle();
      await fill(t);
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'late missing-original response after account replacement cannot retry under new credentials',
    (t) async {
      final f = Fixture()
        ..lost = true
        ..acceptedLost = false;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await fill(t);
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      final held = Completer<Map<String, dynamic>>();
      f.held = held;
      await t.tap(find.text('Check or retry original report'));
      await t.pump();
      f.user = 'replacement';
      await t.pump(const Duration(seconds: 1));
      held.completeError(responseError(404));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(f.writes.single['owner'], 'reporter');
      expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('revoked access clears a cached original receipt', (t) async {
    final f = Fixture()..exists = true;
    await t.pumpWidget(f.page());
    await t.pumpAndSettle();
    expect(find.text('report-one'), findsOneWidget);
    f.revoked = true;
    await t.tap(find.text('Refresh report status'));
    await t.pumpAndSettle();
    expect(find.text('report-one'), findsNothing);
    expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
    expect(f.writes, isEmpty);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets(
    '320dp 200percent RTL report controls remain reachable and submit once',
    (t) async {
      t.view.physicalSize = const Size(320, 850);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await fill(t);
      await t.tap(find.text('Submit private report'));
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(find.text('report-one'), findsOneWidget);
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'own report history deduplicates pages and retries the exact failed refresh or cursor',
    (t) async {
      final cursors = <String?>[];
      bool failOlder = true, failRefresh = false;
      Future<Map<String, dynamic>> load(String? cursor) async {
        cursors.add(cursor);
        if (cursor != null && failOlder) {
          failOlder = false;
          throw StateError('offline');
        }
        if (cursor == null && failRefresh) throw StateError('offline');
        return {
          'items': cursor == null
              ? [receipt('one'), receipt('two')]
              : [receipt('two'), receipt('three', 'referred')],
          'nextCursor': cursor == null ? 'older' : null,
        };
      }

      await t.pumpWidget(
        MaterialApp(
          home: P2pMyAdReportsPage(
            expectedUserId: 'reporter',
            currentUserId: () => 'reporter',
            load: load,
          ),
        ),
      );
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Load older reports').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Load older reports'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Retry').hitTestable(),
        -150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(cursors, [null, 'older', 'older']);
      expect(find.text('two'), findsOneWidget);
      expect(find.text('Referred for support review'), findsOneWidget);
      await t.scrollUntilVisible(
        find.text('Refresh reports').hitTestable(),
        -150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      failRefresh = true;
      await t.tap(find.text('Refresh reports'));
      await t.pumpAndSettle();
      failRefresh = false;
      await t.tap(find.text('Retry'));
      await t.pumpAndSettle();
      expect(cursors.sublist(3), [null, null]);
      expect(find.text('three'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'trader report entry stays separate from selecting a trade quote',
    (t) async {
      var reports = 0;
      await t.pumpWidget(
        MaterialApp(
          home: P2pTraderPage(
            expectedUserId: 'reporter',
            currentUserId: () => 'reporter',
            formatMsnw: (v) => '$v MSNW',
            formatNgn: (v) => '$v NGN',
            report: (id) async {
              expect(id, 'ad-one');
              reports++;
            },
            load: (_) async => {
              'trader': {
                'displayName': 'Public Trader',
                'windowDays': 30,
                'completedOrders30d': 7,
                'closedOrders30d': 10,
                'asOf': '2026-10-23T10:00:00Z',
              },
              'items': [
                {
                  'offer_id': 'ad-one',
                  'rate_kobo_per_msnw': '100',
                  'remaining_micro': '1000000',
                  'min_micro': '100000',
                  'max_micro': '1000000',
                  'bank_name': 'Verified Bank',
                },
              ],
              'nextCursor': null,
            },
          ),
        ),
      );
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Report this ad').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Report this ad'));
      await t.pumpAndSettle();
      expect(reports, 1);
      expect(find.text('Trader profile'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
}
