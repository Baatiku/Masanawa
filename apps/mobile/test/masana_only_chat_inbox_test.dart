import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/chat/unified_chat_inbox.dart';
import 'package:masanawa/src/state/session_state.dart';

const _user = AuthUser(
  id: 'test-masana-only',name: 'Reader',locale: 'en',status: 'ACTIVE',
  role: 'USER',isNewUser: false,createdAt: '2026-10-24T00:00:00Z',
);
class _Session extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_user, AuthTokens(
    accessToken: 'signed-in-fixture', refreshToken: 'not-production',
    accessExpiresIn: 900, user: _user,
  ));
}
void main() {
  testWidgets('Masana-only inbox never subscribes to legacy human messages',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_Session.new),
      ],
      child: const MaterialApp(
        home: Scaffold(body: UnifiedChatInbox(
          masanaThreads: [],
          masanaRow: _noRow,
        )),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('People'), findsNothing);
    expect(find.text('Unread'), findsOneWidget);
    expect(find.text('Archived'), findsOneWidget);
    expect(find.text('Message requests'), findsNothing);
    expect(find.text('No conversations yet'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
Widget _noRow(dynamic _) => const SizedBox.shrink();
