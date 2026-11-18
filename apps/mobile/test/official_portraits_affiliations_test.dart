import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/screens/profile/persona_affiliations.dart';

const photo =
    'https://api.masanawa.com/public/persona-media/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
PublicOfficialIdentity official() => PublicOfficialIdentity(
  'Example official',
  'Governor',
  'https://example.org/bio',
  DateTime.now().toUtc().subtract(const Duration(days: 1)),
  DateTime.now().toUtc().add(const Duration(days: 1)),
  portrait: const OfficialPortrait(
    photo,
    'https://example.org/photo',
    'Photographer',
    'Attributed source photograph',
    null,
  ),
  party: const OfficialParty(
    'APC',
    'All Progressives Congress',
    photo,
    'https://example.org/roster',
    '2026-10-29',
  ),
);
AgentDirectoryEntry person() => AgentDirectoryEntry(
  characterId: 'person',
  characterVersionId: 'v1',
  displayName: 'Example official',
  roleLabel: 'Governor',
  about: 'AI simulation',
  presence: AgentPresence.unknown,
  countryCode: 'NG',
  countryName: 'Nigeria',
  publicOfficialSimulation: true,
  publicOfficial: official(),
);
void main() {
  test(
    'public media admission excludes arbitrary hosts, queries and cache verification',
    () {
      expect(isOfficialPublicMediaUrl(photo), isTrue);
      for (final bad in [
        '$photo?token=secret',
        photo.replaceFirst('api.masanawa.com', 'evil.test'),
        'https://api.masanawa.com/private/a',
      ])
        expect(isOfficialPublicMediaUrl(bad), isFalse);
      final cached = person().withUnverifiedPresence();
      expect(cached.publicOfficial, isNull);
    },
  );
  testWidgets(
    'canonical approved portrait reaches the image renderer; a mismatched identity cannot borrow it',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaPortraitAvatar(agent: person(), characterId: 'person'),
          ),
        ),
      );
      expect(find.byType(CachedNetworkImage), findsOneWidget);
      expect(
        tester
            .widget<CachedNetworkImage>(find.byType(CachedNetworkImage))
            .imageUrl,
        photo,
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaPortraitAvatar(agent: person(), characterId: 'other'),
          ),
        ),
      );
      expect(find.byType(CachedNetworkImage), findsNothing);
    },
  );
  testWidgets(
    'country and party wrap at narrow large text and link dated roster source',
    (tester) async {
      tester.view.physicalSize = const Size(320, 700);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      String? opened;
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2)),
            child: Scaffold(
              body: PersonaAffiliations(
                agent: person(),
                onSource: (s) => opened = s,
              ),
            ),
          ),
        ),
      );
      expect(find.text('Nigeria'), findsOneWidget);
      expect(find.text('APC'), findsOneWidget);
      await tester.tap(find.text('APC'));
      expect(opened, 'https://example.org/roster');
      expect(tester.takeException(), isNull);
    },
  );
}
