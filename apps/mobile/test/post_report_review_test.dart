import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/settings/post_report_review_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

const id = '10000000-0000-4000-8000-000000000001';
Map<String, dynamic> report() => {
  'id': id,
  'post_id': id,
  'reason': 'privacy',
  'state': 'open',
  'created_at': '2026-10-29T00:00:00Z',
};

class ReviewSession extends SessionController {
  int epoch = 1;
  @override
  int get authorizationEpoch => epoch;
  SessionState signed() {
    final user = AuthUser(
      id: 'owner',
      name: 'Owner',
      locale: 'en',
      status: 'ACTIVE',
      role: 'ADMIN',
      isNewUser: false,
      createdAt: '2026-10-29T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'fixture',
        refreshToken: 'fixture',
        accessExpiresIn: 900,
        user: user,
      ),
    );
  }

  @override
  SessionState build() => signed();
  void reauthenticate() {
    epoch++;
    state = signed();
  }
}

Future<ProviderContainer> draw(
  WidgetTester tester,
  Dio dio,
  Widget page,
) async {
  final api = ApiClient(dio: dio)
    ..authenticatedAccountId = 'owner'
    ..accessToken = 'fixture';
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sessionProvider.overrideWith(ReviewSession.new),
        apiClientProvider.overrideWithValue(api),
      ],
      child: MaterialApp(home: page),
    ),
  );
  await tester.pump();
  await tester.pump();
  return ProviderScope.containerOf(tester.element(find.byType(MaterialApp)));
}

void main() {
  testWidgets(
    'a cached ADMIN role cannot expose review controls without server permission',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) => h.resolve(
            Response(
              requestOptions: o,
              statusCode: 200,
              data: {'canReview': false},
            ),
          ),
        ),
      );
      await draw(tester, dio, const Scaffold(body: PostReportAdminEntry()));
      await tester.pumpAndSettle();
      expect(
        find.byKey(const Key('settings-post-report-review')),
        findsNothing,
      );
    },
  );
  testWidgets(
    'authorized Settings entry opens queue and only confirmed review clears it',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      var reviewed = false, writes = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            Object data;
            if (o.path.endsWith('safety-capabilities')) {
              data = {'canReview': true};
            } else if (o.method == 'PUT') {
              writes++;
              expect(o.data, {'state': 'reviewed'});
              reviewed = true;
              data = {'id': id, 'state': 'reviewed'};
            } else {
              data = {
                'items': reviewed ? [] : [report()],
              };
            }
            h.resolve(Response(requestOptions: o, statusCode: 200, data: data));
          },
        ),
      );
      await draw(tester, dio, const Scaffold(body: PostReportAdminEntry()));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Review post reports'));
      await tester.pumpAndSettle();
      expect(find.text('privacy'), findsOneWidget);
      await tester.tap(find.text('Mark reviewed'));
      await tester.pumpAndSettle();
      expect(writes, 1);
      expect(find.text('No open reports.'), findsOneWidget);
    },
  );
  testWidgets(
    'lost review acknowledgement never replays a mutation and refresh reads the outcome',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      var committed = false, writes = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            if (o.method == 'PUT') {
              writes++;
              committed = true;
              h.reject(
                DioException(
                  requestOptions: o,
                  type: DioExceptionType.connectionError,
                ),
              );
              return;
            }
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: {
                  'items': committed ? [] : [report()],
                },
              ),
            );
          },
        ),
      );
      await draw(tester, dio, const PostReportReviewScreen());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Mark reviewed'));
      await tester.pumpAndSettle();
      expect(writes, 1);
      expect(find.textContaining('Review not confirmed'), findsOneWidget);
      await tester.tap(find.text('Refresh'));
      await tester.pumpAndSettle();
      expect(writes, 1);
      expect(find.text('No open reports.'), findsOneWidget);
    },
  );
  testWidgets(
    'same-account reauthentication fences a delayed private queue response',
    (tester) async {
      final dio = Dio(), pending = Completer<void>();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) async {
            await pending.future;
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: {
                  'items': [report()],
                },
              ),
            );
          },
        ),
      );
      final container = await draw(tester, dio, const PostReportReviewScreen());
      (container.read(sessionProvider.notifier) as ReviewSession)
          .reauthenticate();
      await tester.pump();
      pending.complete();
      await tester.pumpAndSettle();
      expect(find.text('privacy'), findsNothing);
      expect(find.textContaining('Session changed'), findsOneWidget);
    },
  );
  testWidgets(
    'operator permission denial hides the queue at 320dp and large RTL text',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(320, 700));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) => h.reject(
            DioException(
              requestOptions: o,
              type: DioExceptionType.badResponse,
              response: Response(requestOptions: o, statusCode: 403),
            ),
          ),
        ),
      );
      await draw(
        tester,
        dio,
        const Directionality(
          textDirection: TextDirection.rtl,
          child: MediaQuery(
            data: MediaQueryData(textScaler: TextScaler.linear(2)),
            child: PostReportReviewScreen(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Review permission required.'), findsOneWidget);
      expect(find.text('Mark reviewed'), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );
}
