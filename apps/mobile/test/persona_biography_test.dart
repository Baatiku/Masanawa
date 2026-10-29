import 'visual_test_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/screens/profile/persona_biography.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

// Synthetic identity: no unresearched real official is presented as admitted.
AgentDirectoryEntry example({bool reviewed = true}) => AgentDirectoryEntry(
  characterId: 'fixture-official',
  characterVersionId: 'fixture-v1',
  displayName: 'Example Public Official',
  roleLabel: 'Former public office',
  about:
      'This synthetic biography demonstrates how published background is presented. '
      'The page separates documented history from the AI conversation and original social updates.',
  presence: AgentPresence.unknown,
  publicOfficialSimulation: true,
  countryName: 'Nigeria',
  countryCode: 'NG',
  conversationStarters: const [
    'What shaped your public service?',
    'Explain your documented priorities.',
  ],
  publicOfficial: reviewed
      ? PublicOfficialIdentity(
          'Example Public Official',
          'Former public office',
          'https://grokipedia.com/page/Example',
          DateTime.utc(2026, 10, 28),
          DateTime.utc(2099),
          dateOfBirth: '1964-05-14',
          stateOfOrigin: 'Kaduna',
        )
      : null,
);

void main() {
  setUpAll(loadVisualTestFonts);
  testWidgets(
    'biography and source are readable with working question actions',
    (tester) async {
      tester.view.physicalSize = const Size(390, 1100);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final questions = <String>[], sources = <String>[];
      await tester.pumpWidget(
        MaterialApp(
          theme: buildMasanawaTheme(brightness: Brightness.light),
          home: Scaffold(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: PersonaBiography(
                agent: example(),
                onQuestion: questions.add,
                onSource: sources.add,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Biography'), findsOneWidget);
      expect(find.text('Nigeria'), findsOneWidget);
      expect(find.text('May 14, 1964'), findsOneWidget);
      final birth = tester.getRect(
        find.byKey(const ValueKey('quick-fact-Date of birth')),
      );
      final origin = tester.getRect(
        find.byKey(const ValueKey('quick-fact-State of origin')),
      );
      expect(birth.size, origin.size);
      expect(birth.top, origin.top);
      expect(birth.right, lessThan(origin.left));
      await tester.tap(find.text('What shaped your public service?'));
      expect(questions, ['What shaped your public service?']);
      await tester.ensureVisible(find.text('Read biography source'));
      await tester.tap(find.text('Read biography source'));
      expect(sources, ['https://grokipedia.com/page/Example']);
      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0, 2000),
      );
      await tester.pumpAndSettle();
      await expectLater(
        find.byType(Scaffold),
        matchesGoldenFile('goldens/persona-biography-phone.png'),
      );
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    '320dp and large text preserve biography, questions and honest missing review',
    (tester) async {
      tester.view.physicalSize = const Size(320, 700);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2)),
            child: Scaffold(
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: PersonaBiography(
                  agent: example(reviewed: false),
                  onQuestion: (_) {},
                  onSource: (_) {},
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Read biography source'), findsNothing);
      expect(find.text('Date of birth'), findsNothing);
      expect(find.text('State of origin'), findsNothing);
      await tester.ensureVisible(
        find.textContaining('A current source review is unavailable.'),
      );
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    },
  );
}
