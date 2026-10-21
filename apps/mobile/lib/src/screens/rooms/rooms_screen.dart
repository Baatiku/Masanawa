import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../features/rooms/room_community_api.dart';
import '../../features/rooms/room_community_screen.dart';
import '../../features/rooms/rooms_screen.dart' as redesigned;
import '../../state/session_state.dart';

final roomCommunityApiProvider=Provider<RoomCommunityApi>((ref){
  final session=ref.watch(sessionProvider);
  if(session is! SessionSignedIn)throw StateError('account_changed');
  final account=session.user.id;
  final epoch=ref.read(sessionProvider.notifier).authorizationEpoch;
  return AccountBoundRoomCommunityApi(
    delegate:HttpRoomCommunityApi(ref.watch(apiClientProvider).dio,loadMasana:() async =>
      (await ref.read(agentDirectoryTransportProvider).loadDirectory()).map((a) =>
        <String,dynamic>{'characterId':a.characterId,'displayName':a.displayName}).toList()),
    ownerAccount:account,currentAccount:(){final s=ref.read(sessionProvider);return s is SessionSignedIn&&ref.read(sessionProvider.notifier).authorizationEpoch==epoch?s.user.id:null;});
});
RoomCommunityApi _api(WidgetRef ref,String account)=>ref.watch(roomCommunityApiProvider);
Widget _protect(String account,int epoch,Widget detail)=>Consumer(builder:(context,ref,_){
  final s=ref.watch(sessionProvider);
  return s is SessionSignedIn&&s.user.id==account&&ref.read(sessionProvider.notifier).authorizationEpoch==epoch?detail:const Scaffold(body:Center(child:Text('Session changed. Sign in to view Rooms.')));
});
class RoomsScreen extends ConsumerWidget {
  const RoomsScreen({super.key});
  @override Widget build(BuildContext context,WidgetRef ref){
    final s=ref.watch(sessionProvider);
    if(s is! SessionSignedIn)return const Scaffold(body:Center(child:Text('Sign in to view Rooms.')));
    final epoch=ref.read(sessionProvider.notifier).authorizationEpoch;
    return KeyedSubtree(key:ValueKey('rooms-${s.user.id}-$epoch'),child:redesigned.RoomsScreen(api:_api(ref,s.user.id),protectDetail:(_,detail)=>_protect(s.user.id,epoch,detail)));
  }
}
/// Compatibility route name only; the retired lesson screen has been removed.
class MasanaRoomDetailScreen extends ConsumerWidget {
  const MasanaRoomDetailScreen({super.key,required this.roomId});
  final String roomId;
  @override Widget build(BuildContext context,WidgetRef ref){
    final s=ref.watch(sessionProvider);
    if(s is! SessionSignedIn)return const Scaffold(body:Center(child:Text('Sign in to view this Room.')));
    final epoch=ref.read(sessionProvider.notifier).authorizationEpoch;
    return KeyedSubtree(key:ValueKey('room-${s.user.id}-$epoch-$roomId'),child:RoomCommunityScreen(api:_api(ref,s.user.id),roomId:roomId,protectDetail:(_,detail)=>_protect(s.user.id,epoch,detail)));
  }
}
