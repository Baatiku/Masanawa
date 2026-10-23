import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';

void main() {
  test('invitation recovery GET has no body and keyed issuance uses its distinct endpoint', () async {
    final calls=<RequestOptions>[];
    final dio=Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest:(request,handler){
      calls.add(request);handler.resolve(Response(requestOptions:request,data:<String,dynamic>{}));
    }));
    final api=HttpRoomCommunityApi(dio);
    await api.request('room_one','GET','invites',{});
    await api.request('room_one','POST','invites/issue',{'requestId':'original'});
    expect(calls.first.method,'GET');expect(calls.first.data,isNull);
    expect(calls.last.path,'/v1/rooms/room_one/community/invites/issue');
    expect(calls.last.data,{'requestId':'original'});
  });
  test('community transport keeps invite secrets in body and request replay stable', () async {
    final calls = <RequestOptions>[];
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) {
      calls.add(request);
      handler.resolve(Response(requestOptions: request, data: <String, dynamic>{}));
    }));
    final api = HttpRoomCommunityApi(dio);
    await api.action('room_one', 'join', {'token': 'private-code'});
    await api.action('room_one', 'timeline', {'body': 'Hello', 'requestId': 'stable-id'});
    await api.action('room_one', 'timeline', {'body': 'Hello', 'requestId': 'stable-id'});
    expect(calls.first.path, '/v1/rooms/room_one/community/join');
    expect(calls.first.path, isNot(contains('private-code')));
    expect(calls.first.data, {'token': 'private-code'});
    expect(calls[1].data, calls[2].data);
    await api.revoke('room_one', 'invite_one');
    expect(calls.last.method, 'DELETE');
    expect(calls.last.path, '/v1/rooms/room_one/community/invites/invite_one');
  });
  test('account/session switch blocks inflight private read and later writes', () async {
    final pending = Completer<Response<dynamic>>();
    final dio = Dio();
    var calls = 0;
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) async {
      calls++;
      final response = await pending.future;
      handler.resolve(Response(requestOptions: request, data: response.data));
    }));
    var active = 'account-one/session-one';
    final api = AccountBoundRoomCommunityApi(delegate: HttpRoomCommunityApi(dio), ownerAccount: active, currentAccount: () => active);
    final load = api.items('private_room', 'timeline');
    await Future<void>.delayed(Duration.zero);
    active = 'account-one/session-two';
    pending.complete(Response(requestOptions: RequestOptions(), data: {'items': [{'body': 'private'}]}));
    await expectLater(load, throwsStateError);
    await expectLater(api.action('private_room', 'timeline', {'body': 'stale'}), throwsStateError);
    expect(calls, 1);
  });
  test('existing Room without creator owner uses redesigned Room projection', () {
    final room = CommunityRoom.fromJson({'roomId':'room_existing','name':'Existing room',
      'visibility':'public','postingPolicy':'members','ownerUserId':null,'isMember':true,'role':'member'});
    expect(room.id, 'room_existing');
    expect(room.canPost, true);
  });
  test('broadcast posting capability follows authoritative role', () {
    CommunityRoom room(String? role, String policy) => CommunityRoom(id: 'r', name: 'Room', visibility: 'private', postingPolicy: policy, ownerId: 'owner', role: role);
    expect(room(null, 'members').canPost, false);
    expect(room('member', 'admins').canPost, false);
    expect(room('admin', 'admins').canPost, true);
    expect(room('member', 'members').canPost, true);
  });
}
