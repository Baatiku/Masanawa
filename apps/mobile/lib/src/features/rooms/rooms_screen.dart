import 'package:flutter/material.dart';
import 'room_community_api.dart';
import 'room_community_screen.dart';

/// The single Rooms product: user-created broadcast or discussion communities.
class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key, required this.api, this.protectDetail});
  final RoomCommunityApi api;
  final Widget Function(BuildContext, Widget)? protectDetail;
  @override State<RoomsScreen> createState() => _RoomsState();
}
class _RoomsState extends State<RoomsScreen> {
  final search = TextEditingController();
  List<CommunityRoom> rooms = [];
  List<Map<String,dynamic>> invitations = [];
  bool joined = true, loading = true, accepting = false;
  Object? error;
  int generation = 0;
  @override void initState() { super.initState(); load(); }
  @override void dispose() { generation++; search.dispose(); super.dispose(); }
  Future<void> load() async {
    final version = ++generation;
    setState(() { loading = true; error = null; });
    try {
      final result = await widget.api.list(joined);
      final pending = await widget.api.invitations();
      if (!mounted || version != generation) return;
      setState(() { rooms = result; invitations = pending; loading = false; });
    } catch (e) { if (mounted && version == generation) setState(() { error = e; loading = false; }); }
  }
  Future<T?> open<T>(Widget detail) => Navigator.push<T>(context, MaterialPageRoute(builder: (routeContext) => widget.protectDetail?.call(routeContext, detail) ?? detail));
  Future<void> enter(String id) async {
    await open<void>(RoomCommunityScreen(api: widget.api, roomId: id, protectDetail: widget.protectDetail));
    if (mounted) load();
  }
  Future<void> create() async {
    final room = await open<CommunityRoom>(CreateCommunityRoomScreen(api: widget.api));
    if (mounted && room != null) await enter(room.id);
  }
  Future<void> accept(Map<String,dynamic> invite) async {
    if (accepting) return;
    setState(() => accepting = true);
    try { await widget.api.action('${invite['roomId']}', 'join', {'inviteId': invite['inviteId']}); if (mounted) await enter('${invite['roomId']}'); }
    catch (e) { if (mounted) setState(() => error = e); }
    finally { if (mounted) setState(() => accepting = false); }
  }
  @override Widget build(BuildContext context) {
    final query = search.text.trim().toLowerCase();
    final visible = rooms.where((r) => '${r.name} ${r.description}'.toLowerCase().contains(query)).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Rooms'), actions: [IconButton(tooltip:'Create Room', onPressed:create, icon:const Icon(Icons.add))]),
      body: Column(children: [
        Padding(padding:const EdgeInsets.all(12), child:TextField(controller:search, decoration:const InputDecoration(prefixIcon:Icon(Icons.search),hintText:'Search Rooms'), onChanged:(_) => setState(() {}))),
        Padding(padding:const EdgeInsets.symmetric(horizontal:12),child:Row(children:[
          ChoiceChip(label:const Text('Joined'),selected:joined,onSelected:(_) { setState(() => joined=true); load(); }),
          const SizedBox(width:8),ChoiceChip(label:const Text('Discover'),selected:!joined,onSelected:(_) { setState(() => joined=false); load(); }),
        ])),
        for(final invite in invitations) ListTile(leading:const Icon(Icons.mail_outline),title:Text('${invite['name']}'),subtitle:const Text('Room invitation'),trailing:TextButton(onPressed:accepting?null:()=>accept(invite),child:const Text('Accept'))),
        if(error!=null) ListTile(title:Text(communityError(error!)),trailing:TextButton(onPressed:load,child:const Text('Retry'))),
        Expanded(child:loading?const Center(child:CircularProgressIndicator()):visible.isEmpty?
          Center(child:Column(mainAxisSize:MainAxisSize.min,children:[Text(joined?'Create or discover a Room':'No Rooms match this search'),TextButton(onPressed:joined?create:load,child:Text(joined?'Create Room':'Refresh'))])):
          RefreshIndicator(onRefresh:load,child:ListView.builder(itemCount:visible.length,itemBuilder:(context,i){
            final r=visible[i];return ListTile(leading:const CircleAvatar(child:Icon(Icons.groups_outlined)),title:Text(r.name),subtitle:Text('${r.memberCount} members · ${r.visibility}'),trailing:Row(mainAxisSize:MainAxisSize.min,children:[if(r.pinned)const Icon(Icons.push_pin_outlined),if(r.muted)const Icon(Icons.notifications_off_outlined),if(r.unreadCount>0)Badge(label:Text('${r.unreadCount}'))]),onTap:()=>enter(r.id));
          }))),
      ]),
    );
  }
}
