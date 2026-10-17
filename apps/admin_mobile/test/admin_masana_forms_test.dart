import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/screens/admin_masana_forms.dart';

void main() {
  testWidgets('invalid media form prevents a submission', (tester) async {
    var calls = 0;
    await tester.pumpWidget(MaterialApp(
      home: AdminMasanaMediaForm(
        onSave: (_, __, ___) async { calls++; },
      ),
    ));
    await tester.ensureVisible(find.byKey(const ValueKey('masana-media-submit')));
    await tester.tap(find.byKey(const ValueKey('masana-media-submit')));
    await tester.pumpAndSettle();
    expect(calls, 0);
    expect(find.text('Verified media ID is required'), findsOneWidget);
  });

  testWidgets('failed media attachment preserves entered references', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: AdminMasanaMediaForm(
        onSave: (_, __, ___) async { throw StateError('offline'); },
      ),
    ));
    await tester.enterText(find.byKey(const ValueKey('masana-media-id')), 'verified_media_123');
    await tester.enterText(find.byKey(const ValueKey('masana-media-rights')), 'Authorized license');
    await tester.ensureVisible(find.byKey(const ValueKey('masana-media-submit')));
    await tester.tap(find.byKey(const ValueKey('masana-media-submit')));
    await tester.pumpAndSettle();
    expect(find.textContaining('not confirmed'), findsOneWidget);
    expect(tester.widget<TextFormField>(find.byKey(const ValueKey('masana-media-id'))).controller!.text, 'verified_media_123');
    expect(tester.widget<TextFormField>(find.byKey(const ValueKey('masana-media-rights'))).controller!.text, 'Authorized license');
  });
  testWidgets('failed revision creation retains text and does not mutate the prior revision', (tester) async {
    final oldProfile = <String, dynamic>{
      'displayName': 'Gwani',
      'handle': 'gwani',
      'profession': 'Support',
      'biography': 'Original biography',
      'lifeStory': 'Original story',
      'languages': <String>['Hausa'],
      'talents': <String>['Teaching'],
      'goals': <String>['Help'],
    };
    final revision = AdminMasanaRevision(
      characterId: 'character_gwani',
      revision: 3,
      state: 'approved',
      profile: oldProfile,
    );
    Map<String, dynamic>? proposed;
    await tester.pumpWidget(MaterialApp(
      home: AdminMasanaRevisionForm(
        current: revision,
        onSave: (profile) async {
          proposed = profile;
          throw StateError('offline');
        },
      ),
    ));
    await tester.enterText(find.byKey(const ValueKey('masana-revision-biography')), 'New approved biography');
    await tester.ensureVisible(find.byKey(const ValueKey('masana-revision-submit')));
    await tester.tap(find.byKey(const ValueKey('masana-revision-submit')));
    await tester.pumpAndSettle();
    expect(proposed?['biography'], 'New approved biography');
    expect(oldProfile['biography'], 'Original biography');
    expect(find.textContaining('Revision not confirmed'), findsOneWidget);
    expect(tester.widget<TextFormField>(find.byKey(const ValueKey('masana-revision-biography'))).controller!.text,
      'New approved biography');
  });

}
