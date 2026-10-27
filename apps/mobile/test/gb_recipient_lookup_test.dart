import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_recipient_lookup.dart';
import 'package:masanawa/src/state/session_state.dart';

AuthUser _user(String id) => AuthUser(
  id: id,
  name: 'Fan',
  locale: 'en',
  status: 'ACTIVE',
  role: 'fan',
  isNewUser: false,
  createdAt: '2026-10-25T00:00:00Z',
);

class _Session extends SessionController {
  @override
  SessionState build() {
    final me = _user('sender_a');
    return SessionSignedIn(
      me,
      AuthTokens(
        accessToken: 'a',
        refreshToken: 'r',
        accessExpiresIn: 600,
        user: me,
      ),
    );
  }

  void switchAccount() {
    final me = _user('sender_b');
    state = SessionSignedIn(
      me,
      AuthTokens(
        accessToken: 'b',
        refreshToken: 'r2',
        accessExpiresIn: 600,
        user: me,
      ),
    );
  }
}

class _Lookup implements GbRecipientLookupTransport {
  final requested = <String>[];
  Completer<GbRecipientIdentity>? pending;
  GbRecipientIdentity? result;
  bool offline = false;
  @override
  Future<GbRecipientIdentity> lookup(
    String exactHandle, {
    CancelToken? cancellation,
  }) async {
    requested.add(exactHandle);
    if (offline) throw StateError('offline');
    if (pending != null) return pending!.future;
    return result ?? (throw StateError('not found'));
  }
}

void main() {
  test('accepts only complete exact handles and matching server identity', () {
    expect(exactGbRecipientHandle('@BELLO.User'), 'bello.user');
    expect(exactGbRecipientHandle('Be'), isNull);
    expect(exactGbRecipientHandle('a..'), 'a..');
    expect(exactGbRecipientHandle('someone@example.com'), isNull);
    expect(
      GbRecipientIdentity.read({
        'recipient': {
          'id': 'person-1',
          'username': 'bello.user',
          'displayName': 'Bello',
        },
      }, 'bello.user').id,
      'person-1',
    );
    expect(
      () => GbRecipientIdentity.read({
        'recipient': {
          'id': 'another',
          'username': 'someone.else',
          'displayName': 'Bello',
        },
      }, 'bello.user'),
      throwsFormatException,
    );
  });

  test('recipient avatar comes only from a safe server profile URL', () {
    Map<String, dynamic> response(String url) => {
      'recipient': {
        'id': 'person-1',
        'username': 'bello.user',
        'displayName': 'Bello',
        'avatarUrl': url,
      },
    };
    expect(
      GbRecipientIdentity.read(
        response('https://media.example/avatar.png'),
        'bello.user',
      ).avatarUrl,
      'https://media.example/avatar.png',
    );
    for (final value in [
      'http://media.example/avatar.png',
      'file:///private/avatar.png',
      'https://secret@media.example/avatar.png',
    ]) {
      expect(
        GbRecipientIdentity.read(response(value), 'bello.user').avatarUrl,
        isNull,
      );
    }
  });

  testWidgets(
    'debounced shared field renders only verified exact identity, clears on edits',
    (tester) async {
      final fake = _Lookup()
        ..result = const GbRecipientIdentity(
          'stable_123',
          'bello.user',
          'Bello Abubakar',
        );
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            sessionProvider.overrideWith(_Session.new),
            gbRecipientLookupTransportProvider.overrideWithValue(fake),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: Consumer(
                builder: (context, ref, _) {
                  final state = ref.watch(sessionProvider) as SessionSignedIn;
                  return GbRecipientField(
                    controller: controller,
                    owner: (
                      accountId: state.user.id,
                      authorizationEpoch: ref
                          .read(sessionProvider.notifier)
                          .authorizationEpoch,
                    ),
                    label: 'Recipient username',
                    enabled: true,
                    onChanged: (_) {},
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.enterText(find.byType(TextField), '@BELLO.User');
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pump();
      expect(fake.requested, ['bello.user']);
      expect(find.text('Bello Abubakar'), findsOneWidget);
      expect(find.text('@bello.user'), findsOneWidget);
      expect(find.textContaining('stable_123'), findsOneWidget);
      await tester.enterText(find.byType(TextField), '@different.user');
      await tester.pump();
      expect(find.text('Bello Abubakar'), findsNothing);
    },
  );

  testWidgets(
    'late original response never appears after authorization account switch',
    (tester) async {
      final fake = _Lookup()..pending = Completer<GbRecipientIdentity>();
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      final container = ProviderContainer(
        overrides: [
          sessionProvider.overrideWith(_Session.new),
          gbRecipientLookupTransportProvider.overrideWithValue(fake),
        ],
      );
      addTearDown(container.dispose);
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp(
            home: Scaffold(
              body: Consumer(
                builder: (context, ref, _) {
                  final state = ref.watch(sessionProvider) as SessionSignedIn;
                  return GbRecipientField(
                    controller: controller,
                    owner: (
                      accountId: state.user.id,
                      authorizationEpoch: ref
                          .read(sessionProvider.notifier)
                          .authorizationEpoch,
                    ),
                    label: 'Request from @username',
                    enabled: true,
                    onChanged: (_) {},
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.enterText(find.byType(TextField), '@bello.user');
      await tester.pump(const Duration(milliseconds: 400));
      expect(fake.requested, ['bello.user']);
      (container.read(sessionProvider.notifier) as _Session).switchAccount();
      await tester.pump();
      fake.pending!.complete(
        const GbRecipientIdentity(
          'private_old',
          'bello.user',
          'Old account private',
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Old account private'), findsNothing);
      expect(find.textContaining('private_old'), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );
}
