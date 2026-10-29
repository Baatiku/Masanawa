import 'gb_retained_finance_screens.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_activity_detail_screen.dart';
import 'gb_wallet_holds.dart';

bool _owns(WidgetRef ref,GbWalletOwner owner){
  final session=ref.read(sessionProvider);
  return session is SessionSignedIn&&session.user.id==owner.accountId&&
    ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;
}
class GbWalletHoldsPanel extends ConsumerStatefulWidget {
  const GbWalletHoldsPanel({super.key,required this.owner});final GbWalletOwner owner;
  @override ConsumerState<GbWalletHoldsPanel> createState()=>_HoldsPanelState();
}
class _HoldsPanelState extends ConsumerState<GbWalletHoldsPanel>{
  bool _expanded=false,_busy=false,_failed=false,_loaded=false;
  String _filter='all';String? _next;DateTime? _snapshot;
  final _items=<String,GbWalletHold>{},_used=<String>{};
  int _generation=0;CancelToken? _request;
  bool get _current=>mounted&&_owns(ref,widget.owner);
  @override void dispose(){_generation++;_request?.cancel();super.dispose();}
  @override void didUpdateWidget(covariant GbWalletHoldsPanel old){
    super.didUpdateWidget(old);
    if(old.owner!=widget.owner){_generation++;_request?.cancel();_expanded=false;_busy=false;_failed=false;_loaded=false;_items.clear();_used.clear();_next=null;_snapshot=null;}
  }
  Future<void> _load({bool reset=false,String? cursor})async{
    if(!_current||(_busy&&!reset))return;
    final generation=++_generation;_request?.cancel();final cancel=CancelToken();_request=cancel;
    setState((){
      _busy=true;_failed=false;
      if(reset){_items.clear();_used.clear();_next=null;_snapshot=null;_loaded=false;}
    });
    try{
      final page=await ref.read(gbWalletHoldTransportProvider).page(cursor:cursor,state:_filter,cancellation:cancel);
      if(!_current||generation!=_generation)return;
      if(cursor!=null&&page.snapshotAt!=_snapshot)throw const FormatException('Changed reservation snapshot');
      setState((){
        final oldLength=_items.length;
        for(final item in page.items)_items[item.operationId]=item;
        if(cursor!=null)_used.add(cursor);
        _snapshot=page.snapshotAt;_next=page.nextCursor;
        if(page.items.isEmpty||_next==cursor||_used.contains(_next)||(cursor!=null&&oldLength==_items.length))_next=null;
        _loaded=true;_busy=false;
      });
    }catch(error){
      if(!_current||generation!=_generation)return;
      setState((){
        _busy=false;_failed=true;
        if(error is DioException&&const [401,403].contains(error.response?.statusCode)){
          _items.clear();_next=null;_loaded=false;_snapshot=null;
        }
      });
    }
  }
  void _toggle(){
    final value=!_expanded;
    setState(()=>_expanded=value);
    if(value&&!_loaded&&!_busy)unawaited(_load(reset:true));
    if(!value){_generation++;_request?.cancel();setState(()=>_busy=false);}
  }
  @override Widget build(BuildContext context){
    ref.listen(sessionProvider,(previous,next){
      if(!_current){_generation++;_request?.cancel();_items.clear();_next=null;_snapshot=null;_busy=false;}
    });
    ref.watch(sessionProvider);
    if(!_current)return const SizedBox.shrink();
    return Card(child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      Semantics(expanded:_expanded,child:ListTile(
        title:const Text('Reservations and releases'),subtitle:const Text('Held or released MB is not income'),
        trailing:Icon(_expanded?Icons.expand_less:Icons.expand_more),onTap:_toggle)),
      if(_expanded)Padding(padding:const EdgeInsets.fromLTRB(16,0,16,16),child:Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,children:[
          Wrap(spacing:8,runSpacing:4,children:[
            for(final state in const {'all':'All holds','reserved':'Still held','captured':'Posted debit','released':'Released'}.entries)
              ChoiceChip(key:ValueKey('hold-state-${state.key}'),label:Text(state.value),selected:_filter==state.key,
                onSelected:(_){if(_filter!=state.key){setState(()=>_filter=state.key);unawaited(_load(reset:true));}}),
          ]),
          Align(alignment:AlignmentDirectional.centerEnd,child:TextButton.icon(
            onPressed:_busy?null:()=>_load(reset:true),icon:const Icon(Icons.refresh),label:const Text('Refresh reservations'))),
          if(_snapshot!=null)Text('Listed as of UTC ${_snapshot!.toIso8601String()}',style:Theme.of(context).textTheme.bodySmall),
          for(final hold in _items.values)ListTile(contentPadding:EdgeInsets.zero,
            title:Text('${hold.title} · ${hold.stateLabel}'),subtitle:Text(hold.amountLabel),
            trailing:const Icon(Icons.chevron_right),onTap:(){if(_current)Navigator.push<void>(context,MaterialPageRoute(
              builder:(_)=>GbWalletHoldDetailScreen(owner:widget.owner,operationId:hold.operationId)));}),
          if(_busy)const LinearProgressIndicator(semanticsLabel:'Loading reservations'),
          if(_failed)TextButton(onPressed:()=>_load(reset:!_loaded,cursor:_loaded?_next:null),
            child:Text(_loaded?'Could not load more reservations. Retry.':'Could not verify reservations. Retry.')),
          if(_loaded&&_items.isEmpty&&!_busy&&!_failed)const Text('No reservations match this filter.'),
          if(_loaded&&_next!=null&&!_failed)TextButton(onPressed:_busy?null:()=>_load(cursor:_next),child:const Text('Load more reservations')),
          const Text('Open a reservation for its current status and original posted entries. A release is not a new credit or proof of provider delivery.'),
        ])),
    ]));
  }
}
class GbWalletHoldDetailScreen extends ConsumerStatefulWidget {
  const GbWalletHoldDetailScreen({super.key,required this.owner,required this.operationId});
  final GbWalletOwner owner;final String operationId;
  @override ConsumerState<GbWalletHoldDetailScreen> createState()=>_HoldDetailState();
}
class _HoldDetailState extends ConsumerState<GbWalletHoldDetailScreen>{
  GbWalletHold? _hold;bool _busy=true;String? _error;int _generation=0;CancelToken? _request;
  bool get _current=>mounted&&_owns(ref,widget.owner);
  @override void initState(){super.initState();unawaited(_load());}
  @override void dispose(){_generation++;_request?.cancel();super.dispose();}
  Future<void> _load()async{
    if(!_current)return;
    final generation=++_generation;_request?.cancel();final cancel=CancelToken();_request=cancel;
    setState((){_busy=true;_hold=null;_error=null;});
    try{
      final hold=await ref.read(gbWalletHoldTransportProvider).detail(widget.operationId,cancellation:cancel);
      if(!_current||generation!=_generation)return;
      if(hold.operationId!=widget.operationId)throw const FormatException('Wrong reservation');
      setState((){_hold=hold;_busy=false;});
    }catch(error){if(_current&&generation==_generation)setState((){
      _busy=false;_error=error is DioException&&error.response?.statusCode==404
        ?'This reservation is no longer available.':'Could not verify this reservation. Check your connection and retry.';
    });}
  }
  Widget _field(String name,String value)=>Padding(padding:const EdgeInsets.symmetric(vertical:6),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(name,style:Theme.of(context).textTheme.labelMedium),SelectableText(value)]));
  @override Widget build(BuildContext context){
    ref.listen(sessionProvider,(previous,next){
      if(!_current){_generation++;_request?.cancel();_hold=null;_busy=false;}
    });
    ref.watch(sessionProvider);
    if(!_current)return Scaffold(appBar:AppBar(title:const Text('Reservation details')),
      body:const Center(child:Text('Sign in again to view this reservation.')));
    final hold=_hold;
    return Scaffold(appBar:AppBar(title:const Text('Reservation details'),actions:[
      IconButton(tooltip:'Refresh reservation',onPressed:_busy?null:_load,icon:const Icon(Icons.refresh))]),
      body:_busy?const Center(child:CircularProgressIndicator()):_error!=null?Center(child:Padding(
        padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[Text(_error!),
          TextButton(onPressed:_load,child:const Text('Retry reservation'))]))):hold==null?const Center(child:Text('Reservation unavailable.')):
      ListView(padding:const EdgeInsets.all(20),children:[
        Text(hold.title,style:Theme.of(context).textTheme.titleLarge),_field('Status',hold.stateLabel),
        if(hold.operationState=='reversed')const Text('The original operation was reversed. Read its posted entries for the journal record.'),
        _field('Initially reserved','${groupActivityAmount(hold.reservedMb)} MB'),
        _field('Purchased / welcome reserved','${groupActivityAmount(hold.purchasedReservedMb)} MB / ${groupActivityAmount(hold.welcomeReservedMb)} MB'),
        _field('Still held','${groupActivityAmount(hold.heldMb)} MB'),
        _field('Original posted debit','${groupActivityAmount(hold.chargedMb)} MB'),
        _field('Unused MB released','${groupActivityAmount(hold.releasedMb)} MB'),
        _field('Reserved (UTC)',hold.createdAt.toIso8601String()),
        if(hold.resolvedAt!=null)_field('Resolved (UTC)',hold.resolvedAt!.toIso8601String()),
        _field('Original operation reference',hold.operationId),
        OutlinedButton.icon(onPressed:(){if(_current)Clipboard.setData(ClipboardData(text:hold.operationId));},
          icon:const Icon(Icons.copy),label:const Text('Copy operation reference')),
        for(final entry in hold.entryIds)TextButton(onPressed:(){if(_current)Navigator.push<void>(context,MaterialPageRoute(
          builder:(_)=>GbWalletActivityDetailScreen(entryId:entry)));},child:Text('View posted entry $entry')),
        const SizedBox(height:12),
        GbWalletInquiryButton(targetKind:'hold',reference:hold.operationId),
        const Text('This reservation is not an income or delivered-data receipt. Unused MB returns to its original bucket without a new posted credit. Only a posted entry can produce a journal receipt.'),
      ]));
  }
}
