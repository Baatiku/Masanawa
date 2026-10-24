import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_order_support.dart';

DioException fail(int status) => DioException(
  requestOptions: RequestOptions(path: '/support'),
  response: Response(
    requestOptions: RequestOptions(path: '/support'),
    statusCode: status,
  ),
);

class Fixture {
  String? user = 'buyer', terminalState;
  bool exists = false,
      lost = false,
      accept = true,
      offline = false,
      revoked = false,
      canOpen = true,
      own = true;
  final writes = <Map<String, String>>[];
  Completer<Map<String, dynamic>>? held;
  Map<String, dynamic> receipt() => {
    'submission_id': 'original-report',
    'category': 'other',
    'created_at': '2026-10-24T01:00:00Z',
    'is_own': own,
    'details': own ? 'Private original report details' : null,
  };
  Map<String, dynamic> context() => {
    'orderId': 'order-one',
    'state':
        terminalState ?? (exists || !canOpen ? 'disputed' : 'awaiting_payment'),
    'canOpenDispute': !exists && canOpen,
    'events': [
      {'action': 'reserve', 'created_at': '2026-10-24T00:00:00Z'},
    ],
    'submission': exists ? receipt() : null,
  };
  Future<Map<String, dynamic>> load() async {
    if (held != null) return held!.future;
    if (revoked) throw fail(403);
    if (offline) throw fail(503);
    return context();
  }

  Future<Map<String, dynamic>> submit(String category, String details) async {
    writes.add({'category': category, 'details': details, 'owner': '$user'});
    exists = accept;
    if (lost) throw fail(503);
    return {'submission': receipt()};
  }

  Widget page({bool large = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
      child: Directionality(
        textDirection: large ? TextDirection.rtl : TextDirection.ltr,
        child: P2pOrderSupportPage(
          expectedUserId: 'buyer',
          currentUserId: () => user,
          load: load,
          submit: submit,
        ),
      ),
    ),
  );
}

Future<void> press(WidgetTester t, String text) async {
  await t.scrollUntilVisible(
    find.text(text).hitTestable(),
    150,
    scrollable: find.byType(Scrollable).first,
  );
  await t.pumpAndSettle();
  await t.tap(find.text(text));
  await t.pumpAndSettle();
}

Future<void> fill(
  WidgetTester t, [
  String text = 'The exact bank amount was not received.',
]) async {
  await t.enterText(find.widgetWithText(TextFormField, 'What happened?'), text);
  t.testTextInput.hide();
}

void main() {
  testWidgets(
    'original report recovery reflects the current terminal order without reopening it',
    (t) async {
      final f = Fixture()
        ..exists = true
        ..terminalState = 'cancelled';
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Order status: Order cancelled'), findsOneWidget);
      expect(find.text('original-report'), findsOneWidget);
      expect(find.text('Confirm dispute report'), findsNothing);
      expect(f.writes, isEmpty);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'validates reason characters and shows the original report after canonical readback',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await fill(t, '😀😀😀😀😀');
      await press(t, 'Confirm dispute report');
      expect(f.writes, isEmpty);
      expect(
        find.text('Use 10–2000 characters without control marks.'),
        findsOneWidget,
      );
      await fill(t, List.filled(10, '😀').join());
      await press(t, 'Confirm dispute report');
      expect(f.writes, hasLength(1));
      expect(find.text('original-report'), findsOneWidget);
      expect(
        find.text('Your original dispute report was received.'),
        findsOneWidget,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'uncertain accepted report freezes original input and recovers without a replacement write',
    (t) async {
      final f = Fixture()..lost = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await fill(t);
      await press(t, 'Confirm dispute report');
      expect(f.writes, hasLength(1));
      expect(
        t
            .widget<TextFormField>(
              find.widgetWithText(TextFormField, 'What happened?'),
            )
            .enabled,
        isFalse,
      );
      await press(t, 'Check or retry original dispute');
      expect(f.writes, hasLength(1));
      expect(find.text('original-report'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'reopening an accepted original report reads it without posting or reopening escrow',
    (t) async {
      final f = Fixture()..exists = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Private original report details'), findsOneWidget);
      expect(find.text('Confirm dispute report'), findsNothing);
      expect(f.writes, isEmpty);
      expect(find.text('Escrow reserved'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'late empty support response after account replacement cannot retry under new credentials',
    (t) async {
      final f = Fixture()
        ..lost = true
        ..accept = false;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      await fill(t);
      await press(t, 'Confirm dispute report');
      final held = Completer<Map<String, dynamic>>();
      f.held = held;
      await t.scrollUntilVisible(
        find.text('Check or retry original dispute').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      await t.tap(find.text('Check or retry original dispute'));
      await t.pump();
      f.user = 'replacement';
      await t.pump(const Duration(seconds: 1));
      held.complete(f.context());
      await t.pumpAndSettle();
      expect(f.writes, hasLength(1));
      expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'revocation scrubs cached original explanations and legacy disputed context stays read-only',
    (t) async {
      final f = Fixture()..exists = true;
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.revoked = true;
      await press(t, 'Refresh support context');
      expect(find.text('Private original report details'), findsNothing);
      expect(find.text('Access changed. Reopen P2P.'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
      final legacy = Fixture()..canOpen = false;
      await t.pumpWidget(legacy.page());
      await t.pumpAndSettle();
      expect(find.text('Confirm dispute report'), findsNothing);
      expect(legacy.writes, isEmpty);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    '320dp 200percent RTL permits typed category and explicit dispute confirmation',
    (t) async {
      t.view.physicalSize = const Size(320, 850);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await fill(t);
      await press(t, 'Confirm dispute report');
      expect(f.writes, hasLength(1));
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
}
