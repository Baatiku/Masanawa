import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/screens/p2p_ad_reports_page.dart';

Map<String, dynamic> report(String id, {String state = 'open'}) => {
  'report_id': id,
  'category': 'fraud',
  'details': 'Please check the misleading ad.',
  'version': state == 'open' ? 1 : 2,
  'state': state,
  'review_reason': state == 'open' ? null : 'Reviewed original report',
  'public_snapshot': {
    'traderName': 'Public Trader',
    'bankName': 'Verified Bank',
    'offerSide': 'sell',
    'rateKoboPerMsnw': '100',
    'minMicro': '1000000',
    'maxMicro': '2000000',
    'termsRevision': 1,
    'observedAt': '2026-10-23T10:00:00Z',
  },
};

class Fixture {
  String? session = 'operator';
  bool open = true, denied = false;
  final reviews = <Map<String, Object>>[];
  Future<Map<String, dynamic>> load(String? cursor, String filter) async {
    if (denied)
      throw DioException(
        requestOptions: RequestOptions(path: '/queue'),
        response: Response(
          requestOptions: RequestOptions(path: '/queue'),
          statusCode: 403,
        ),
      );
    return {
      'items': open ? [report('report-one')] : [],
      'nextCursor': null,
    };
  }

  Future<void> review(
    String id,
    String decision,
    String reason,
    int version,
  ) async {
    reviews.add({
      'id': id,
      'decision': decision,
      'reason': reason,
      'version': version,
    });
    open = false;
  }

  Widget page({bool large = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pAdReportsPage(
          currentSession: () => session,
          load: load,
          review: review,
        ),
      ),
    ),
  );
}

Future<void> openReview(WidgetTester t) async {
  await t.scrollUntilVisible(
    find.text('Refer to support').hitTestable(),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await t.pumpAndSettle();
  await t.tap(find.text('Refer to support'));
  await t.pumpAndSettle();
}

void main() {
  testWidgets(
    'operator records reasoned original-version review and refreshes authoritative queue',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Bank method: Verified Bank'), findsOneWidget);
      await openReview(t);
      await t.tap(find.text('Record review'));
      await t.pumpAndSettle();
      expect(f.reviews, isEmpty);
      expect(
        find.text('Use 10–2000 characters without control marks.'),
        findsOneWidget,
      );
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private review reason'),
        'Refer for independent support triage',
      );
      await t.tap(find.text('Record review'));
      await t.pumpAndSettle();
      expect(f.reviews.single, {
        'id': 'report-one',
        'decision': 'refer',
        'reason': 'Refer for independent support triage',
        'version': 1,
      });
      expect(find.text('No ad reports in this view.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'replacement admin session cannot submit an already open review',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await openReview(t);
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private review reason'),
        'Independent triage required',
      );
      f.session = 'replacement';
      await t.pump(const Duration(seconds: 1));
      await t.tap(find.text('Record review'));
      await t.pumpAndSettle();
      expect(f.reviews, isEmpty);
      expect(find.text('report-one'), findsNothing);
      expect(
        find.text('Admin session changed. Reopen reports.'),
        findsOneWidget,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('revoked operator role clears cached report evidence', (t) async {
    final f = Fixture();
    await t.pumpWidget(f.page());
    await t.pumpAndSettle();
    f.denied = true;
    await t.tap(find.text('Refresh ad reports'));
    await t.pumpAndSettle();
    expect(find.text('Please check the misleading ad.'), findsNothing);
    expect(find.text('Admin session changed. Reopen reports.'), findsOneWidget);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets(
    'review queue pages deduplicate and filter changes restart cursor scope',
    (t) async {
      final calls = <String>[];
      await t.pumpWidget(
        MaterialApp(
          home: P2pAdReportsPage(
            currentSession: () => 'operator',
            review: (_, _, _, _) async {},
            load: (cursor, filter) async {
              calls.add('$filter:${cursor ?? 'first'}');
              return {
                'items': filter == 'reviewed'
                    ? [report('closed', state: 'dismissed')]
                    : cursor == null
                    ? [report('one')]
                    : [report('one'), report('two')],
                'nextCursor': filter == 'reviewed' || cursor != null
                    ? null
                    : 'older',
              };
            },
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
      expect(calls, ['open:first', 'open:older']);
      expect(find.text('Report: one'), findsOneWidget);
      await t.scrollUntilVisible(
        find.text('Reviewed').hitTestable(),
        -200,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Reviewed'));
      await t.pumpAndSettle();
      expect(calls.last, 'reviewed:first');
      expect(find.text('Report: closed'), findsOneWidget);
      expect(find.text('Dismiss report'), findsNothing);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    '320dp 200percent RTL review reason and cancel remain reachable',
    (t) async {
      t.view.physicalSize = const Size(320, 850);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await openReview(t);
      await t.enterText(
        find.widgetWithText(TextFormField, 'Private review reason'),
        'Independent support triage',
      );
      await t.ensureVisible(find.text('Cancel'));
      await t.tap(find.text('Cancel'));
      await t.pumpAndSettle();
      expect(f.reviews, isEmpty);
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
}
