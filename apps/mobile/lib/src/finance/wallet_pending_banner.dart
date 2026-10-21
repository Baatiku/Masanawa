import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';
import 'crypto_state.dart';

class WalletPendingBanner extends ConsumerStatefulWidget {
  const WalletPendingBanner({super.key,this.hideAmounts=false});
  final bool hideAmounts;
  @override ConsumerState<WalletPendingBanner> createState()=>_WalletPendingBannerState();
}
class _WalletPendingBannerState extends ConsumerState<WalletPendingBanner>{
  bool busy=false;
  Future<void> check()async{
    final owner=ref.read(sessionProvider);
    setState(()=>busy=true);
    try{
      final result=await ref.read(cryptoWalletProvider.notifier).checkPendingOperation();
      if(mounted&&ref.read(sessionProvider)==owner&&result!=null)ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Original operation: ${result.status.replaceAll('_',' ')}')));
    }catch(error){
      if(mounted&&ref.read(sessionProvider)==owner)ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(error.toString())));
    }finally{if(mounted)setState(()=>busy=false);}
  }
  @override Widget build(BuildContext context)=>ref.watch(walletPendingCryptoProvider).when(
    loading:()=>const LinearProgressIndicator(),
    error:(_,__)=>const ListTile(title:Text('Recovery storage unavailable'),subtitle:Text('Check previous payment status before starting another.')),
    data:(pending)=>pending==null?const SizedBox.shrink():Card(child:Padding(padding:const EdgeInsets.all(16),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      const Text('Previous operation needs status confirmation'),
      SelectableText('Reference: ${pending['requestId']}'),
      if(!widget.hideAmounts)Text('${pending['amount']} ${pending['providerCode']}'),
      const Text('Checking status never sends a new payment. A request awaiting review remains pending.'),
      OutlinedButton(onPressed:busy?null:check,child:Text(busy?'Checking…':'Check original status')),
    ]))),
  );
}
