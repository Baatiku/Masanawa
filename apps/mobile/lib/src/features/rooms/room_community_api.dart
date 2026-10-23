import 'package:dio/dio.dart';

/// User-created Rooms share the canonical Room identifier and membership service.
class CommunityRoom {
  const CommunityRoom({required this.id, required this.name, this.description = '',
    this.photoUrl = '', required this.visibility, required this.postingPolicy,
    required this.ownerId, this.role, this.memberCount = 0, this.muted = false, this.pinned = false, this.commentsEnabled = true, this.unreadCount = 0});
  final String id, name, description, photoUrl, visibility, postingPolicy, ownerId;
  final String? role;
  final int memberCount, unreadCount;
  final bool muted, pinned, commentsEnabled;
  bool get joined => role != null;
  bool get manages => role == 'owner' || role == 'admin';
  bool get canPost => joined && (postingPolicy == 'members' || manages);
  factory CommunityRoom.fromJson(Map<String, dynamic> j) => CommunityRoom(
    id: j['roomId'] as String, name: j['name'] as String,
    description: j['description'] as String? ?? '', photoUrl: j['photoUrl'] as String? ?? '',
    visibility: j['visibility'] as String, postingPolicy: j['postingPolicy'] as String,
    ownerId: j['ownerUserId'] as String? ?? '', role: j['isMember'] == false ? null : j['role'] as String?,
    unreadCount: (j['unreadCount'] as num?)?.toInt() ?? 0,
    muted: j['muted'] == true, pinned: j['pinned'] == true, commentsEnabled: j['commentsEnabled'] != false,
    memberCount: (j['memberCount'] as num?)?.toInt() ?? 0);
}
abstract class RoomCommunityApi {
  Future<List<CommunityRoom>> list(bool joined);
  Future<List<Map<String, dynamic>>> invitations();
  Future<CommunityRoom> room(String id);
  Future<CommunityRoom> create(Map<String, dynamic> values);
  Future<CommunityRoom> update(String id, Map<String, dynamic> values);
  Future<List<Map<String, dynamic>>> items(String id, String collection);
  Future<void> action(String id, String action, [Map<String, dynamic>? values]);
  Future<String> invite(String id, String requestId);
  Future<void> revoke(String id, String inviteId);
  Future<void> member(String id, String userId, Map<String, dynamic> values);
  Future<Map<String, dynamic>> request(String id, String method, String resource, Map<String, dynamic> values);
  Future<List<Map<String, dynamic>>> candidates(String kind, String query);
  Future<void> modify(String id, String resource, Map<String, dynamic> values);
  Future<void> remove(String id, String resource);
}
class RoomInvitationPage {
  const RoomInvitationPage(this.items, this.nextCursor);
  final List<Map<String, dynamic>> items;
  final String? nextCursor;
}
abstract interface class RoomInvitationPages {
  Future<RoomInvitationPage> invitationPage({String? cursor});
}
class HttpRoomCommunityApi implements RoomCommunityApi, RoomInvitationPages {
  const HttpRoomCommunityApi(this.http, {this.loadMasana});
  final Dio http;
  final Future<List<Map<String, dynamic>>> Function()? loadMasana;
  String path(String id) => '/v1/rooms/${Uri.encodeComponent(id)}/community';
  Future<List<Map<String, dynamic>>> _items(String path) async {
    final r = await http.get<Map<String, dynamic>>(path);
    return (r.data!['items'] as List).map((e) => Map<String, dynamic>.from(e as Map)).toList();
  }
  @override Future<List<Map<String, dynamic>>> invitations() async => (await invitationPage()).items;
  @override Future<RoomInvitationPage> invitationPage({String? cursor}) async {
    final data = (await http.get<Map<String, dynamic>>('/v1/rooms/invitations', queryParameters: {if (cursor != null) 'cursor': cursor})).data!;
    final next = data['nextCursor'];
    if (data['items'] is! List || (data['paginationVersion'] != null && data['paginationVersion'] != 1) || (next != null && (data['paginationVersion'] != 1 || next is! String || next.isEmpty || next.length > 1200))) throw const FormatException('Invalid invitation page');
    return RoomInvitationPage((data['items'] as List).map((v) => Map<String, dynamic>.from(v as Map)).toList(), next as String?);
  }
  @override Future<List<CommunityRoom>> list(bool joined) async =>
    (await _items('/v1/rooms/${joined ? 'mine' : 'discover'}')).map(CommunityRoom.fromJson).toList();
  @override Future<CommunityRoom> room(String id) async => CommunityRoom.fromJson((await http.get<Map<String, dynamic>>(path(id))).data!);
  @override Future<CommunityRoom> create(Map<String, dynamic> values) async => CommunityRoom.fromJson((await http.post<Map<String, dynamic>>('/v1/rooms', data: values)).data!);
  @override Future<CommunityRoom> update(String id, Map<String, dynamic> values) async => CommunityRoom.fromJson((await http.patch<Map<String, dynamic>>(path(id), data: values)).data!);
  @override Future<List<Map<String, dynamic>>> items(String id, String collection) => _items('${path(id)}/$collection');
  @override Future<void> action(String id, String action, [Map<String, dynamic>? values]) async { await http.post<void>('${path(id)}/$action', data: values); }
  @override Future<String> invite(String id, String requestId) async => (await http.post<Map<String, dynamic>>('${path(id)}/invites', data: {'requestId': requestId})).data!['token'] as String;
  @override Future<void> revoke(String id, String inviteId) async { await http.delete<void>('${path(id)}/invites/${Uri.encodeComponent(inviteId)}'); }
  @override Future<Map<String, dynamic>> request(String id, String method, String resource, Map<String, dynamic> values) async => (await http.request<Map<String, dynamic>>('${path(id)}/$resource', data: method == 'GET' ? null : values, queryParameters: method == 'GET' ? values : null, options: Options(method: method))).data!;
  @override Future<List<Map<String, dynamic>>> candidates(String kind, String query) async {
    if (kind == 'masana') {
      if (loadMasana == null) throw StateError('directory_unavailable');
      return (await loadMasana!()).where((e) => '${e['displayName'] ?? ''}'.toLowerCase().contains(query.toLowerCase())).toList();
    }
    final r = await http.get<Map<String, dynamic>>(kind == 'people' ? '/v1/profiles/contacts' : '/agent/directory', queryParameters: {'q': query});
    final raw = r.data![kind == 'people' ? 'items' : 'agents'] as List;
    return raw.map((e) => Map<String, dynamic>.from(e as Map)).where((e) => '${e['displayName'] ?? ''} ${e['handle'] ?? ''}'.toLowerCase().contains(query.toLowerCase())).toList();
  }
  @override Future<void> modify(String id, String resource, Map<String, dynamic> values) async { await http.patch<void>('${path(id)}/$resource', data: values); }
  @override Future<void> remove(String id, String resource) async { await http.delete<void>('${path(id)}${resource.isEmpty ? '' : '/$resource'}'); }
  @override Future<void> member(String id, String userId, Map<String, dynamic> values) async { await http.patch<void>('${path(id)}/members/${Uri.encodeComponent(userId)}', data: values); }
}
/// Captures an exact account/session identity, including on failed responses.
class AccountBoundRoomCommunityApi implements RoomCommunityApi, RoomInvitationPages {
  const AccountBoundRoomCommunityApi({required this.delegate, required this.ownerAccount, required this.currentAccount});
  final RoomCommunityApi delegate;
  final String ownerAccount;
  final String? Function() currentAccount;
  void assertActive() => _check();
  void _check() { if (ownerAccount.isEmpty || currentAccount() != ownerAccount) throw StateError('account_changed'); }
  Future<T> _guard<T>(Future<T> Function() work) async { _check(); try { final result = await work(); _check(); return result; } catch (_) { _check(); rethrow; } }
  @override Future<List<Map<String, dynamic>>> invitations() => _guard(delegate.invitations);
  @override Future<RoomInvitationPage> invitationPage({String? cursor}) => _guard(() async {
    final api = delegate;
    if (api is RoomInvitationPages) return api.invitationPage(cursor: cursor);
    if (cursor != null) throw StateError('invitation_pagination_unavailable');
    return RoomInvitationPage(await api.invitations(), null);
  });
  @override Future<List<CommunityRoom>> list(bool joined) => _guard(() => delegate.list(joined));
  @override Future<CommunityRoom> room(String id) => _guard(() => delegate.room(id));
  @override Future<CommunityRoom> create(Map<String, dynamic> values) => _guard(() => delegate.create(values));
  @override Future<CommunityRoom> update(String id, Map<String, dynamic> values) => _guard(() => delegate.update(id, values));
  @override Future<List<Map<String, dynamic>>> items(String id, String collection) => _guard(() => delegate.items(id, collection));
  @override Future<void> action(String id, String action, [Map<String, dynamic>? values]) => _guard(() => delegate.action(id, action, values));
  @override Future<String> invite(String id, String requestId) => _guard(() => delegate.invite(id, requestId));
  @override Future<void> revoke(String id, String inviteId) => _guard(() => delegate.revoke(id, inviteId));
  @override Future<Map<String, dynamic>> request(String id, String method, String resource, Map<String, dynamic> values) => _guard(() => delegate.request(id, method, resource, values));
  @override Future<List<Map<String, dynamic>>> candidates(String kind, String query) => _guard(() => delegate.candidates(kind, query));
  @override Future<void> modify(String id, String resource, Map<String, dynamic> values) => _guard(() => delegate.modify(id, resource, values));
  @override Future<void> remove(String id, String resource) => _guard(() => delegate.remove(id, resource));
  @override Future<void> member(String id, String userId, Map<String, dynamic> values) => _guard(() => delegate.member(id, userId, values));
}
