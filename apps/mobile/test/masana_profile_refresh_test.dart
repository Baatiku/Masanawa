import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/screens/profile/masana_profile_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';

const old = AgentDirectoryEntry(characterId: 'character_amina', characterVersionId: 'v1',
  displayName: 'Dr. Amina', roleLabel: 'Medicine', about: 'Long old description',
  greeting: 'Long old greeting', presence: AgentPresence.unknown);
const fresh = AgentDirectoryEntry(characterId: 'character_amina', characterVersionId: 'v2',
  displayName: 'Dr. Amina', roleLabel: 'Medicine', about: 'Long old description',
  presence: AgentPresence.unknown, portraitKey: 'amina');
class Directory extends AgentDirectoryController {
  @override AgentDirectoryState build() => const AgentDirectoryState(loading: false, agents: [old]);
  void update() => state = const AgentDirectoryState(loading: false, agents: [fresh]);
}
class SignedOut extends SessionController {
  @override SessionState build() => const SessionSignedOut();
}
void main() {
  testWidgets('profile follows canonical portrait refresh and promotes recent posts without biography', (tester) async {
    final directory = Directory();
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(() => directory),
      sessionProvider.overrideWith(SignedOut.new),
    ], child: const MaterialApp(home: MasanaProfileScreen(agent: old))));
    await tester.pump();
    expect(find.text('About'), findsNothing);
    expect(find.text('Long old description'), findsNothing);
    expect(find.text('Long old greeting'), findsNothing);
    expect(find.text('Recent posts'), findsOneWidget);
    directory.update();
    await tester.pump();
    final avatar = tester.widget<MasanaPortraitAvatar>(find.byType(MasanaPortraitAvatar));
    expect(avatar.agent?.characterId, old.characterId);
    expect(avatar.agent?.portraitKey, 'amina');
    expect(tester.takeException(), isNull);
  });
}
