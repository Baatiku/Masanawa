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
    await tester.scrollUntilVisible(find.byKey(const ValueKey('report-submit')), 150, scrollable: find.byType(Scrollable).first);
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('report-submit'))).onPressed, isNull);
    await tester.scrollUntilVisible(find.byKey(const ValueKey('report-reason-fraud')), -150, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.byKey(const ValueKey('report-reason-fraud')));
    await tester.enterText(find.byKey(const ValueKey('report-details')), 'Suspicious request');
    await tester.scrollUntilVisible(find.byKey(const ValueKey('report-submit')), 120, scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('report-submit')));
    await tester.pumpAndSettle();
    expect(selected, TwinReportReason.fraud);
    expect(detail, 'Suspicious request');
    expect(find.textContaining('Could not confirm'), findsOneWidget);
    expect(tester.widget<TextField>(find.byKey(const ValueKey('report-details'))).controller!.text,
        'Suspicious request');
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('report-submit'))).onPressed, isNotNull);
  });
}
