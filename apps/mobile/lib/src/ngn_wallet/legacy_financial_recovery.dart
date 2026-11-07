import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import '../gb_wallet/gb_send_screen.dart' as legacy;
import '../gb_wallet/gb_data_pending_store.dart' as olddata;
/// Read only original MB operations; never exchange their balances into cash.
class LegacyFinancialRecovery extends ConsumerStatefulWidget{
 const LegacyFinancialRecovery({super.key});
 @override ConsumerState<LegacyFinancialRecovery> createState()=>_LegacyFinancialRecoveryState();
}
class _LegacyFinancialRecoveryState extends ConsumerState<LegacyFinancialRecovery>{
 String? _owner;int? _epoch;bool _busy=false;bool _hasPending=false;String? _status;
 Future<void> _check(String user,int epoch)async{
  setState((){_busy=true;_status=null;});
  bool current(){final s=ref.read(sessionProvider);return mounted&&s is SessionSignedIn&&s.user.id==user&&ref.read(sessionProvider.notifier).authorizationEpoch==epoch;}
  try{
   final send=await const legacy.SecureGbSendPendingStore().read(user);final data=await const olddata.GbDataPendingStore().read(user);final api=ref.read(apiClientProvider);
   if(!current())return;
   if(send!=null){final r=await api.dio.get<Object?>('/v1/gb/wallet/send/receipt/${Uri.encodeComponent(send.operationId)}');if(!current())return;final raw=r.data;if(raw is Map&&raw['receipt'] is Map&&(raw['receipt'] as Map)['state']=='completed')await const legacy.SecureGbSendPendingStore().clear(user);}
   if(data!=null){final r=await api.dio.get<Object?>('/v1/gb/data/purchases/intent/${Uri.encodeComponent(data.idempotencyKey)}');if(!current())return;final raw=r.data;if(raw is Map&&const ['delivered','failed'].contains(raw['state']))await const olddata.GbDataPendingStore().clear(user);}
   if(current())setState(()=>_status=send==null&&data==null?'No earlier payment pending.':'Original payment checked. Historical MB amounts remain unchanged.');
  }catch(_){if(current())setState(()=>_status='Earlier payment remains unconfirmed. Check again; no new payment was sent.');}
  finally{if(current())setState(()=>_busy=false);}
 }
 Future<void> _inspect(String user,int epoch)async{try{final send=await const legacy.SecureGbSendPendingStore().read(user);final data=await const olddata.GbDataPendingStore().read(user);final s=ref.read(sessionProvider);if(mounted&&s is SessionSignedIn&&s.user.id==user&&ref.read(sessionProvider.notifier).authorizationEpoch==epoch)setState(()=>_hasPending=send!=null||data!=null);}catch(_){if(mounted&&_owner==user&&_epoch==epoch)setState(()=>_hasPending=true);}}
 @override Widget build(BuildContext context){final s=ref.watch(sessionProvider);final user=s is SessionSignedIn?s.user.id:null;final epoch=ref.read(sessionProvider.notifier).authorizationEpoch;if(user!=_owner||epoch!=_epoch){_owner=user;_epoch=epoch;_busy=false;_status=null;_hasPending=false;if(user!=null)Future.microtask(()=>_inspect(user,epoch));}if(user==null||!_hasPending)return const SizedBox.shrink();return Column(children:[TextButton(onPressed:_busy?null:()=>_check(user,epoch),child:const Text('Check earlier payment')),if(_status!=null)Text(_status!,textAlign:TextAlign.center)]);}
}
