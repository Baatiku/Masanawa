import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../features/rooms/room_discussion_api.dart';
import '../../features/rooms/room_community_api.dart';
import '../../features/rooms/room_community_screen.dart';
import '../../features/rooms/room_membership_client.dart';
import '../../features/rooms/rooms_client.dart';
import '../../features/rooms/rooms_screen.dart' as canonical;
import '../../features/rooms/saved_lessons_client.dart';
import '../../state/session_state.dart';
import '../../state/agent_directory_state.dart';
import '../../theme/masanawa_theme.dart';

/// Reuses the existing authenticated Gateway Dio and the canonical J07 Rooms
/// contract. Never use the retired Talk/live-feed endpoint as Room discovery.
final roomsClientProvider = Provider<RoomsClient>((ref) {
  ref.watch(agentDirectoryProvider.select((value)=>value.agents.map((a)=>'${a.characterId}:${a.displayName}').join('|')));
  return HttpRoomsClient(ref.watch(apiClientProvider).dio,teacherName:(id){
    for(final agent in ref.read(agentDirectoryProvider).agents){if(agent.characterId==id)return agent.displayName;}
    return null;
  });
});

class AccountBoundRoomsClient implements RoomsClient {
  AccountBoundRoomsClient({
    required this.delegate,
    required this.ownerAccount,
    required this.currentAccount,
  });

  final RoomsClient delegate;
  final String ownerAccount;
  final String? Function() currentAccount;

  void _checkAccount() {
    if (ownerAccount.isEmpty || currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
  }

  Future<T> _guard<T>(Future<T> Function() work) async {
    _checkAccount();
    final value = await work();
    _checkAccount();
    return value;
  }

  @override
  Future<List<RoomInfo>> list({
    required bool joined,
    String query = '',
    String language = '',
  }) => _guard(() => delegate.list(
      joined: joined, query: query, language: language));

  @override
  Future<RoomInfo> room(String id) => _guard(() => delegate.room(id));

  @override
  Future<void> join(String id) => _guard(() => delegate.join(id));

  @override
  Future<void> leave(String id) => _guard(() => delegate.leave(id));

  @override
  Future<RoomQuestion> ask(String id, String text, String key) =>
      _guard(() => delegate.ask(id, text, key));

  @override
  Future<List<RoomQuestion>> questions(String id) =>
      _guard(() => delegate.questions(id));

  @override
  Future<List<RoomLesson>> lessons(String id) =>
      _guard(() => delegate.lessons(id));
}

class AccountBoundRoomDiscussionApi implements RoomDiscussionApi {
  const AccountBoundRoomDiscussionApi({
    required this.delegate,
    required this.ownerAccount,
    required this.currentAccount,
  });
  final RoomDiscussionApi delegate;
  final String ownerAccount;
  final String? Function() currentAccount;

  Future<T> _guard<T>(Future<T> Function() work) async {
    if (ownerAccount.isEmpty || currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    final result = await work();
    if (currentAccount() != ownerAccount) {
      throw StateError('account_changed');
    }
    return result;
  }

  @override
  Future<List<RoomDiscussionTarget>> targets(String roomId) =>
      _guard(() => delegate.targets(roomId));

  @override
  Future<RoomDiscussionPage> list(
    String roomId,
    RoomDiscussionTarget target, {
    String? cursor,
  }) => _guard(() => delegate.list(roomId, target, cursor: cursor));

  @override
  Future<RoomDiscussionReply> send(
    String roomId,
    RoomDiscussionTarget target,
    String body,
    String key, {
    String? parentReplyId,
  }) => _guard(() => delegate.send(
      roomId, target, body, key, parentReplyId: parentReplyId));
}

/// Already mounted in the five-tab shell; deliberately owns no new router,
/// server identity, payment rail or migration. Missing server routes render
/// an unavailable/retry state rather than invented Room records.
class RoomsScreen extends ConsumerWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) {
      return Scaffold(
        backgroundColor: context.masanawa.surfaceBg,
        body: const Center(
          child: Text('Sign in to view your Rooms.'),
        ),
      );
    }

    final ownerAccount = session.user.id;
    final api = ref.watch(apiClientProvider);
    String? currentAccount() {
      // A disposed tab must fail closed rather than retaining another fan's
      // data in an in-flight read, even after logout or account replacement.
      try {
        final current = ref.read(sessionProvider);
        return current is SessionSignedIn ? current.user.id : null;
      } catch (_) {
        return null;
      }
    }

    return KeyedSubtree(
      key: ValueKey('rooms-account-' + ownerAccount),
      child: canonical.RoomsScreen(
        // Navigator detail routes outlive the account-keyed tab. A route
        // must immediately hide and unmount private Room data on sign-out
        // or account replacement, not merely reject its next network read.
        protectDetail: (routeContext, detail) => Consumer(
          builder: (context, detailRef, _) {
            final active = detailRef.watch(sessionProvider);
            if (active is! SessionSignedIn || active.user.id != ownerAccount) {
              return const Scaffold(
                body: Center(
                  child: Text('Session changed. Sign in to view this Room.'),
                ),
              );
            }
            return detail;
          },
        ),
        client: AccountBoundRoomsClient(
          delegate: ref.watch(roomsClientProvider),
          ownerAccount: ownerAccount,
          currentAccount: currentAccount,
        ),
        communityApi: AccountBoundRoomCommunityApi(
          delegate: HttpRoomCommunityApi(api.dio, loadMasana: () async =>
            (await ref.read(agentTransportProvider).loadDirectory()).map((a) =>
              <String, dynamic>{'characterId': a.characterId, 'displayName': a.displayName}).toList()),
          ownerAccount: ownerAccount,
          currentAccount: currentAccount,
        ),
        discussionApi: AccountBoundRoomDiscussionApi(
          delegate: HttpRoomDiscussionApi(api.dio),
          ownerAccount: ownerAccount,
          currentAccount: currentAccount,
        ),
        discussionAccountScope: ownerAccount,
        membershipClient: AccountBoundRoomMembershipClient(
          delegate: HttpRoomMembershipClient(api.dio),
          ownerAccount: ownerAccount,
          currentAccount: currentAccount,
        ),
        savedLessonsClient: DioSavedLessonsClient(
          dio: api.dio,
          accountKey: ownerAccount,
          currentAccountKey: currentAccount,
        ),
        savedLessonsAccountKey: ownerAccount,
      ),
    );
  }
}

