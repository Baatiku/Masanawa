import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/screens/settings/account_contact_region_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  int _epoch = 1;
  @override int get authorizationEpoch => _epoch;

  SessionState _signedIn() {
    final user = AuthUser(id: 'same-account', name: 'Fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-28T00:00:00Z');
    return SessionSignedIn(user, AuthTokens(accessToken: 'fixture',
      refreshToken: 'fixture', accessExpiresIn: 900, user: user));
  }

  @override SessionState build() => _signedIn();
  void reauthenticate() {
    ++_epoch;
    state = _signedIn();
  }
}

void main() {
  testWidgets('private contact saves selected country, state and normalized phone',
      (tester) async {
    Map<String,dynamic>? captured;
    var patchCalls=0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (!options.path.endsWith('/v1/auth/profile/contact-geography')) {
        handler.reject(DioException(requestOptions: options,
          type: DioExceptionType.badResponse));
        return;
      }
      if (options.method == 'PATCH') {
        patchCalls++;
        captured = Map<String,dynamic>.from(options.data as Map);
        // The server committed, but the mobile connection lost the response.
        handler.reject(DioException(requestOptions:options,
          type:DioExceptionType.connectionError));
        return;
      }
      handler.resolve(Response<Map<String,dynamic>>(requestOptions: options,
        statusCode: 200,
        data: captured==null
          ? const {'countryIso': 'NG', 'subdivisionIso': 'NG-FC',
            'contactPhone': '+2348012345678', 'provenance': 'legacy_phone_hint'}
          : {...captured!, 'provenance': 'user_selected'}));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      supportedLocales: MasanawaLocalization.supportedLocales,
      localizationsDelegates: MasanawaLocalization.delegates,
      home: const AccountContactRegionScreen(),
    )));
    await tester.pumpAndSettle();
    expect(find.text('Recorded source: Legacy phone-code hint'), findsOneWidget);
    final national = find.byKey(const Key('phone-national-number'));
    expect(tester.widget<TextField>(national).controller!.text, '8012345678');
    await tester.enterText(national, '08031234567');
    await tester.pump();
    final save = find.text('Save private contact');
    await tester.ensureVisible(save);
    await tester.tap(save);
    await tester.pumpAndSettle();
    expect(captured, {'contactPhone': '+2348031234567',
      'countryIso': 'NG', 'subdivisionIso': 'NG-FC'});
    expect(patchCalls,1,reason:'Uncertain response must trigger GET, not duplicate write');
    expect(find.text('Recorded source: Your selection'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('same-account reauthentication closes private contact region',
      (tester) async {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path.endsWith('/v1/auth/profile/contact-geography')) {
        handler.resolve(Response<Map<String,dynamic>>(
          requestOptions: options, statusCode: 200,
          data: const {'countryIso': 'NG', 'subdivisionIso': 'NG-FC',
            'contactPhone': '+2348012345678', 'provenance': 'user_selected'},
        ));
        return;
      }
      handler.reject(DioException(requestOptions: options,
        type: DioExceptionType.badResponse));
    }));
    addTearDown(() => dio.close(force: true));

    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      supportedLocales: MasanawaLocalization.supportedLocales,
      localizationsDelegates: MasanawaLocalization.delegates,
      home: Scaffold(body: Builder(builder: (context) =>
      ElevatedButton(onPressed: () => Navigator.of(context).push<void>(
        MaterialPageRoute(builder: (_) => const AccountContactRegionScreen())),
        child: const Text('Open private details')))))));
    await tester.tap(find.text('Open private details'));
    await tester.pumpAndSettle();
    expect(find.text('Recorded source: Your selection'), findsOneWidget);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(AccountContactRegionScreen)));
    (container.read(sessionProvider.notifier) as _Session).reauthenticate();
    await tester.pumpAndSettle();
    expect(find.byType(AccountContactRegionScreen), findsNothing);
    expect(find.textContaining('+2348012345678'), findsNothing,
      reason: 'A new credential epoch must not retain old private contact data');
    expect(tester.takeException(), isNull);
  });
}
