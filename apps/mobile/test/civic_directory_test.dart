import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/civic/civic_catalog.dart';
import 'package:masanawa/src/civic/civic_directory_screen.dart';
import 'package:masanawa/src/civic/civic_leader_dossiers.dart';
import 'package:masanawa/src/civic/civic_officeholders.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  test('every state and the FCT have unique civic identities', () {
    final ids = civicCatalog.map((e) => e.id).toList();
    expect(ids.toSet(), hasLength(ids.length));
    expect(civicStates.where((e) => e.level == 'State'), hasLength(36));
    expect(civicStates.where((e) => e.level == 'FCT'), hasLength(1));
    for (final entry in civicCatalog) {
      final uri = Uri.parse(entry.sourceUrl);
      expect(uri.scheme, 'https', reason: entry.id);
      expect(uri.userInfo, isEmpty, reason: entry.id);
      if (entry.parentId != null) {
        expect(civicById(entry.parentId!), isNotNull, reason: entry.id);
        expect(entry.parentId, isNot(entry.id));
      }
    }
  });

  test('historic leaders preserve separate offices and repeated tenures', () {
    expect(civicHeadsOfGovernment, hasLength(15));
    expect(civicById('buhari')!.tenures, hasLength(2));
    expect(civicById('obasanjo')!.tenures, hasLength(2));
    expect(civicById('balewa')!.tenures.single.title, 'Prime Minister of Nigeria');
    expect(civicById('tinubu')!.tenures.first.ongoing, isTrue);
    expect(civicById('buhari')!.deceased, isTrue);
  });

  test('all national leaders have researched, structured biographies', () {
    final headIds = civicHeadsOfGovernment.map((e) => e.id).toSet();
    expect(civicLeaderDossiers.keys.toSet(), headIds);
    for (final entry in civicHeadsOfGovernment) {
      final dossier = civicLeaderDossiers[entry.id]!;
      expect(dossier.hasAllProfileSections, isTrue, reason:entry.name);
      expect(dossier.governmentRecord.toSet().length, dossier.governmentRecord.length);
      expect(Uri.parse(dossier.sourceUrl).scheme, 'https');
    }
  });

  test('36 current governors plus the FCT minister have unique sourced offices', () {
    expect(civicExecutiveOfficeholders, hasLength(37));
    expect(civicExecutiveOfficeholders.map((e) => e.jurisdictionId).toSet(),
      civicStates.map((e) => e.id).toSet());
    for (final official in civicExecutiveOfficeholders) {
      expect(official.name.trim(), isNotEmpty);
      expect(Uri.parse(official.sourceUrl).scheme, 'https');
      expect(civicById(official.jurisdictionId), isNotNull);
    }
    expect(civicExecutiveFor('fct')?.name,'Ezenwo Nyesom Wike');
    expect(civicExecutiveFor('state-kano')?.name,'Abba Kabir Yusuf');
    expect(civicLegislativeLeadership,hasLength(4));
    expect(civicLeadersForChamber('senate'),hasLength(2));
    expect(civicLeadersForChamber('house'),hasLength(2));
  });

  test('sector, category and responsibility search combine without inventing contacts', () {
    expect(searchCivicDirectory(query:'NIN').map((e)=>e.id),contains('nimc'));
    expect(searchCivicDirectory(category:'History'),hasLength(14));
    expect(searchCivicDirectory(category:'Agencies',sector:'Identity').map((e)=>e.id),contains('nis'));
    expect(searchCivicDirectory(category:'Directorates').map((e)=>e.id),contains('nimc-it'));
    expect(searchCivicDirectory(query:'Abba Kabir Yusuf').map((e)=>e.id),contains('state-kano'));
    expect(searchCivicDirectory(query:'Nyesom Wike').map((e)=>e.id),contains('fct'));
    expect(searchCivicDirectory(query:'Godswill Akpabio').map((e)=>e.id),contains('senate'));
    expect(searchCivicDirectory(category:'Leaders'),hasLength(15));
    expect(searchCivicDirectory(category:'States'),hasLength(37));
    expect(searchCivicDirectory(category:'Legislature').map((e)=>e.id),
      containsAll(['legislature','national-assembly','senate','house']));
    expect(searchCivicDirectory(query:'no-person-matches-this-string'),isEmpty);
  });

  test('server-linked civic guide is account-cached without stale chat authority', () {
    final agent = AgentDirectoryEntry.fromJson({
      'characterId':'character-test','characterVersionId':'version-test',
      'displayName':'NIMC · AI Guide','roleLabel':'Independent civic AI guide',
      'civicAgencyId':'nimc',
    });
    expect(agent.civicAgencyId, 'nimc');
    expect(agent.withUnverifiedPresence().civicAgencyId, isNull);
    expect(AgentDirectoryEntry.fromJson({...agent.toJson(),'civicAgencyId':'../nimc'}).civicAgencyId,isNull);
  });

  testWidgets('directory filters and clears search with no blank-screen state', (tester) async {
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const CivicDirectoryScreen()));
    expect(find.text('Explore Nigeria'),findsOneWidget);
    await tester.enterText(find.byType(TextField),'NIN');
    await tester.pumpAndSettle();
    expect(find.text('National Identity Management Commission'),findsOneWidget);
    await tester.tap(find.byTooltip('Clear search'));
    await tester.pumpAndSettle();
    expect(find.textContaining('civic profiles'),findsOneWidget);
  });
}
