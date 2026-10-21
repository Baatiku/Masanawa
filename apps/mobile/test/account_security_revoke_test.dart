import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/settings/account_security_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() {
    const user = AuthUser(
      id: 'owner', name: 'Fixture', locale: 'en', status: 'ACTIVE',
      role: 'fan', isNewUser: false, createdAt: '2026-10-21T00:00:00Z',
    );
    return const SessionSignedIn(user, AuthTokens(
      accessToken: 'access', refreshToken: 'refresh',
      accessExpiresIn: 900, user: user,
    ));
  }
}

class _Api extends ApiClient {
  _Api() : super(dio: Dio(BaseOptions(baseUrl: 'https://test.invalid')));

  bool stillActive = true;
  int sessionReads = 0;
  int revocations = 0;

  @override
  Future<List<Map<String, dynamic>>> securitySessions() async {
    sessionReads++;
    return stillActive ? [
      {'sessionId': 'lost-device', 'clientLabel': 'Lost phone',
        'current': false, 'createdAt': '2026-10-21T00:00:00Z',
        'lastAccessAt': '2026-10-21T00:00:00Z'},
    ] : [];
  }

  @override
  Future<List<Map<String, dynamic>>> securityLoginHistory() async => [];

  @override
  Future<void> revokeSecuritySession(String sessionId) async {
    expect(sessionId, 'lost-device');
    revocations++;
  }
}

void main() {
  testWidgets('remote revoke stays unconfirmed until server list excludes device',
      (tester) async {
    final api = _Api();
    await tester.pumpWidget(ProviderScope(
      overrides: [
        apiClientProvider.overrideWithValue(api),
        sessionProvider.overrideWith(_Session.new),
      ],
      child: const MaterialApp(home: AccountSecurityScreen()),
    ));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Sign out device'));
    await tester.tap(find.text('Sign out device'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm revoke'));
    await tester.pumpAndSettle();

    expect(api.revocations, 1);
    expect(api.sessionReads, 2);
    expect(find.text('Lost phone'), findsOneWidget);
    expect(find.textContaining('Could not confirm whether that device signed out'),
        findsOneWidget);
  });
}
