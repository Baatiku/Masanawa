import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/call_history.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/calls/masana_only_calls_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _SignedIn extends SessionController {
  @override
  SessionState build() {
    const user = AuthUser(
      id: 'owner-1', name: 'Fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-11T00:00:00Z',
    );
    return const SessionSignedIn(user, AuthTokens(
      accessToken: 'fixture',
      refreshToken: 'fixture',
      accessExpiresIn: 900,
      user: user,
    ));
  }
}

class _History implements CallHistoryTransport {
  @override
  Future<CallHistoryPage> loadPage({
    String? cursor, String query = '', CancelToken? cancelToken,
  }) async => CallHistoryPage(calls: [
    CallHistoryItem(callId: 'single', characterId: 'masana-a',
      displayName: 'Amina', state: 'ended', createdAt: DateTime.utc(2026, 10, 21)),
    CallHistoryItem(callId: 'group', characterId: 'masana-a',
      displayName: 'Legacy group', state: 'ended',
      groupId: 'group-old', createdAt: DateTime.utc(2026, 10, 21)),
  ]);
}

void main() {
  testWidgets('only individual Masana history is shown, no human or group call CTA',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        callHistoryTransportProvider.overrideWithValue(_History()),
      ],
      child: MaterialApp(
        theme: buildMasanawaTheme(brightness: Brightness.light),
        home: const MasanaOnlyCallsScreen(),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Amina'), findsOneWidget);
    expect(find.text('Legacy group'), findsNothing);
    expect(find.text('Call a person'), findsNothing);
    expect(find.text('Call multiple Masana'), findsNothing);
    expect(find.byTooltip('New call'), findsNothing);
  });
}
