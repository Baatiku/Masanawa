import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/public_official_badge.dart';

Map<String, dynamic> profile() => {
  'characterId': 'official-1',
  'characterVersionId': 'v1',
  'displayName': 'Example Official',
  'roleLabel': 'Governor',
  'about': 'AI simulation',
  'publicOfficial': {
    'officialName': 'Example Official',
    'office': 'Governor',
    'identitySourceUrl': 'https://example.gov.ng/governor',
    'reviewedAt': '2020-01-01T00:00:00Z',
    'reviewExpiresAt': '2099-01-01T00:00:00Z',
    'verification': 'source_reviewed',
    'representation': 'ai_simulation',
  },
};
void main() {
  test(
    'optional birth and origin facts survive live parsing but never offline verification',
    () {
      final raw = profile();
      raw['publicOfficial'] = Map<String, dynamic>.from(
        raw['publicOfficial'] as Map,
      );
      (raw['publicOfficial'] as Map)['biography'] =
          'A full reviewed public biography.';
      (raw['publicOfficial'] as Map)['biographicalFacts'] = {
        'dateOfBirth': '1964-05-14',
        'stateOfOrigin': 'Kaduna',
      };
      final agent = AgentDirectoryEntry.fromJson(raw);
      expect(agent.publicOfficial?.dateOfBirth, '1964-05-14');
      expect(
        agent.publicOfficial?.biography,
        'A full reviewed public biography.',
      );
      expect(agent.publicOfficial?.stateOfOrigin, 'Kaduna');
      expect(
        AgentDirectoryEntry.fromJson(agent.toJson()).publicOfficial,
        isNull,
      );
      for (final birth in ['1964-02-30', '3000-01-01', 'not-a-date']) {
        (raw['publicOfficial'] as Map)['biographicalFacts'] = {
          'dateOfBirth': birth,
        };
        expect(
          AgentDirectoryEntry.fromJson(raw).publicOfficial?.dateOfBirth,
          isNull,
        );
      }
    },
  );
  test(
    'fresh reviewed metadata earns provenance tick; offline cache preserves AI disclosure only',
    () {
      final agent = AgentDirectoryEntry.fromJson(profile());
      expect(agent.publicOfficialSimulation, isTrue);
      expect(agent.publicOfficial?.current, isTrue);
      final cached = AgentDirectoryEntry.fromJson(
        agent.toJson(),
      ).withUnverifiedPresence();
      expect(cached.publicOfficial, isNull);
      expect(cached.publicOfficialSimulation, isTrue);
      final bad = profile();
      (bad['publicOfficial'] as Map)['reviewExpiresAt'] =
          '2021-01-01T00:00:00Z';
      expect(AgentDirectoryEntry.fromJson(bad).publicOfficial, isNull);
      (bad['publicOfficial'] as Map)['identitySourceUrl'] = 'javascript:fake';
      expect(AgentDirectoryEntry.fromJson(bad).publicOfficial, isNull);
    },
  );
  testWidgets(
    'verification explains AI/source status and never implies endorsement',
    (tester) async {
      final identity = AgentDirectoryEntry.fromJson(profile()).publicOfficial!;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: PublicOfficialBadge(identity: identity)),
        ),
      );
      expect(find.byIcon(Icons.verified_rounded), findsOneWidget);
      final tip = tester.widget<Tooltip>(find.byType(Tooltip));
      expect(tip.message, contains('Not the official'));
      expect(tip.message, contains('Source-reviewed AI persona'));
    },
  );
}
