import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';

Dio _transport() => Dio(BaseOptions(baseUrl: 'https://api.example.invalid'));

DioException _offline(RequestOptions options) => DioException(
      requestOptions: options,
      type: DioExceptionType.connectionError,
    );

void main() {
  test('GET retries bounded transport failures, then returns fresh data',
      () async {
    final dio = _transport();
    final client = ApiClient(dio: dio);
    var attempts = 0;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        attempts++;
        if (attempts < 3) {
          handler.reject(_offline(options), true);
          return;
        }
        handler.resolve(Response<Map<String, dynamic>>(
          requestOptions: options,
          statusCode: 200,
          data: {'otpChannels': ['email']},
        ));
      },
    ));
    final methods = await client.authOtpChannels();
    expect(methods, hasLength(1));
    expect(attempts, 3);
  });

  test('GET stops after three failed attempts with safe error', () async {
    final dio = _transport();
    final client = ApiClient(dio: dio);
    var attempts = 0;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        attempts++;
        handler.reject(_offline(options), true);
      },
    ));
    await expectLater(client.authOtpChannels(), throwsA(isA<ApiException>()));
    expect(attempts, 3);
  });

  test('account changes during GET abort before retry', () async {
    final dio = _transport();
    final client = ApiClient(dio: dio);
    client.authenticatedAccountId = 'account-A';
    var attempts = 0;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        attempts++;
        client.authenticatedAccountId = 'account-B';
        handler.reject(_offline(options), true);
      },
    ));
    await expectLater(
      client.authOtpChannels(),
      throwsA(isA<ApiException>().having(
        (error) => error.code, 'code', 'ACCOUNT_CHANGED',
      )),
    );
    expect(attempts, 1);
  });

  test('write requests never automatically retry on uncertain delivery',
      () async {
    final dio = _transport();
    final client = ApiClient(dio: dio);
    var attempts = 0;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        attempts++;
        handler.reject(_offline(options), true);
      },
    ));
    await expectLater(
      client.otpSend(email: 'someone@example.invalid'),
      throwsA(isA<ApiException>()),
    );
    expect(attempts, 1);
  });
}
