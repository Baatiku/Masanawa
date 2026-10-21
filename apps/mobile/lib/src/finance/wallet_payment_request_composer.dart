import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import '../core/wallet_payment_request.dart';

class WalletPaymentRequestComposer extends StatefulWidget{
 const WalletPaymentRequestComposer({super.key,required this.accountNumber,required this.userId,required this.authorized});
 final String accountNumber,userId;final bool Function() authorized;
 @override State<WalletPaymentRequestComposer> createState()=>_RequestComposerState();
}
class _RequestComposerState extends State<WalletPaymentRequestComposer>{
 final amount=TextEditingController();int hours=24;String? error;bool busy=false;
 @override void dispose(){amount.dispose();super.dispose();}
 Future<void> publish(bool copy)async{
  if(busy||!widget.authorized())return;
  final atomic=amount.text.trim().isEmpty?null:parsePaymentRequestAmount(amount.text);
  if(amount.text.trim().isNotEmpty&&atomic==null){setState(()=>error='Enter a positive MSNW amount with at most six decimal places.');return;}
  final link=WalletPaymentRequest(accountNumber:widget.accountNumber,userId:widget.userId,amountAtomic:atomic,expiresAt:DateTime.now().toUtc().add(Duration(hours:hours))).link;
  if(parseWalletPaymentRequest(link)==null){setState(()=>error='Request unavailable. Refresh your account number.');return;}
  setState((){busy=true;error=null;});
  try{
   if(copy){await Clipboard.setData(ClipboardData(text:link.toString()));}else{await Share.share(link.toString());}
   if(mounted&&widget.authorized()&&copy)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Payment request copied')));
  }catch(_){if(mounted&&widget.authorized())setState(()=>error='Could not share this request. Try copying the link.');}
  finally{if(mounted&&widget.authorized())setState(()=>busy=false);}
 }
 @override Widget build(BuildContext context){
  if(!widget.authorized())return const Center(child:Text('Sign in again to create a request.'));
  return ListView(padding:const EdgeInsets.all(20),children:[
   const Text('Request MSNW',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
   SelectableText('Masanawa account: ${widget.accountNumber}'),
   const Text('Internal Masanawa payment only. The sender verifies you and reviews the amount before choosing to pay. A request does not approve or guarantee payment.'),
   TextField(controller:amount,enabled:!busy,keyboardType:const TextInputType.numberWithOptions(decimal:true),decoration:const InputDecoration(labelText:'MSNW amount (optional)',helperText:'Leave empty for the sender to choose.')),
   DropdownButtonFormField<int>(value:hours,decoration:const InputDecoration(labelText:'Request expires in'),items:const[DropdownMenuItem(value:1,child:Text('1 hour')),DropdownMenuItem(value:24,child:Text('24 hours'))],onChanged:busy?null:(value)=>setState(()=>hours=value??24)),
   FilledButton.icon(onPressed:busy?null:()=>publish(false),icon:const Icon(Icons.share_outlined),label:const Text('Share request')),
   OutlinedButton.icon(onPressed:busy?null:()=>publish(true),icon:const Icon(Icons.copy),label:const Text('Copy request link')),
   if(error!=null)Text(error!),
  ]);
 }
}
