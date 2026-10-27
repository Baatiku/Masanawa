import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/router/app_router.dart';
import 'package:masanawa/src/screens/twin/shell_tab.dart';

void main() {
  test('R17 routes only approved root tabs to indices', () {
    expect(shellRootTabIndex(null), 0);
    expect(shellRootTabIndex('chats'), 1);
    expect(shellRootTabIndex('status'), 0);
    expect(shellRootTabIndex('wallet'), 2);
    expect(shellRootTabIndex('calls'), 3);
    expect(shellRootTabIndex('data'), 4);
    expect(shellRootTabIndex('rooms'), 0);
    expect(shellRootTabIndex('home'), 0);
    expect(shellRootTabIndex('agents'), 0);
    expect(shellRootTabIndex('talk'), 0);
  });

  test('R17 canonical route targets round-trip through tab parser', () {
    for (final tab in MasanawaRootTab.values) {
      final uri = Uri.parse(tab.location);
      final restored = MasanawaRootTab.fromQuery(
        uri.queryParameters['tab'],
      );
      expect(restored, tab);
      expect(uri.path, '/home');
      expect(shellRootTabIndex(uri.queryParameters['tab']), tab.index);
    }
    expect(MasanawaRootTab.fromQuery('create'), MasanawaRootTab.status);
    expect(MasanawaRootTab.fromQuery('activity'), MasanawaRootTab.status);
    expect(MasanawaRootTab.status.location, '/home');
    expect(MasanawaRootTab.chats.location, '/home?tab=chats');
  });

  test('R17 old shell links retain their original destination', () {
    expect(legacyShellDestination('create'), '/home?tab=status');
    expect(legacyShellDestination('activity'), '/home?tab=status');
    expect(legacyShellDestination('agents'), '/home?tab=chats');
    expect(legacyShellDestination('wallet'), '/home?tab=wallet');
    expect(legacyShellDestination('rooms'), '/home?tab=status');
    expect(legacyShellDestination('talk'), '/home?tab=status');
    expect(legacyShellDestination('home'), '/home?tab=status');
    expect(legacyShellDestination('you'), isNull);
    expect(legacyShellDestination(null), isNull);
  });
  test('first-time account completion lands on the same Home tab', () {
    final signup = File('lib/src/screens/onboarding/name_screen.dart').readAsStringSync();
    expect(signup, contains("context.go('/home');"));
    expect(signup, isNot(contains("context.go('/chats');")));
  });
}
