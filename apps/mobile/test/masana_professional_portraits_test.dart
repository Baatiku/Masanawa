import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
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
}
