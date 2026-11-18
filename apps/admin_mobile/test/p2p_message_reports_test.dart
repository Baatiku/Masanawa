import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/screens/p2p_message_reports_page.dart';

void main() {
  Map<String, dynamic> report() => {
    'report_id': 'report-one',
    'order_id': 'order-one',
    'category': 'scam',
    'body': 'Private reported text',
    'details': 'Requested my password',
    'created_at': '2026-10-23',
    'version': 1,
  };
  testWidgets(
    'staff review uses persisted version and requires a private reason',
    (tester) async {
      var open = true;
      var reviews = 0;
      await tester.pumpWidget(
        MaterialApp(
          home: P2pMessageReportsPage(
            load: () async => {
              'items': open ? [report()] : [],
              'hasMore': false,
            },
            review: (id, decision, reason, version) async {
              expect(id, 'report-one');
              expect(decision, 'remove');
              expect(version, 1);
              expect(reason, 'Verified prohibited credential request.');
              reviews++;
              open = false;
            },
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Remove message'));
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<FilledButton>(
              find.widgetWithText(FilledButton, 'Confirm review'),
            )
            .onPressed,
        isNull,
      );
      await tester.enterText(find.byType(TextField), '😀' * 5);
      await tester.pump();
      expect(
        tester
            .widget<FilledButton>(
              find.widgetWithText(FilledButton, 'Confirm review'),
            )
            .onPressed,
        isNull,
      );
      await tester.enterText(
        find.byType(TextField),
        'Verified prohibited credential request.',
      );
      await tester.pump();
      await tester.tap(find.text('Confirm review'));
      await tester.pumpAndSettle();
      expect(reviews, 1);
      expect(find.text('Private reported text'), findsNothing);
      expect(find.text('No open message reports'), findsOneWidget);
    },
  );
  testWidgets('failed refresh removes old privileged report content', (
    tester,
  ) async {
    var denied = false;
    await tester.pumpWidget(
      MaterialApp(
        home: P2pMessageReportsPage(
          load: () async {
            if (denied) throw StateError('revoked');
            return {
              'items': [report()],
            };
          },
          review: (_, _, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Private reported text'), findsOneWidget);
    denied = true;
    await tester.tap(find.byTooltip('Refresh reports'));
    await tester.pumpAndSettle();
    expect(find.text('Private reported text'), findsNothing);
    expect(find.text('Reports unavailable. Retry'), findsOneWidget);
  });
  testWidgets(
    'session replacement scrubs the private queue without another request',
    (tester) async {
      var session = 'staff-session-one';
      await tester.pumpWidget(
        MaterialApp(
          home: P2pMessageReportsPage(
            currentSession: () => session,
            load: () async => {
              'items': [report()],
            },
            review: (_, _, _, _) async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Private reported text'), findsOneWidget);
      session = 'staff-session-two';
      await tester.pump(const Duration(seconds: 1));
      await tester.pump();
      expect(find.text('Private reported text'), findsNothing);
      expect(
        find.text('Reports unavailable for this session.'),
        findsOneWidget,
      );
      await tester.pumpWidget(const SizedBox());
    },
  );
}
