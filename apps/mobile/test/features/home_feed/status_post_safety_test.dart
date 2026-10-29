import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/features/home_feed/feed_screen.dart';
import 'package:masanawa/src/features/home_feed/saved_status_library_screen.dart';
import 'package:masanawa/src/features/home_feed/status_post_safety_menu.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';

const id = '10000000-0000-4000-8000-000000000001';

class Safety implements FeedSafetyApi {
  Completer<void>? hold;
  bool fail = false;
  int hides = 0, reports = 0;
  @override
  Future<void> hidePost(String p, bool h, bool Function() current) async {
    hides++;
    if (hold != null) await hold!.future;
    if (fail) throw StateError('unavailable');
  }

  @override
  Future<String> reportPost(
    String p,
    String reason,
    bool Function() current,
  ) async {
    reports++;
    if (fail) throw StateError('unavailable');
    return id;
  }
}

FeedPost fixture() => FeedPost.fromJson({
  'id': id,
  'authorMasanaId': 'official',
  'kind': 'text',
  'body': 'Original hidden content',
  'media': <String>[],
  'publishedAt': '2026-10-29T00:00:00Z',
  'likeCount': 0,
  'commentCount': 0,
});

class SafetyFeed extends Safety implements FeedApi {
  Completer<FeedPage>? nextRead;
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async =>
      nextRead == null ? FeedPage([fixture()], null) : nextRead!.future;
  @override
  Future<void> like(String p, bool enabled) async {}
  @override
  Future<void> save(String p, bool enabled) async {}
  @override
  Future<void> comment(String p, String body, String key) async {}
  @override
  Future<List<FeedComment>> comments(String p) async => [];
}

class SavedSafety implements SavedStatusLibraryApi {
  final pending = Completer<SavedStatusPage>();
  SavedStatusItem get item => SavedStatusItem(
    id: id,
    savedAt: DateTime.utc(2026, 10, 29),
    post: fixture(),
  );
  @override
  Future<SavedStatusPage> saved({String? cursor}) async =>
      cursor == null ? SavedStatusPage([item], 'next') : pending.future;
  @override
  Future<void> removeSaved(SavedStatusItem item) async {}
}

Future<void> draw(
  WidgetTester tester,
  Safety api, {
  String account = 'owner',
  VoidCallback? hidden,
  bool ha = false,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      locale: Locale(ha ? 'ha' : 'en'),
      localizationsDelegates: MasanawaLocalization.delegates,
      supportedLocales: MasanawaLocalization.supportedLocales,
      home: Directionality(
        textDirection: ha ? TextDirection.rtl : TextDirection.ltr,
        child: MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(2)),
          child: Scaffold(
            body: StatusPostSafetyMenu(
              postId: id,
              accountKey: account,
              api: api,
              isCurrent: () => true,
              onHidden: hidden ?? () {},
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test(
    'queued post actions cannot inherit a replacement accounts bearer',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://example.test')),
          gate = Completer<void>();
      addTearDown(() => dio.close(force: true));
      var current = true, dispatched = 0;
      dio.interceptors.add(
        QueuedInterceptorsWrapper(
          onRequest: (o, h) async {
            await gate.future;
            h.next(o);
          },
        ),
      );
      final client = ApiClient(dio: dio)
        ..authenticatedAccountId = 'owner'
        ..accessToken = 'owner-token';
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            dispatched++;
            h.resolve(Response(requestOptions: o, data: {'hidden': true}));
          },
        ),
      );
      final operation = DioFeedApi(
        dio,
        () async => 'owner-token',
      ).hidePost(id, true, () => current);
      await Future<void>.delayed(Duration.zero);
      current = false;
      client.authenticatedAccountId = 'replacement';
      client.accessToken = 'replacement-token';
      gate.complete();
      await expectLater(operation, throwsA(isA<DioException>()));
      expect(dispatched, 0);
    },
  );

  testWidgets(
    'a refresh started before confirmed Hide cannot restore the Home card',
    (tester) async {
      final api = SafetyFeed();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MasanaFeedScreen(api: api, accountKey: 'owner'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      api.nextRead = Completer<FeedPage>();
      unawaited(
        tester
            .widget<RefreshIndicator>(find.byType(RefreshIndicator).first)
            .onRefresh(),
      );
      await tester.pump();
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));
      await tester.tap(find.text('Hide this post'));
      await tester.pump();
      api.nextRead!.complete(FeedPage([fixture()], null));
      await tester.pumpAndSettle();
      expect(find.text('Original hidden content'), findsNothing);
      expect(api.hides, 1);
    },
  );
  testWidgets('late Saved pagination cannot restore a confirmed hidden post', (
    tester,
  ) async {
    final api = SavedSafety(), engagement = SafetyFeed();
    await tester.pumpWidget(
      MaterialApp(
        home: SavedStatusLibraryScreen(
          api: api,
          engagementApi: engagement,
          accountKey: 'owner',
          isAccountCurrent: () => true,
          openPost: (_) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Load more'));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.more_horiz));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    await tester.tap(find.text('Hide this post'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pump();
    expect(engagement.hides, 1);
    api.pending.complete(SavedStatusPage([api.item], null));
    await tester.pumpAndSettle();
    expect(find.text('Original hidden content'), findsNothing);
    expect(engagement.hides, 1);
  });

  testWidgets(
    'Hide waits for authoritative acknowledgement; failure keeps content and permits retry',
    (tester) async {
      final api = Safety()..fail = true;
      var hidden = 0;
      await draw(tester, api, hidden: () => hidden++);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hide this post'));
      await tester.pumpAndSettle();
      expect(hidden, 0);
      expect(find.textContaining('could not be confirmed'), findsOneWidget);
      api.fail = false;
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hide this post'));
      await tester.pumpAndSettle();
      expect(hidden, 1);
    },
  );
  testWidgets(
    'old account hide completion cannot remove the new accounts content',
    (tester) async {
      final api = Safety()..hold = Completer<void>();
      var hidden = 0;
      await draw(tester, api, hidden: () => hidden++);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hide this post'));
      await tester.pump();
      await draw(tester, api, account: 'new-owner', hidden: () => hidden++);
      api.hold!.complete();
      await tester.pumpAndSettle();
      expect(hidden, 0);
    },
  );
  testWidgets(
    '320dp large Hausa RTL report menu returns an actual report receipt',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(320, 700));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final api = Safety();
      await draw(tester, api, ha: true);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Kai rahoton wannan labari'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Bayanin da bai dace ba'));
      await tester.pumpAndSettle();
      expect(api.reports, 1);
      expect(find.textContaining(id), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
  test(
    'an account change during credential loading prevents a safety mutation',
    () async {
      final token = Completer<String?>(),
          dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
      addTearDown(() => dio.close(force: true));
      var current = true, requests = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            requests++;
            h.resolve(Response(requestOptions: o, data: {'hidden': true}));
          },
        ),
      );
      final api = DioFeedApi(dio, () => token.future);
      final operation = api.hidePost(id, true, () => current);
      current = false;
      token.complete('old-account-token');
      await expectLater(operation, throwsStateError);
      expect(requests, 0);
    },
  );
  test('a malformed report response never becomes a receipt', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
    addTearDown(() => dio.close(force: true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (o, h) => h.resolve(
          Response(
            requestOptions: o,
            data: {
              'id': '------------------------------------',
              'state': 'open',
            },
          ),
        ),
      ),
    );
    await expectLater(
      DioFeedApi(
        dio,
        () async => 'token',
      ).reportPost(id, 'inaccurate', () => true),
      throwsFormatException,
    );
  });
}
