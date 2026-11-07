import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';
class NgnRequestDetailScreen extends ConsumerStatefulWidget{
 const NgnRequestDetailScreen({super.key,required this.requestId});final String requestId;
 @override ConsumerState<NgnRequestDetailScreen> createState()=>_NgnRequestDetailScreenState();
}
class _NgnRequestDetailScreenState extends ConsumerState<NgnRequestDetailScreen>{
 GbWalletOwner? _owner;Map? _row;String? _error;bool _busy=false;int _generation=0;CancelToken? _cancel;
 bool _current(GbWalletOwner owner)=>mounted&&_owner==owner&&ref.read(sessionProvider) is SessionSignedIn&&(ref.read(sessionProvider) as SessionSignedIn).user.id==owner.accountId&&ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;
 Future<void> _load(GbWalletOwner owner)async{
  final generation=++_generation;_cancel?.cancel();final cancel=_cancel=CancelToken();setState((){_busy=true;_error=null;});
  try{final r=await ref.read(apiClientProvider).dio.get<Object?>('/v1/ngn/wallet/requests/${Uri.encodeComponent(widget.requestId)}',cancelToken:cancel,options:Options(headers:const {'Cache-Control':'no-store'}));final body=r.data;final row=body is Map?body['request']:null;if(row is! Map||row['requestId']!=widget.requestId||row['currency']!='NGN'||row['unit']!='kobo'||row['amountKobo'] is! int||(row['amountKobo'] as int)<1||!(row['payerId']==owner.accountId||row['requesterId']==owner.accountId))throw const FormatException('Invalid request');if(_current(owner)&&generation==_generation)setState(()=>_row=row);}
  catch(_){if(_current(owner)&&generation==_generation)setState(()=>_error='Request unavailable. Retry.');}
  finally{if(_current(owner)&&generation==_generation)setState(()=>_busy=false);}
 }
 Future<void> _act(GbWalletOwner owner,String action)async{
  if(_busy||!_current(owner))return;
  if(action=='pay'){final yes=await showDialog<bool>(context:context,builder:(context)=>AlertDialog(title:const Text('Pay request'),content:Text('Send ${ngnMoney(_row!['amountKobo'] as int)} to the original requester?'),actions:[TextButton(onPressed:()=>Navigator.pop(context,false),child:const Text('Cancel')),FilledButton(onPressed:()=>Navigator.pop(context,true),child:const Text('Confirm'))]));if(yes!=true||!_current(owner))return;}
  setState(()=>_busy=true);
  try{await ref.read(apiClientProvider).dio.post<Object?>('/v1/ngn/wallet/requests/${Uri.encodeComponent(widget.requestId)}/$action',data:action=='pay'?{'reviewAccepted':true}:<String,dynamic>{},options:Options(headers:const {'Cache-Control':'no-store'}));if(!_current(owner))return;ref.invalidate(gbWalletSummaryProvider(owner));await _load(owner);}
  catch(_){if(_current(owner))setState(()=>_error='Not confirmed. Check the original request again before retrying.');}
  finally{if(_current(owner))setState(()=>_busy=false);}
 }
 @override void dispose(){_generation++;_cancel?.cancel();super.dispose();}
 @override Widget build(BuildContext context){final s=ref.watch(sessionProvider);final owner=s is SessionSignedIn?(accountId:s.user.id,authorizationEpoch:ref.read(sessionProvider.notifier).authorizationEpoch):null;if(owner!=_owner){_generation++;_cancel?.cancel();_owner=owner;_row=null;_error=null;_busy=false;if(owner!=null)Future.microtask(()=>_load(owner));}final row=_row;final canAct=row?['state']=='open'&&DateTime.tryParse(row?['expiresAt'] as String? ?? '')?.isAfter(DateTime.now())==true;
  return Scaffold(appBar:AppBar(title:const Text('NGN request')),body:ListView(padding:const EdgeInsets.all(20),children:[if(_busy)const LinearProgressIndicator(),if(row!=null)...[Text(ngnMoney(row['amountKobo'] as int),textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineMedium),Text('Status: ${row['state']}',textAlign:TextAlign.center),SelectableText(widget.requestId),if(owner!=null&&canAct)...[if(row['payerId']==owner.accountId)...[FilledButton(onPressed:_busy?null:()=>_act(owner,'pay'),child:const Text('Pay')),TextButton(onPressed:_busy?null:()=>_act(owner,'decline'),child:const Text('Decline'))],if(row['requesterId']==owner.accountId)TextButton(onPressed:_busy?null:()=>_act(owner,'cancel'),child:const Text('Cancel request'))]],if(_error!=null)Text(_error!,textAlign:TextAlign.center),TextButton(onPressed:owner==null||_busy?null:()=>_load(owner),child:const Text('Check original request'))]));
 }
}
