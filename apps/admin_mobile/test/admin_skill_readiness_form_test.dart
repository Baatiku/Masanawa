import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/core/admin_api.dart';
import 'package:masanawa_admin/src/screens/admin_skill_readiness_form.dart';

const skill = AdminSkill(
  skillVersionId: 'skill:alpha:v1',
  key: 'alpha',
  version: '1',
  displayName: 'Skills',
  description: 'A ready SkillVersion',
  readiness: 'ready',
  advertised: true,
  reasonCode: '',
  checkedAt: null,
  revision: 2,
);

void main() {
  testWidgets('failure preserves reason and lets the operator retry', (tester) async {
    String? submittedState;
    bool? advertised;
    String? reason;
    await tester.pumpWidget(MaterialApp(
      home: AdminSkillReadinessForm(
        skill: skill,
        onSave: (state, visible, notes) async {
          submittedState = state;
          advertised = visible;
          reason = notes;
          throw StateError('offline');
        },
      ),
    ));
    await tester.enterText(
      find.byKey(const ValueKey('skill-readiness-reason')),
      'provider.degraded',
    );
    await tester.ensureVisible(find.byKey(const ValueKey('skill-readiness-submit')));
    await tester.tap(find.byKey(const ValueKey('skill-readiness-submit')));
    await tester.pumpAndSettle();
    expect(submittedState, 'ready');
    expect(advertised, isTrue);
    expect(reason, 'provider.degraded');
    expect(find.textContaining('could not be saved'), findsOneWidget);
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('skill-readiness-reason'),
    )).controller!.text, 'provider.degraded');
    expect(tester.widget<FilledButton>(find.byKey(
      const ValueKey('skill-readiness-submit'),
    )).onPressed, isNotNull);
  });
}
