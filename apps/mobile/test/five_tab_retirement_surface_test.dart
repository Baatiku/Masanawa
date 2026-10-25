import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Source-level regression guard for currently reachable consumer surfaces.
/// These are *not* a substitute for widget/device or server authorization tests.
String _source(String path) => File('lib/src/$path').readAsStringSync();

void main() {
  test('people remain social-only: never start human chats, calls or Rooms', () {
    final profile = _source('screens/profile/person_profile_screen.dart');
    expect(profile, contains("person-profile-follow"));
    expect(profile, contains("person-profile-edit"));
    for (final retired in [
      'humanConversationStart(',
      'humanCallStart(',
      '_profileRoomsProvider',
      'MyMasanaScreen',
      "'/rooms/",
    ]) {
      expect(profile, isNot(contains(retired)), reason: retired);
    }
  });

  test('search never fetches retired Rooms or advertises Rooms', () {
    final search = _source('screens/search/unified_search_screen.dart');
    expect(search, contains("Recent Status matches"));
    expect(search, contains("MasanaInboxSearchItem"));
    for (final retired in ['roomCommunityApiProvider', 'CommunityRoom',
                           "heading('Rooms')", '/rooms/', 'Rooms, Status']) {
      expect(search, isNot(contains(retired)), reason: retired);
    }
  });

  test('Masana contacts never expose humans or persona creation', () {
    final roster = _source('screens/chat/masana_list_screen.dart');
    expect(roster, contains("Search Masana"));
    for (final retired in ['HumanContactsList', 'humanCallStart(',
                           'Create Masana', "Tab(text: 'Humans')",
                           'MyMasanaScreen']) {
      expect(roster, isNot(contains(retired)), reason: retired);
    }
  });

  test('settings and profiles do not open retired creator and Room flows', () {
    final settings = _source('screens/settings/settings_screen.dart');
    final editor = _source('screens/profile/edit_profile_screen.dart');
    final masana = _source('screens/profile/masana_profile_screen.dart');
    expect(settings, isNot(contains('settings-my-masana')));
    expect(settings, contains('Chats · Status · Wallet · Calls · Data'));
    expect(editor, isNot(contains('MyMasanaScreen')));
    expect(masana, isNot(contains('/rooms/')));
    expect(masana, isNot(contains('Creator')));
  });

  test('legacy human share and incoming polling cannot mount from root', () {
    final router = _source('router/app_router.dart');
    expect(router, isNot(contains('ShareIntakeScreen(')));
    expect(router, isNot(contains('IncomingCallCoordinator(')));
    expect(router, contains("'/home?tab=chats'"));
  });

  test('chat composer no longer offers video, document, location, poll', () {
    final chat = _source('screens/chat/ai_chat_screen.dart');
    final begin = chat.indexOf('void _openAttachSheet()');
    final end = chat.indexOf('Future<void> _pickAudio()', begin);
    expect(begin, greaterThanOrEqualTo(0));
    expect(end, greaterThan(begin));
    final sheet = chat.substring(begin, end);
    for (final allowed in ["label: 'Camera'", "label: 'Gallery'",
                           "label: 'Audio'"]) {
      expect(sheet, contains(allowed));
    }
    for (final retired in ["label: 'Video'", "label: 'Document'",
                           "label: 'Location'", "label: 'Poll'",
                           "label: 'Contact'"]) {
      expect(sheet, isNot(contains(retired)));
    }
    expect(chat, isNot(contains("value: 'room'")));
  });

  test('retired Rooms and Videos feature packages contain no source files', () {
    expect(Directory('lib/src/features/rooms').existsSync(), isFalse);
    expect(Directory('lib/src/features/videos').existsSync(), isFalse);
  });

  test('notification controls only offer active categories', () {
    final notifications =
        _source('screens/settings/notification_preferences_screen.dart');
    final start = notifications.indexOf('const notificationCategories =');
    final end = notifications.indexOf('// Keep the old keys', start);
    final visible = notifications.substring(start, end);
    expect(visible, contains("'messages':"));
    expect(visible, contains("'status':"));
    expect(visible, isNot(contains("'rooms':")));
    expect(visible, isNot(contains("'p2p':")));
  });
}
