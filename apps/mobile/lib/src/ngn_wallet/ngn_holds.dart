import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';
class NgnHold{
 const NgnHold({required this.operationId,required this.kind,required this.state,required this.reservedKobo,required this.heldKobo,required this.chargedKobo,required this.releasedKobo});
 final String operationId,kind,state;final int reservedKobo,heldKobo,chargedKobo,releasedKobo;
 factory NgnHold.read(Object? raw){
  if(raw is! Map||raw['currency']!='NGN'||raw['unit']!='kobo'||raw['operationId'] is! String||raw['kind'] is! String||!const ['reserved','captured','released'].contains(raw['state']))throw const FormatException('Invalid hold');
  int amount(String key){final n=raw[key];if(n is! int||n<0||n>9007199254740991)throw const FormatException('Invalid amount');return n;}
  final reserved=amount('reservedKobo'),held=amount('heldKobo'),charged=amount('chargedKobo'),released=amount('releasedKobo');if(held+charged+released!=reserved)throw const FormatException('Inconsistent hold');
  return NgnHold(operationId:raw['operationId'] as String,kind:raw['kind'] as String,state:raw['state'] as String,reservedKobo:reserved,heldKobo:held,chargedKobo:charged,releasedKobo:released);
 }
 String get label=>switch(kind){'reply'=>'AI reply','connected_call'=>'Call','data'=>'Data purchase',_=>'Transfer'};
}
final ngnHoldsProvider=FutureProvider.autoDispose.family<List<NgnHold>,GbWalletOwner>((ref,owner)async{
 bool current(){final s=ref.read(sessionProvider);return s is SessionSignedIn&&s.user.id==owner.accountId&&ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;}
 if(!current())throw StateError('account_changed');final cancel=CancelToken();ref.onDispose(cancel.cancel);
 final r=await ref.watch(apiClientProvider).dio.get<Object?>('/v1/ngn/wallet/holds',cancelToken:cancel,options:Options(headers:const {'Cache-Control':'no-store'}));
 if(!current())throw StateError('account_changed');final raw=r.data;if(raw is! Map||raw['holds'] is! List)throw const FormatException('Invalid holds');return (raw['holds'] as List).map(NgnHold.read).toList();
});
class NgnHoldsPanel extends ConsumerWidget{
 const NgnHoldsPanel({super.key,required this.owner});final GbWalletOwner owner;
 @override Widget build(BuildContext context,WidgetRef ref){
  final state=ref.watch(ngnHoldsProvider(owner));if(state.isLoading)return const SizedBox.shrink();if(state.hasError)return Center(child:TextButton(onPressed:()=>ref.invalidate(ngnHoldsProvider(owner)),child:const Text('Retry pending payments')));
  final holds=(state.valueOrNull??[]).where((r)=>r.state=='reserved').toList();if(holds.isEmpty)return const SizedBox.shrink();return Column(children:[for(final hold in holds)ListTile(title:Text(hold.label),subtitle:const Text('Awaiting confirmation'),trailing:Text(ngnMoney(hold.heldKobo)),onTap:()=>context.push('/wallet/holds/${Uri.encodeComponent(hold.operationId)}'))]);
 }
}
final ngnHoldProvider=FutureProvider.autoDispose.family<NgnHold,({GbWalletOwner owner,String id})>((ref,key)async{
 bool current(){final s=ref.read(sessionProvider);return s is SessionSignedIn&&s.user.id==key.owner.accountId&&ref.read(sessionProvider.notifier).authorizationEpoch==key.owner.authorizationEpoch;}
 if(!current())throw StateError('account_changed');final cancel=CancelToken();ref.onDispose(cancel.cancel);
 final r=await ref.watch(apiClientProvider).dio.get<Object?>('/v1/ngn/wallet/holds/${Uri.encodeComponent(key.id)}',cancelToken:cancel,options:Options(headers:const {'Cache-Control':'no-store'}));
 if(!current())throw StateError('account_changed');final raw=r.data;if(raw is! Map)throw const FormatException('Invalid hold');final hold=NgnHold.read(raw['hold']);if(hold.operationId!=key.id)throw const FormatException('Hold mismatch');return hold;
});
class NgnHoldDetailScreen extends ConsumerWidget{
 const NgnHoldDetailScreen({super.key,required this.operationId});final String operationId;
 @override Widget build(BuildContext context,WidgetRef ref){
  final s=ref.watch(sessionProvider);final owner=s is SessionSignedIn?(accountId:s.user.id,authorizationEpoch:ref.read(sessionProvider.notifier).authorizationEpoch):null;
  final key=owner==null?null:(owner:owner,id:operationId);final state=key==null?null:ref.watch(ngnHoldProvider(key));final hold=state?.valueOrNull;
  return Scaffold(appBar:AppBar(title:const Text('Payment details')),body:Padding(padding:const EdgeInsets.all(20),child:hold==null?Center(child:TextButton(onPressed:key==null?null:()=>ref.invalidate(ngnHoldProvider(key)),child:Text(state?.isLoading==true?'Loading…':'Check original payment again'))):ListView(children:[Text(hold.label),Text('State: ${hold.state}'),Text('Reserved: ${ngnMoney(hold.reservedKobo)}'),Text('On hold: ${ngnMoney(hold.heldKobo)}'),Text('Charged: ${ngnMoney(hold.chargedKobo)}'),Text('Released: ${ngnMoney(hold.releasedKobo)}'),SelectableText(operationId)])));
 }
}
