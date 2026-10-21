import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../features/rooms/room_community_api.dart';
import '../../features/rooms/room_community_screen.dart';
import '../../features/rooms/rooms_screen.dart' as redesigned;
import '../../state/session_state.dart';

RoomCommunityApi _api(WidgetRef ref, String account) => AccountBoundRoomCommunityApi(
  delegate:HttpRoomCommunityApi(ref.watch(apiClientProvider).dio,loadMasana:() async =>
    (await ref.read(agentTransportProvider).loadDirectory()).map((a) =>
      <String,dynamic>{'characterId':a.characterId,'displayName':a.displayName}).toList()),
  ownerAccount:account,currentAccount:(){final s=ref.read(sessionProvider);return s is SessionSignedIn?s.user.id:null;});
Widget _protect(String account,Widget detail)=>Consumer(builder:(context,ref,_){
  final s=ref.watch(sessionProvider);
  return s is SessionSignedIn&&s.user.id==account?detail:const Scaffold(body:Center(child:Text('Session changed. Sign in to view Rooms.')));
});
class RoomsScreen extends ConsumerWidget {
  const RoomsScreen({super.key});
  @override Widget build(BuildContext context,WidgetRef ref){
    final s=ref.watch(sessionProvider);
    if(s is! SessionSignedIn)return const Scaffold(body:Center(child:Text('Sign in to view Rooms.')));
    return KeyedSubtree(key:ValueKey('rooms-${s.user.id}'),child:redesigned.RoomsScreen(api:_api(ref,s.user.id),protectDetail:(_,detail)=>_protect(s.user.id,detail)));
  }
}
/// Compatibility route name only; the retired lesson screen has been removed.
class MasanaRoomDetailScreen extends ConsumerWidget {
  const MasanaRoomDetailScreen({super.key,required this.roomId});
  final String roomId;
  @override Widget build(BuildContext context,WidgetRef ref){
    final s=ref.watch(sessionProvider);
    if(s is! SessionSignedIn)return const Scaffold(body:Center(child:Text('Sign in to view this Room.')));
    return KeyedSubtree(key:ValueKey('room-${s.user.id}-$roomId'),child:RoomCommunityScreen(api:_api(ref,s.user.id),roomId:roomId,protectDetail:(_,detail)=>_protect(s.user.id,detail)));
  }
}
