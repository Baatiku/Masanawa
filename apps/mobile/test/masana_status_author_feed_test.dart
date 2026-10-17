import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/profile/masana_status_posts_screen.dart';

Map<String, dynamic> _post(String author) => {
  'id': '7e281c0f-b110-4d44-b5ed-3134aa111111',
  'authorMasanaId': author,
  'kind': 'text',
  'body': 'Published classroom update',
  'media': <String>[],
  'publishedAt': '2026-10-17T12:00:00Z',
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('author-scoped Status supplies exact canonical filter and cursor', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://masanawa.example'));
    final requests = <RequestOptions>[];
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      requests.add(options);
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options,
        statusCode: 200,
        data: {'items': [_post('character_amina')], 'nextCursor': null},
      ));
    }));
    final api = MasanaAuthorFeedApi(
      dio: dio,
      characterId: 'character_amina',
      ownerAccount: 'fan_one',
      currentAccount: () => 'fan_one',
      token: () async => 'test-access',
    );
    final page = await api.list(mode: 'for_you', cursor: 'opaque-cursor');
    expect(page.items.single.authorMasanaId, 'character_amina');
    expect(requests, hasLength(1));
    expect(requests.single.queryParameters['mode'], 'for_you');
    expect(requests.single.queryParameters['authorMasanaId'], 'character_amina');
    expect(requests.single.queryParameters['cursor'], 'opaque-cursor');
  });

  test('rejects injected posts written by another Masana', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://masanawa.example'));
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options,
        statusCode: 200,
        data: {'items': [_post('character_other')], 'nextCursor': null},
      ));
    }));
    final api = MasanaAuthorFeedApi(
      dio: dio,
      characterId: 'character_amina',
      ownerAccount: 'fan_one',
      currentAccount: () => 'fan_one',
      token: () async => 'test-access',
    );
    await expectLater(api.list(mode: 'for_you'), throwsA(isA<FormatException>()));
  });

  test('account switching blocks professional Status before any network request', () async {
    final dio = Dio(BaseOptions(baseUrl: 'https://masanawa.example'));
    var started = 0;
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      started++;
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'items': <Object>[], 'nextCursor': null},
      ));
    }));
    final api = MasanaAuthorFeedApi(
      dio: dio,
      characterId: 'character_amina',
      ownerAccount: 'fan_one',
      currentAccount: () => 'fan_two',
      token: () async => 'test-access',
    );
    await expectLater(api.list(mode: 'for_you'), throwsA(isA<StateError>()));
    expect(started, 0);
  });
}
