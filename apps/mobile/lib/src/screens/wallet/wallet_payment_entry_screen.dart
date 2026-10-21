import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/wallet_payment_request.dart';
import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../finance/msnw_custody_send.dart';
import '../../state/session_state.dart';

/// Reuses canonical Send lookup/review/recovery; the link cannot submit funds.
class WalletPaymentEntryScreen extends ConsumerStatefulWidget {
  const WalletPaymentEntryScreen({super.key,this.location});
  final Uri? location;
  @override ConsumerState<WalletPaymentEntryScreen> createState()=>_WalletPaymentEntryState();
}
class _WalletPaymentEntryState extends ConsumerState<WalletPaymentEntryScreen>{
  final input=TextEditingController();WalletPaymentRequest? request;String? error;
  void readLocation(){
    input.clear();request=null;error=null;
    if(widget.location!=null){request=parseWalletPaymentRequest(widget.location!,internal:true);if(request==null)error='This request is invalid or expired.';}
  }
  @override void initState(){super.initState();readLocation();}
  @override void didUpdateWidget(covariant WalletPaymentEntryScreen oldWidget){
    super.didUpdateWidget(oldWidget);
    if(oldWidget.location!=widget.location)readLocation();
  }
  @override void dispose(){input.dispose();super.dispose();}
  void open(){
    final uri=Uri.tryParse(input.text.trim());final parsed=uri==null?null:parseWalletPaymentRequest(uri);
    setState((){request=parsed;error=parsed==null?'Use a valid, unexpired Masanawa payment request.':null;});
  }
  @override Widget build(BuildContext context){
    final session=ref.watch(sessionProvider);
    if(session is! SessionSignedIn)return const Scaffold(body:Center(child:Text('Sign in to review this payment request.')));
    final current=request;
    return Scaffold(appBar:AppBar(title:const Text('Payment request')),body:current==null?ListView(padding:const EdgeInsets.all(20),children:[
      const Text('Paste a Masanawa payment request. You will verify the recipient and review the exact amount before sending.'),
      TextField(controller:input,maxLength:2000,autocorrect:false,decoration:const InputDecoration(labelText:'Payment request link')),
      FilledButton(onPressed:open,child:const Text('Open request')),if(error!=null)Text(error!),
    ]):Column(children:[
      const Padding(padding:EdgeInsets.all(12),child:Text('Requested MSNW payment. Verify the recipient and amount below. Opening this request does not send money.')),
      Expanded(child:MsnwCustodySendSheet(key:ValueKey('${session.user.id}:${current.link}'),dio:ref.read(dioProvider),baseUrl:kApiBaseUrl,
        expectedUserId:session.user.id,currentUserId:()=>switch(ref.read(sessionProvider)){SessionSignedIn(:final user)=>user.id,_=>null},
        accessToken:()=>ref.read(apiClientProvider).accessToken,onCompleted:(){},paymentRequest:current)),
    ]));
  }
}
