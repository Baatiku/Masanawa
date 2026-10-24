import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/screens/p2p_case_context.dart';

Map<String, dynamic> file() => {
  'order': {'state': 'disputed'},
  'events': [],
  'evidence': [],
  'disputeSubmission': {
    'category': 'wrong_amount',
    'details': 'Private opening evidence',
    'submission_id': 'opening-reference',
  },
};

class Fixture {
  String? session = 'operator';
  bool fail = false;
  int copies = 0;
  Completer<Map<String, dynamic>>? held;
  Future<Map<String, dynamic>> load() async {
    if (held != null) return held!.future;
    if (fail) throw StateError('denied');
    return file();
  }

  Widget page({bool large = false}) => MaterialApp(
    home: Scaffold(
      body: MediaQuery(
        data: MediaQueryData(textScaler: TextScaler.linear(large ? 2 : 1)),
        child: Directionality(
          textDirection: large ? TextDirection.rtl : TextDirection.ltr,
          child: P2pCaseContext(
            orderId: 'order-one',
            currentSession: () => session,
            load: load,
            copyEvidence: (_) async {
              copies++;
            },
          ),
        ),
      ),
    ),
  );
}

void main() {
  testWidgets(
    'operator receives original typed opening evidence with existing audit warnings',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      expect(find.text('Dispute reason: Wrong payment amount'), findsOneWidget);
      expect(find.text('Private opening evidence'), findsOneWidget);
      expect(
        find.textContaining('must never authorize a release'),
        findsOneWidget,
      );
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'replacement session scrubs private evidence without another request',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.session = 'replacement';
      await t.pump(const Duration(seconds: 1));
      await t.pumpAndSettle();
      expect(find.text('Private opening evidence'), findsNothing);
      expect(
        find.text('Admin session changed. Reopen the case.'),
        findsOneWidget,
      );
      expect(f.copies, 0);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'failed refresh removes old case evidence and permits explicit retry',
    (t) async {
      final f = Fixture();
      await t.pumpWidget(f.page());
      await t.pumpAndSettle();
      f.fail = true;
      await t.tap(find.text('Refresh case context'));
      await t.pumpAndSettle();
      expect(find.text('Private opening evidence'), findsNothing);
      expect(
        find.text('Case file unavailable. Reopen or retry.'),
        findsOneWidget,
      );
      f.fail = false;
      await t.tap(find.text('Refresh case context'));
      await t.pumpAndSettle();
      expect(find.text('Private opening evidence'), findsOneWidget);
      await t.pumpWidget(const SizedBox());
    },
  );
  testWidgets('delayed old-session load cannot restore private case content', (
    t,
  ) async {
    final f = Fixture();
    final held = Completer<Map<String, dynamic>>();
    f.held = held;
    await t.pumpWidget(f.page());
    await t.pump();
    f.session = 'replacement';
    await t.pump(const Duration(seconds: 1));
    held.complete(file());
    await t.pumpAndSettle();
    expect(find.text('Private opening evidence'), findsNothing);
    expect(
      find.text('Admin session changed. Reopen the case.'),
      findsOneWidget,
    );
    await t.pumpWidget(const SizedBox());
  });
  testWidgets(
    '320dp 200percent RTL case context remains readable and refreshable',
    (t) async {
      t.view.physicalSize = const Size(320, 850);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final f = Fixture();
      await t.pumpWidget(f.page(large: true));
      await t.pumpAndSettle();
      await t.tap(find.text('Refresh case context'));
      await t.pumpAndSettle();
      await t.scrollUntilVisible(
        find.text('Private opening evidence').hitTestable(),
        150,
        scrollable: find.byType(Scrollable).first,
      );
      await t.pumpAndSettle();
      expect(find.text('Private opening evidence'), findsOneWidget);
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );
}
