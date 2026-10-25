import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';

void main() {
  test(
    'saved library uses the authenticated existing Dio, correct routes and cursor',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
      final requests = <RequestOptions>[];
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (request, handler) {
            requests.add(request);
            if (request.method == 'GET') {
              handler.resolve(
                Response<Map<String, dynamic>>(
                  requestOptions: request,
                  data: {'items': <Object>[], 'nextCursor': null},
                ),
              );
            } else {
              handler.resolve(
                Response<void>(requestOptions: request, statusCode: 200),
              );
            }
          },
        ),
      );
      final api = AccountBoundFeedApi(
        superDio: dio,
        superToken: () async => 'token',
        ownerAccount: 'fan',
        currentAccount: () => 'fan',
      );
      await api.saved(cursor: 'server-cursor');
      expect(requests.single.path, '/v1/saved');
      expect(requests.single.queryParameters['cursor'], 'server-cursor');
      expect(requests.single.headers['Authorization'], 'Bearer token');

      final item = SavedStatusItem(
        id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
        savedAt: DateTime.utc(2026),
        post: FeedPost(
          id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
          authorMasanaId: 'masana',
          kind: 'text',
          body: 'original',
          mediaIds: const [],
          publishedAt: DateTime.utc(2026),
          likeCount: 0,
          commentCount: 0,
          liked: false,
          saved: true,
        ),
      );
      await api.removeSaved(item);
      expect(requests.last.path, '/v1/posts/${item.id}/save');
      expect(requests.last.data, {'enabled': false});


    },
  );

  test(
    'account switch prevents saved requests before and after transport',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
      var current = 'other';
      var started = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (request, handler) {
            started++;
            handler.resolve(
              Response<Map<String, dynamic>>(
                requestOptions: request,
                data: {'items': <Object>[], 'nextCursor': null},
              ),
            );
          },
        ),
      );
      final api = AccountBoundFeedApi(
        superDio: dio,
        superToken: () async => 'token',
        ownerAccount: 'fan',
        currentAccount: () => current,
      );
      await expectLater(api.saved(), throwsStateError);
      expect(started, 0);
      current = 'fan';
      await api.saved();
      expect(started, 1);
      current = 'other';
      await expectLater(api.saved(), throwsStateError);
      expect(started, 1);
    },
  );
}
