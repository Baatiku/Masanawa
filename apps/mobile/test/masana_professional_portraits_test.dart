import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/agents/agent_directory.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('all 26 professional AI Masana identities have packaged portrait and banner', () async {
    const names = [
      "Mallam Gwani",
      "Malamah Gwana",
      "Dr. Amina Yusuf",
      "Nurse Fatima Abdullahi",
      "Pharm. Salim Ibrahim",
      "Barr. Zainab Bello",
      "Prof. Sadiq Musa",
      "Engr. Musa Garba",
      "Engr. Bello Shehu",
      "Engr. Umar Lawal",
      "Arc. Safiya Kabir",
      "Prof. Ruqayya Haruna",
      "Dr. Idris Muhammad",
      "Prof. Maryam Usman",
      "Dr. Kabir Ahmad",
      "Prof. Hauwa Sani",
      "Dr. Yusuf Danladi",
      "Prof. Haruna Adamu",
      "Dr. Bilkisu Suleiman",
      "Dr. Nura Abdullahi",
      "Dr. Aisha Tanko",
      "Prof. Abdulrahman Isah",
      "Ustazah Layla Hassan",
      "Prof. Grace Okonkwo",
      "Madam Asha Verma",
      "Prof. Mei Lin",
    ];
    expect(names.length, 26);
    for (final name in names) {
      final photo = portraitPhotoAssetFor(name);
      final avatar = portraitAssetFor(name);
      final banner = bannerAssetFor(name);
      expect(photo, isNotNull, reason: 'Photo missing for $name');
      expect(photo!.endsWith('.webp'), isTrue, reason: 'Expected .webp for $name');
      final bytes = await rootBundle.load(photo);
      expect(bytes.lengthInBytes, greaterThan(1000), reason: 'Photo byte size for $name');
      expect(avatar, isNotNull, reason: name);
      expect(banner, isNotNull, reason: name);
      expect((await rootBundle.loadString(avatar!)).contains('<svg'), true);
      expect((await rootBundle.loadString(banner!)).contains('<svg'), true);
    }
    // Server-assigned canonical IDs alone never imply which bundled portrait
    // belongs to the agent. Only an approved server portraitKey may bind it.
    const keys = [
      'gwani','gwana','amina','fatima','salim','zainab','sadiq',
      'musa','bello','umar','safiya','ruqayya','idris','maryam',
      'kabir','hauwa','yusuf','haruna','bilkisu','nura','aisha',
      'abdulrahman','layla','grace','asha','mei',
    ];
    expect(keys.toSet().length, 26);
    for (var index = 0; index < keys.length; index++) {
      final key = keys[index];
      final path = portraitPhotoAssetForKey(key);
      expect(path, 'assets/masana/portraits/$key.webp');
      expect((await rootBundle.load(path!)).lengthInBytes, greaterThan(1000));
      expect(bannerAssetForKey(key), isNotNull);
    }
    expect(portraitPhotoAssetForKey('amina-lookalike'), isNull);
    expect(portraitPhotoAssetForKey(''), isNull);
    expect(portraitPhotoAssetForKey(null), isNull);
    final renamed = AgentDirectoryEntry(
      characterId: 'character_approved',
      characterVersionId: 'version_1',
      displayName: 'Custom professional alias',
      roleLabel: 'Medicine',
      about: 'Expert',
      presence: AgentPresence.unknown,
      portraitKey: 'amina',
    );
    expect(renamed.portraitKey, 'amina');
    expect(portraitPhotoAssetForKey(renamed.portraitKey), endsWith('/amina.webp'));
    // Backward compatibility for legacy aliases
    expect(portraitPhotoAssetFor("Mallam Gwani Bodi"), isNotNull);
    expect(portraitPhotoAssetFor("Malamah Gwana Sulafat"), isNotNull);
    expect(portraitPhotoAssetFor('Admin-managed custom AI'), isNull);
    expect(portraitAssetFor("Mallam Gwani Bodi"), isNotNull);
    expect(portraitAssetFor("Malamah Gwana Sulafat"), isNotNull);
    expect(portraitAssetFor('Admin-managed custom AI'), isNull);
  });

  testWidgets('call history cannot guess a portrait from a renamed or reused display label', (tester) async {
    const authoritative = AgentDirectoryEntry(
      characterId: 'character_one',
      characterVersionId: 'version_1',
      displayName: 'Custom alias',
      roleLabel: 'Medicine',
      about: '',
      presence: AgentPresence.unknown,
      portraitKey: 'amina',
    );
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Column(children: [
      MasanaPortraitAvatar(
        characterId: 'character_one',
        agent: authoritative,
        displayName: 'Another name',
      ),
      MasanaPortraitAvatar(
        characterId: 'character_two',
        agent: authoritative,
        displayName: 'Dr. Amina Yusuf',
      ),
      MasanaPortraitAvatar(
        characterId: 'character_unknown',
        displayName: 'Mallam Gwani',
      ),
    ]))));
    final portraits = tester.widgetList<Image>(find.byType(Image)).toList();
    expect(portraits.length, 1, reason: 'Only a matching canonical identity may select bundled media');
    expect((portraits.single.image as AssetImage).assetName,
        'assets/masana/portraits/amina.webp');
    expect(find.text('M'), findsOneWidget,
      reason:'An unknown caller must show a neutral initial, not a similarly named Masana');
    expect(find.text('D'), findsOneWidget,
      reason:'A mismatched directory entry must not supply another Masana initial');
  });

  testWidgets('shared portrait speaks one safe identity label for photo and missing ID', (tester) async {
    final semantics = tester.ensureSemantics();
    const authoritative = AgentDirectoryEntry(
      characterId: 'character_one', characterVersionId:'version_1',
      displayName:'Approved Masana', roleLabel:'Medicine', about:'',
      presence:AgentPresence.unknown, portraitKey:'amina',
      avatarUrl:'https://example.org/untrusted.jpg',
    );
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Column(children: [
      MasanaPortraitAvatar(characterId:'character_one',agent:authoritative),
      MasanaPortraitAvatar(characterId:'character_two',agent:authoritative,
        displayName:'Different Doctor',avatarUrl:'https://example.org/other.jpg'),
      MasanaPortraitAvatar(characterId:'character_missing',agent:authoritative),
    ]))));
    expect(find.bySemanticsLabel('Profile avatar for Approved Masana'),findsOneWidget);
    expect(find.bySemanticsLabel('Profile avatar for Different Doctor'),findsOneWidget);
    expect(find.bySemanticsLabel('Masana profile avatar'),findsOneWidget);
    expect(find.text('D'),findsOneWidget);
    expect(find.text('M'),findsOneWidget);
    final images = tester.widgetList<Image>(find.byType(Image)).toList();
    expect(images,hasLength(1),reason:'Mismatched IDs must not render an approved asset or URL');
    expect((images.single.image as AssetImage).assetName,
      'assets/masana/portraits/amina.webp');
    semantics.dispose();
  });

}
