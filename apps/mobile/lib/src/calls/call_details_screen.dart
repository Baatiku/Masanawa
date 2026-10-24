import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../agents/masana_portrait_avatar.dart';
import '../core/live_call_foreground.dart';
import '../screens/profile/masana_profile_screen.dart';
import '../state/agent_directory_state.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'call_history.dart';
import 'masana_voice_route.dart';
import 'group_call_transport.dart';

String callDurationLabel(Duration duration){
 final seconds=duration.inSeconds;
 final tail='${(seconds~/60%60).toString().padLeft(2,'0')}:${(seconds%60).toString().padLeft(2,'0')}';
 return seconds>=3600?'${seconds~/3600}:$tail':tail;
}
class CallDetailsScreen extends ConsumerStatefulWidget{
 const CallDetailsScreen({super.key,required this.ownerId,required this.initial});
 final String ownerId;final CallHistoryItem initial;
 @override ConsumerState<CallDetailsScreen> createState()=>_DetailsState();
}
class _DetailsState extends ConsumerState<CallDetailsScreen>{
 CallHistoryItem? call;MasanaCallGroup? group;bool loading=true,groupFailed=false;String? error;
 int generation=0;CancelToken? request;
 bool get current{final s=ref.read(sessionProvider);return s is SessionSignedIn&&s.user.id==widget.ownerId;}
 @override void initState(){super.initState();load();}
 @override void dispose(){generation++;request?.cancel();super.dispose();}
 Future<void> load()async{
  final version=++generation;request?.cancel();final cancel=CancelToken();request=cancel;
  if(!current)return;
  setState((){loading=true;error=null;call=null;group=null;groupFailed=false;});
  final transport=ref.read(callHistoryTransportProvider);
  try{
   final item=transport is CallDetailTransport?await (transport as CallDetailTransport).get(widget.initial.callId,cancelToken:cancel):widget.initial;
   if(!mounted||version!=generation||!current)return;
   MasanaCallGroup? members;var failed=false;
   if(item.groupId!=null&&transport is CallDetailTransport){
    try{members=await (transport as CallDetailTransport).group(item.groupId!,cancelToken:cancel);}catch(_){failed=true;}
   }
   if(!mounted||version!=generation||!current)return;
   setState((){call=item;group=members;groupFailed=failed;loading=false;});
  }catch(e){if(mounted&&version==generation&&current)setState((){loading=false;error=e is DioException&&e.response?.statusCode==404?'This call is no longer available.':'Could not load call details. Check your connection and retry.';});}
 }
 String date(DateTime value){final d=value.toLocal(),l=MaterialLocalizations.of(context);return '${l.formatFullDate(d)} · ${l.formatTimeOfDay(TimeOfDay.fromDateTime(d))}';}
 Future<void> profile(String id)async{
  if(!current)return;
  var agents=ref.read(agentDirectoryProvider).agents;
  if(!agents.any((a)=>a.characterId==id)){await ref.read(agentDirectoryProvider.notifier).refresh();agents=ref.read(agentDirectoryProvider).agents;}
  if(!mounted||!current)return;
  final matches=agents.where((a)=>a.characterId==id);
  if(matches.isEmpty){ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('This Masana profile is unavailable.')));return;}
  await Navigator.push<void>(context,MaterialPageRoute(builder:(_)=>MasanaProfileScreen(agent:matches.first)));
 }
 Widget detailField(IconData icon, String label, String value) {
  final u=context.masanawa;
  return Padding(
   padding:const EdgeInsets.symmetric(vertical:4),
   child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[
    Icon(icon,size:20,color:u.brand),const SizedBox(width:12),
    Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
     Text(label,style:Theme.of(context).textTheme.labelMedium?.copyWith(color:u.textMuted)),
     const SizedBox(height:3),
     Text(value,style:Theme.of(context).textTheme.bodyMedium?.copyWith(color:u.textPrimary)),
    ])),
   ]),
  );
 }
 Widget sectionCard({required Widget child}) {
  final u=context.masanawa;
  return Container(
   width:double.infinity,
   padding:const EdgeInsets.all(18),
   decoration:BoxDecoration(
    color:u.surfaceCard,borderRadius:BorderRadius.circular(18),
    border:Border.all(color:u.structuralBorder),
   ),
   child:child,
  );
 }
 @override Widget build(BuildContext context){
  ref.listen(sessionProvider,(previous,next){
   final prior=previous is SessionSignedIn?previous.user.id:null,owner=next is SessionSignedIn?next.user.id:null;
   if(prior!=owner){generation++;request?.cancel();call=null;group=null;error=null;
    if(owner==widget.ownerId)WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)unawaited(load());});
   }
  });
  final s=ref.watch(sessionProvider);
  if(s is! SessionSignedIn||s.user.id!=widget.ownerId)return Scaffold(appBar:AppBar(title:const Text('Call details')),body:const Center(child:Text('Sign in to view this call.')));
  final item=call;
  final u=context.masanawa;
  return Scaffold(backgroundColor:u.surfaceBg,appBar:AppBar(title:const Text('Call details'),actions:[IconButton(tooltip:'Refresh call details',onPressed:loading?null:load,icon:const Icon(Icons.refresh))]),
   body:loading?const Center(child:CircularProgressIndicator()):error!=null?Center(child:Padding(padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[Text(error!,textAlign:TextAlign.center),TextButton(onPressed:load,child:const Text('Retry'))]))):item==null?const Center(child:Text('Call unavailable.')):
   ListView(padding:const EdgeInsets.fromLTRB(18,24,18,40),children:[
    Center(child:MasanaPortraitAvatar(
      characterId:item.characterId,
      agent:ref.watch(agentDirectoryProvider).find(item.characterId),
      displayName:item.displayName,size:90)),const SizedBox(height:14),
    Text(item.displayName,textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.w800,color:u.textPrimary)),
    const SizedBox(height:8),
    Text('${item.isGroupCall?'Group call · ':''}${item.incoming?'Incoming':'Outgoing'} audio call',textAlign:TextAlign.center,style:TextStyle(color:u.textMuted)),
    const SizedBox(height:16),
    Center(child:Container(
     padding:const EdgeInsets.symmetric(horizontal:16,vertical:9),
     decoration:BoxDecoration(color:u.surfaceMuted,borderRadius:BorderRadius.circular(24)),
     child:Text(item.outcomeLabel,style:TextStyle(color:item.missed?u.emergency:u.textPrimary,fontWeight:FontWeight.w700)),
    )),
    const SizedBox(height:22),
    Wrap(alignment:WrapAlignment.center,spacing:10,runSpacing:10,children:[
     if(!item.isGroupCall)...[
       FilledButton.icon(onPressed:LiveCallForeground.active?null:(){if(current)context.push(masanaLiveVoiceRoute(item.characterId));},icon:const Icon(Icons.call_outlined),label:const Text('Call again')),
       OutlinedButton.icon(onPressed:(){if(current)context.push('/chat/${Uri.encodeComponent(item.characterId)}');},icon:const Icon(Icons.chat_outlined),label:const Text('Message')),
       OutlinedButton.icon(onPressed:()=>profile(item.characterId),icon:const Icon(Icons.person_outline),label:const Text('View profile')),
     ]else
       OutlinedButton.icon(onPressed:()=>context.go('/home?tab=calls'),icon:const Icon(Icons.groups_outlined),label:const Text('Back to Calls')),
    ]),
    if(item.isGroupCall)const Padding(padding:EdgeInsets.only(top:12),child:Text('To start a new group call, choose Call multiple Masana from Calls. An old group call cannot be redialled as one Masana.',textAlign:TextAlign.center)),
    const SizedBox(height:26),
    Text('Call timeline',style:Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight:FontWeight.w800,color:u.textPrimary)),
    const SizedBox(height:10),
    sectionCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
     detailField(Icons.schedule_outlined,'Started',date(item.createdAt)),
     if(item.connectedAt!=null)...[const Divider(height:22),detailField(Icons.link_outlined,'Connected',date(item.connectedAt!))],
     if(item.endedAt!=null)...[const Divider(height:22),detailField(Icons.call_end_outlined,'Ended',date(item.endedAt!))],
     const Divider(height:22),
     detailField(Icons.timer_outlined,'Duration',item.duration==null?'No completed connection duration recorded':callDurationLabel(item.duration!)),
     if(item.endReason!=null)...[const Divider(height:22),detailField(Icons.info_outline,'End reason',item.endReason!.label)],
    ])),
    if(group!=null)...[
     const SizedBox(height:22),
     Text('Group participants',style:Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight:FontWeight.w800)),
     const SizedBox(height:10),
     sectionCard(child:Column(children:[
      for(final member in group!.participants)ListTile(contentPadding:EdgeInsets.zero,leading:MasanaPortraitAvatar(
       characterId:member.characterId,
       agent:ref.watch(agentDirectoryProvider).find(member.characterId),
       displayName:member.displayName,size:40),title:Text(member.displayName),subtitle:Text({'selected':'Selected','connecting':'Connecting','active':'Connected','left':'Left','failed':'Could not connect'}[member.state]??member.state),trailing:const Icon(Icons.chevron_right),onTap:()=>profile(member.characterId)),
     ])),
    ],
    if(groupFailed)Padding(padding:const EdgeInsets.only(top:16),child:Column(children:[const Text('Group details could not be refreshed.',textAlign:TextAlign.center),TextButton(onPressed:load,child:const Text('Retry group details'))])),
    const SizedBox(height:22),
    sectionCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
     Text('Call reference',style:Theme.of(context).textTheme.labelMedium?.copyWith(color:u.textMuted)),
     const SizedBox(height:5),
     Row(children:[Expanded(child:SelectableText(item.callId)),IconButton(tooltip:'Copy call reference',icon:const Icon(Icons.copy_outlined),onPressed:()=>Clipboard.setData(ClipboardData(text:item.callId)))]),
    ])),
   ]));
 }
}
