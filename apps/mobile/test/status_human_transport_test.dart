import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';

Map<String, dynamic> _humanPost() => {
  'id': '381026c2-9d56-47b1-b73d-1784e24e41e2',
  'author': {
    'type': 'human',
    'id': 'fan_a',
    'handle': 'amina',
    'displayName': 'Amina',
  },
  'kind': 'text',
  'body': 'My post',
  'media': <String>[],
  'publishedAt': '2026-10-23T09:00:00Z',
  'likeCount': 0,
  'commentCount': 0,
  'viewerLiked': false,
  'viewerSaved': false,
};

void main() {
  test(
    'human Status transport authorizes current account and never posts a client identity',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
      final requests = <RequestOptions>[];
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (request, handler) {
            requests.add(request);
            handler.resolve(
              Response<Map<String, dynamic>>(
                requestOptions: request,
                statusCode: 200,
                data: _humanPost(),
              ),
            );
          },
        ),
      );
      final api = AccountBoundFeedApi(
        superDio: dio,
        superToken: () async => 'synthetic_token',
        ownerAccount: 'fan_a',
        currentAccount: () => 'fan_a',
      );
      final post = await api.publishHumanText('My post', 'human-status-abc001');
      expect(post.isHuman, isTrue);
      expect(post.authorId, 'fan_a');
      expect(post.authorHandle, 'amina');
      expect(requests, hasLength(1));
      expect(requests.single.path, '/v1/posts/human');
      expect(requests.single.headers['Idempotency-Key'], 'human-status-abc001');
      expect(
        requests.single.headers['Authorization'],
        'Bearer synthetic_token',
      );
      expect(requests.single.data, {'body': 'My post', 'audience': 'public'});
    },
  );

  test('human owner edits with original text and removes without forged identity',() async {
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    final requests=<RequestOptions>[];
    dio.interceptors.add(InterceptorsWrapper(onRequest:(request,handler){
      requests.add(request);
      handler.resolve(Response<Map<String,dynamic>>(
        requestOptions:request,statusCode:200,data:request.method=='PATCH'
          ? {..._humanPost(),'body':'Edited'} : {'state':'removed'}));
    }));
    final api=AccountBoundFeedApi(superDio:dio,
      superToken:() async => 'synthetic',ownerAccount:'fan_a',
      currentAccount:()=> 'fan_a');
    final edited=await api.editHumanText(_humanPost()['id'] as String,'My post','Edited');
    expect(edited.body,'Edited');
    await api.removeHumanPost(edited.id);
    expect(requests,hasLength(2));
    expect(requests[0].method,'PATCH');
    expect(requests[0].path,'/v1/posts/' + edited.id + '/human');
    expect(requests[0].data,{'expectedBody':'My post','body':'Edited'});
    expect(requests[1].method,'DELETE');
    expect(requests[1].path,'/v1/posts/' + edited.id + '/human');
    expect(requests[1].data,isNull);
    expect(requests.every((request)=>request.headers['Authorization']=='Bearer synthetic'),isTrue);
  });

  test('changed account blocks own-post mutation before network',() async {
    var actor='fan_b',requests=0;
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(r,h){
      requests++;h.resolve(Response(requestOptions:r,statusCode:200,data:_humanPost()));
    }));
    final api=AccountBoundFeedApi(superDio:dio,superToken:() async=>'token',
      ownerAccount:'fan_a',currentAccount:()=>actor);
    await expectLater(api.editHumanText(_humanPost()['id'] as String,'Old','New'),throwsStateError);
    await expectLater(api.removeHumanPost(_humanPost()['id'] as String),throwsStateError);
    expect(requests,0);
  });

  test(
    'account switch before human publication blocks the request before network',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
      var started = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            started++;
            handler.resolve(
              Response<Map<String, dynamic>>(
                requestOptions: options,
                data: _humanPost(),
              ),
            );
          },
        ),
      );
      final api = AccountBoundFeedApi(
        superDio: dio,
        superToken: () async => 'synthetic',
        ownerAccount: 'fan_a',
        currentAccount: () => 'fan_b',
      );
      await expectLater(
        api.publishHumanText('My post', 'human-status-abc001'),
        throwsStateError,
      );
      expect(started, 0);
    },
  );

  test(
    'late old-account publish result cannot reappear as current author',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
      final waiting = Completer<Response<Map<String, dynamic>>>();
      var account = 'fan_a';
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            final result = await waiting.future;
            handler.resolve(result);
          },
        ),
      );
      final api = AccountBoundFeedApi(
        superDio: dio,
        superToken: () async => 'synthetic',
        ownerAccount: 'fan_a',
        currentAccount: () => account,
      );
      final pending = api.publishHumanText('My post', 'human-status-abc001');
      await Future<void>.delayed(const Duration(milliseconds: 50));
      account = 'fan_b';
      waiting.complete(
        Response(
          requestOptions: RequestOptions(path: '/v1/posts/human'),
          data: _humanPost(),
          statusCode: 200,
        ),
      );
      await expectLater(pending, throwsStateError);
    },
  );
}