/** Direct link from the Masana directory to the canonical, account-fenced Room. */
class MasanaRoomDetailScreen extends ConsumerWidget {
  const MasanaRoomDetailScreen({super.key, required this.roomId});
  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session=ref.watch(sessionProvider);
    if(session is! SessionSignedIn) {
      return const Scaffold(body:Center(child:Text('Sign in to view this Room.')));
    }
    final accountId=session.user.id;
    final api=ref.watch(apiClientProvider);
    String? currentAccount(){
      try{
        final current=ref.read(sessionProvider);
        return current is SessionSignedIn?current.user.id:null;
      }catch(_){return null;}
    }
    return KeyedSubtree(
      key:ValueKey('masana-room-$accountId-$roomId'),
      child:_RoomLinkResolver(
        dio:api.dio,
        roomId:roomId,
        accountId:accountId,
        currentAccount:currentAccount,
        communityApi:AccountBoundRoomCommunityApi(
          delegate:HttpRoomCommunityApi(api.dio, loadMasana:() async =>
            (await ref.read(agentTransportProvider).loadDirectory()).map((a) =>
              <String,dynamic>{'characterId':a.characterId,'displayName':a.displayName}).toList()),
          ownerAccount:accountId,currentAccount:currentAccount),
        protectDetail:(context,detail)=>Consumer(builder:(context,detailRef,_){
          final active=detailRef.watch(sessionProvider);
          return active is SessionSignedIn && active.user.id==accountId?detail:
            const Scaffold(body:Center(child:Text('Session changed. Sign in to view this Room.')));
        }),
        legacy:canonical.RoomHomeScreen(
        protectDetail:(routeContext,detail)=>Consumer(builder:(context,detailRef,_){
          final active=detailRef.watch(sessionProvider);
          return active is SessionSignedIn && active.user.id==accountId?detail:
            const Scaffold(body:Center(child:Text('Session changed. Sign in to view this Room.')));
        }),
        id:roomId,
        client:AccountBoundRoomsClient(delegate:ref.watch(roomsClientProvider),
          ownerAccount:accountId,currentAccount:currentAccount),
        discussionApi:AccountBoundRoomDiscussionApi(
          delegate:HttpRoomDiscussionApi(api.dio),
          ownerAccount:accountId,currentAccount:currentAccount),
        discussionAccountScope:accountId,
        membershipClient:AccountBoundRoomMembershipClient(
          delegate:HttpRoomMembershipClient(api.dio),
          ownerAccount:accountId,currentAccount:currentAccount),
        savedLessonsClient:DioSavedLessonsClient(
          dio:api.dio,accountKey:accountId,currentAccountKey:currentAccount),
        savedLessonsAccountKey:accountId,
      ),
      ),
    );
  }
}


/// Resolve the canonical ID without moving professional history into community UI.
class _RoomLinkResolver extends StatefulWidget {
  const _RoomLinkResolver({required this.dio,required this.roomId,required this.accountId,
    required this.currentAccount,required this.communityApi,required this.protectDetail,required this.legacy});
  final Dio dio;
  final String roomId,accountId;
  final String? Function() currentAccount;
  final RoomCommunityApi communityApi;
  final Widget Function(BuildContext,Widget) protectDetail;
  final Widget legacy;
  @override State<_RoomLinkResolver> createState()=>_RoomLinkResolverState();
}
class _RoomLinkResolverState extends State<_RoomLinkResolver> {
  late Future<bool> community=resolve();
  Future<bool> resolve() async {
    if(widget.currentAccount()!=widget.accountId)throw StateError('account_changed');
    final r=await widget.dio.get<Map<String,dynamic>>('/v1/rooms/${Uri.encodeComponent(widget.roomId)}/community');
    if(widget.currentAccount()!=widget.accountId)throw StateError('account_changed');
    return r.data?['ownerUserId'] is String;
  }
  @override Widget build(BuildContext context)=>FutureBuilder<bool>(future:community,builder:(context,snapshot){
    if(snapshot.hasError)return Scaffold(appBar:AppBar(title:const Text('Room')),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
      const Text('Room unavailable. Check access or try again.'),
      TextButton(onPressed:()=>setState(()=>community=resolve()),child:const Text('Retry'))])));
    if(!snapshot.hasData)return const Scaffold(body:Center(child:CircularProgressIndicator()));
    return snapshot.data! ? RoomCommunityScreen(api:widget.communityApi,roomId:widget.roomId,protectDetail:widget.protectDetail) : widget.legacy;
  });
}
