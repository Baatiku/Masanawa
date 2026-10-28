import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/profile/person_profile_screen.dart';
import 'package:masanawa/src/social/talk_social_profiles.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/state/talk_social_profile_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Session extends SessionController {
  @override SessionState build() {
    final user = AuthUser(id: 'fan-owner', name: 'Owner', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-28T00:00:00Z');
    return SessionSignedIn(user, AuthTokens(accessToken: 'test',
      refreshToken: 'test', accessExpiresIn: 900, user: user));
  }
}

void main() {
  Future<void> showProfile(WidgetTester tester, {required bool isSelf}) async {
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      humanProfileProvider('owner').overrideWith((ref) async => HumanProfile(
        handle: 'owner', displayName: 'Owner', followerCount: 0,
        followingCount: 0, isFollowing: false, isSelf: isSelf)),
    ], child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const PersonProfileScreen(handle: 'owner'),
    )));
    await tester.pumpAndSettle();
  }

  testWidgets('owner profile shows My Posts alongside Edit profile',
      (tester) async {
    await showProfile(tester, isSelf: true);
    expect(find.byKey(const ValueKey('person-profile-edit')), findsOneWidget);
    final posts = find.byKey(const ValueKey('person-profile-my-posts'));
    expect(posts, findsOneWidget);
    expect(tester.widget<OutlinedButton>(posts).onPressed, isNotNull);
    expect(tester.takeException(), isNull);
  });

  testWidgets('another person has no private My Posts management',
      (tester) async {
    await showProfile(tester, isSelf: false);
    expect(find.byKey(const ValueKey('person-profile-my-posts')), findsNothing);
    expect(find.text('Edit profile'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
