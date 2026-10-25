import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/settings/notification_preferences_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() => signedIn('owner');
  void switchAccount() => state = signedIn('other');
  SessionState signedIn(String id) {
    final user = AuthUser(id: id, name: 'Fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-25T00:00:00Z');
    return SessionSignedIn(user, AuthTokens(accessToken: 'fixture',
      refreshToken: 'fixture', accessExpiresIn: 900, user: user));
  }
}

void main() {
  testWidgets('Activity opens first and Preferences opens its own content', (tester) async {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      handler.resolve(Response(requestOptions: options, statusCode: 200,
        data: options.path.endsWith('/history') ? {'items': []} : {
          'preferences': {'messages': true, 'calls': true, 'status': true,
            'wallet': true, 'quietStart': null, 'quietEnd': null,
            'utcOffsetMinutes': 0},
        }));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    expect(tester.getCenter(find.text('Activity')).dx,
      lessThan(tester.getCenter(find.text('Preferences')).dx));
    expect(find.text('No recent alerts yet.'), findsOneWidget);
    expect(find.text('Choose your updates'), findsNothing);
    await tester.tap(find.text('Preferences'));
    await tester.pumpAndSettle();
    expect(find.text('Choose your updates'), findsOneWidget);
    expect(find.text('No recent alerts yet.'), findsNothing);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(NotificationPreferencesScreen)));
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    await tester.pumpAndSettle();
    expect(find.text('No recent alerts yet.'), findsOneWidget);
    expect(find.text('Choose your updates'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
