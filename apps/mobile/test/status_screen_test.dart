import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/l10n/app_localizations.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_author_header.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';
import 'package:masanawa/src/shell/five_tab_shell.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

const _account = AuthUser(
  id: 'status-fan-a', name: 'Fan A', locale: 'en',
  status: 'ACTIVE', role: 'fan', isNewUser: false,
  createdAt: '2026-10-13T00:00:00Z',
);

class _Session extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(
    _account, AuthTokens(
      accessToken: 'synthetic-a', refreshToken: 'synthetic-r',
      accessExpiresIn: 900, user: _account,
    ),
  );
  void switchAccount(String id) {
    final user = AuthUser(
      id: id, name: 'Next Fan', locale: 'en',
      status: 'ACTIVE', role: 'fan', isNewUser: false,
      createdAt: '2026-10-13T00:00:00Z',
    );
    state = SessionSignedIn(user, AuthTokens(
      accessToken: 'synthetic-next', refreshToken: 'synthetic-next-r',
      accessExpiresIn: 900, user: user,
    ));
  }
}

class _Feed implements FeedApi, SearchFeedApi {
  String message = 'A verified Masana update';
  Completer<FeedPage>? pending;
  bool fail = false;
  int requests = 0;
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async {
    requests++;
    if (pending != null) return pending!.future;
    if (fail) throw StateError('offline');
    return FeedPage([_post(message)], null);
  }
  @override
  Future<FeedPage> searchPosts({required String mode, required String query, String? cursor}) async =>
    FeedPage([_post('Result for $query')], null);
  @override Future<void> like(String id, bool enabled) async {}
  @override Future<void> save(String id, bool enabled) async {}
  @override Future<void> comment(String id, String body, String key) async {}
  @override Future<List<FeedComment>> comments(String id) async => const [];
}
FeedPost _post(String body, {String kind = 'text'}) => FeedPost(
  id: 'post-0001', authorMasanaId: 'masana-1', kind: kind,
  body: body, mediaIds: kind == 'text' ? const [] : const ['media-1'],
  publishedAt: DateTime.utc(2026, 10, 13), likeCount: 0,
  commentCount: 0, liked: false, saved: false,
);

Future<ProviderContainer> _mount(WidgetTester tester, _Feed feed, {bool shell = false}) async {
  await tester.pumpWidget(ProviderScope(
    overrides: [
      sessionProvider.overrideWith(_Session.new),
      statusFeedApiProvider.overrideWithValue(feed),
    ],
    child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: shell ? const FiveTabShell(initialIndex: 0)
          : const Scaffold(body: StatusScreen()),
    ),
  ));
  await tester.pumpAndSettle();
  return ProviderScope.containerOf(tester.element(find.byType(StatusScreen)));
}

void main() {
  testWidgets('real mounted Home tab displays the same Masana feed without Talk publishing', (tester) async {
    final feed = _Feed();
    await _mount(tester, feed, shell: true);
    expect(find.text('A verified Masana update'), findsOneWidget);
    expect(tester.widget<NavigationBar>(find.byType(NavigationBar)).selectedIndex, 0);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Chats'), findsOneWidget);
    // The date string is locale-formatted and may omit the year. The shared
    // header must receive the real post timestamp, not a fabricated label.
    final authorHeader = tester.widget<StatusPostAuthorHeader>(
      find.byType(StatusPostAuthorHeader).first,
    );
    expect(authorHeader.post.publishedAt, DateTime.utc(2026, 10, 13));
    expect(find.text('New status'), findsNothing);
    expect(find.text('Explore'), findsNothing);
    expect(find.text('Live Talks'), findsNothing);
    expect(find.text('Create Talk'), findsNothing);
    // Home is still the same single Status feed: no former two-tab bar.
    expect(find.text('Videos'), findsNothing);
    expect(find.text('Updates'), findsNothing);
    expect(find.text('Create Status'), findsNothing);
    expect(find.text('For You'), findsNothing);
    expect(find.text('Following'), findsNothing);
    expect(find.byTooltip('Search Home'), findsOneWidget);
    expect(find.byType(TextField), findsNothing);
    await tester.tap(find.byTooltip('Search Home'));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byTooltip('Search all Status posts'), findsNothing);
    expect(feed.requests, greaterThan(0));
    expect(tester.takeException(), isNull);
  });

  testWidgets('Status request failure never masquerades as empty feed', (tester) async {
    final feed = _Feed()..fail = true;
    await _mount(tester, feed);
    expect(find.text('Status is unavailable. Retry.'), findsOneWidget);
    expect(find.text('No Status updates yet'), findsNothing);
    feed.fail = false;
    await tester.tap(find.text('Retry').last);
    await tester.pumpAndSettle();
    expect(find.text('A verified Masana update'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('account switch rejects late first-account Status data', (tester) async {
    final waiting = Completer<FeedPage>();
    final feed = _Feed()..pending = waiting;
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_Session.new),
        statusFeedApiProvider.overrideWithValue(feed),
      ],
      child: MaterialApp(home: const Scaffold(body: StatusScreen())),
    ));
    await tester.pump();
    final container = ProviderScope.containerOf(tester.element(find.byType(StatusScreen)));
    (container.read(sessionProvider.notifier) as _Session).switchAccount('status-fan-b');
    feed.pending = null;
    feed.message = 'Second fan update';
    await tester.pump();
    await tester.pumpAndSettle();
    waiting.complete(FeedPage([_post('First fan private post')], null));
    await tester.pumpAndSettle();
    expect(find.text('First fan private post'), findsNothing);
    expect(find.text('Second fan update'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
