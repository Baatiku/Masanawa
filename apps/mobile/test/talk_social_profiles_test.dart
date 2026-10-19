import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/profile/person_profile_screen.dart';
import 'package:masanawa/src/screens/profile/persona_profile_screen.dart';
import 'package:masanawa/src/social/talk_social_profiles.dart';
import 'package:masanawa/src/state/talk_social_profile_state.dart';
import 'package:masanawa/src/talks/talk_models.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Profiles implements TalkSocialProfileTransport {
  bool following = false;

  static const talk = TalkDiscoveryItem(
    id: 'talk-1',
    title: 'Can small businesses compete globally?',
    hostName: 'Amina',
    isLive: false,
    listenerCount: 900,
  );

  @override
  Future<HumanProfile?> loadHuman(String handle) async => HumanProfile(
    handle: handle,
    displayName: 'Amina Yusuf',
    bio: 'Technology, startups and useful conversations.',
    followerCount: following ? 1201 : 1200,
    followingCount: 80,
    isFollowing: following,
    twinPublicId: 'amina-twin',
    twinDisplayName: 'Amina Twin',
    talks: const [talk],
  );

  @override
  Future<HumanProfile?> loadHumanByUserId(String userId) async =>
      userId == 'user-amina' ? loadHuman('amina') : null;

  @override
  Future<HumanProfile> setFollowing({
    required String handle,
    required bool following,
  }) async {
    this.following = following;
    return (await loadHuman(handle))!;
  }

  @override
  Future<HumanProfile> setFollowingUserId({
    required String userId,
    required bool following,
  }) async {
    if (userId != 'user-amina') throw StateError('Unknown user');
    return setFollowing(handle: 'amina', following: following);
  }

  @override
  Future<PersonaProfile?> loadPersona(String publicId) async {
    if (publicId == 'economist') {
      return const PersonaProfile(
        publicId: 'economist',
        displayName: 'Economist',
        kind: PersonaProfileKind.expert,
        seatFeeLabel: '₦300',
        isAvailable: true,
        role: 'Economics',
        bio: 'A Masanawa specialist for economic discussions.',
        topics: ['Economics', 'Business'],
        appearances: [talk],
        isVerified: true,
      );
    }
    return const PersonaProfile(
      publicId: 'amina-twin',
      displayName: 'Amina Twin',
      kind: PersonaProfileKind.twin,
      seatFeeLabel: '₦450',
      isAvailable: true,
      role: 'Technology',
      ownerHandle: 'amina',
      ownerDisplayName: 'Amina Yusuf',
      topics: ['Technology', 'Startups'],
    );
  }
}

Widget _app({
  required TalkSocialProfileTransport transport,
  required Widget home,
}) => ProviderScope(
  overrides: [talkSocialProfileTransportProvider.overrideWithValue(transport)],
  child: MaterialApp(
    theme: buildMasanawaTheme(brightness: Brightness.light),
    home: home,
  ),
);

class _RevokedProfiles extends _Profiles {
  bool available = true;
  @override
  Future<HumanProfile?> loadHuman(String handle) async =>
      available ? super.loadHuman(handle) : null;
}

class _OwnProfiles extends _Profiles {
  @override
  Future<HumanProfile?> loadHuman(String handle) async => HumanProfile(
    handle: handle,
    displayName: 'My public identity',
    followerCount: 0,
    followingCount: 0,
    isFollowing: false,
    isSelf: true,
  );
}

void main() {
  testWidgets('authoritative removal wins after successful follow', (
    tester,
  ) async {
    final transport = _RevokedProfiles();
    await tester.pumpWidget(
      _app(
        transport: transport,
        home: const PersonProfileScreen(handle: 'amina'),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('person-profile-follow')));
    await tester.pumpAndSettle();
    expect(find.text('Following'), findsOneWidget);
    transport.available = false;
    final container = ProviderScope.containerOf(
      tester.element(find.byType(PersonProfileScreen)),
    );
    container.invalidate(humanProfileProvider('amina'));
    await tester.pumpAndSettle();
    expect(find.text('Amina Yusuf'), findsNothing);
    expect(find.text('This profile is unavailable.'), findsOneWidget);
  });
  testWidgets(
    'own public identity uses owner controls instead of self follow',
    (tester) async {
      await tester.pumpWidget(
        _app(
          transport: _OwnProfiles(),
          home: const PersonProfileScreen(handle: 'amina'),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Edit profile'), findsOneWidget);
      expect(find.text('My Masana'), findsOneWidget);
      expect(find.byKey(const ValueKey('person-profile-follow')), findsNothing);
    },
  );
  testWidgets(
    'human and creator profile share identity without retired Talk publishing',
    (tester) async {
      final transport = _Profiles();

      await tester.pumpWidget(
        _app(
          transport: transport,
          home: PersonProfileScreen(handle: 'amina'),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Amina Yusuf'), findsOneWidget);
      expect(find.text('Follow'), findsOneWidget);
      expect(find.text('Can small businesses compete globally?'), findsNothing);
      expect(find.byType(GridView), findsNothing);

      await tester.tap(find.byKey(const ValueKey('person-profile-follow')));
      await tester.pumpAndSettle();
      expect(find.text('Following'), findsOneWidget);

      expect(find.text('Amina Twin'), findsNothing);
      expect(find.text('Public activity'), findsNothing);
      expect(
        find.text('Message'),
        findsNothing,
      ); // Human admission not wired yet.
    },
  );

  testWidgets(
    'Expert profile discloses Masana role and existing verification',
    (tester) async {
      final transport = _Profiles();
      await tester.pumpWidget(
        _app(
          transport: transport,
          home: const PersonaProfileScreen(publicId: 'economist'),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Economist'), findsWidgets);
      expect(find.text('Masana · Economics'), findsOneWidget);
      expect(find.byIcon(Icons.verified_rounded), findsOneWidget);
      expect(find.text('₦300'), findsOneWidget);
      expect(find.text('Economics'), findsWidgets);
    },
  );

  testWidgets(
    'retired personal profile offers discovery without exposing old actions',
    (tester) async {
      final transport = _Profiles();
      String? owner;

      await tester.pumpWidget(
        _app(
          transport: transport,
          home: PersonaProfileScreen(
            publicId: 'amina-twin',
            onOpenOwner: (handle) => owner = handle,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'This personal profile has been retired. Browse Masana contacts instead.',
        ),
        findsOneWidget,
      );
      expect(find.text('₦450'), findsNothing);
      expect(find.text('Owned by Amina Yusuf'), findsNothing);
      expect(owner, isNull);
    },
  );
}
