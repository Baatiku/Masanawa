import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/safety/twin_safety.dart';
import 'package:masanawa/src/screens/chat/masana_report_screen.dart';

void main() {
  testWidgets('report is a dedicated page and keeps details after failure',
      (tester) async {
    TwinReportReason? selected;
    String? detail;
    await tester.pumpWidget(MaterialApp(
      home: MasanaReportScreen(
        displayName: 'Gwani',
        onSubmit: (reason, notes) async {
          selected = reason;
          detail = notes;
          return false;
        },
      ),
    ));
    expect(find.text('Report Masana'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('report-submit'))).onPressed, isNull);
    await tester.tap(find.byKey(const ValueKey('report-reason-fraud')));
    await tester.enterText(find.byKey(const ValueKey('report-details')), 'Suspicious request');
    await tester.ensureVisible(find.byKey(const ValueKey('report-submit')));
    await tester.tap(find.byKey(const ValueKey('report-submit')));
    await tester.pumpAndSettle();
    expect(selected, TwinReportReason.fraud);
    expect(detail, 'Suspicious request');
    expect(find.textContaining('Could not confirm'), findsOneWidget);
    expect(find.text('Suspicious request'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('report-submit'))).onPressed, isNotNull);
  });
}
