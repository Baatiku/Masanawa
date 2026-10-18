import 'wallet_flow_page.dart';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Stablecoin payout backed by already-settled platform-custodied MSNW.
/// NOWPayments does not list MSNW as a conversion source. This uses a
/// separately funded platform stablecoin treasury, not fictitious swapping.
class MsnwStablecoinConvertSheet extends StatefulWidget {
  const MsnwStablecoinConvertSheet({
    super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId,
    required this.accessToken, required this.onCompleted,
  });
  final Dio dio;
  final String baseUrl,expectedUserId;
  final String? Function() currentUserId,accessToken;
  final VoidCallback onCompleted;
  @override
  State<MsnwStablecoinConvertSheet> createState()=>_MsnwStablecoinConvertSheetState();
}
class _MsnwStablecoinConvertSheetState extends State<MsnwStablecoinConvertSheet> {
  final amount=TextEditingController(),address=TextEditingController();
  String providerCode='USDTTRC20';
  final secureRandom=Random.secure();
  String? key,error;
  Map<String,dynamic>? price,receipt;
  bool busy=false,uncertain=false;

  @override void initState() {
    super.initState();
    amount.addListener(invalidate);
    address.addListener(invalidate);
  }
  @override void dispose(){
    amount.removeListener(invalidate);address.removeListener(invalidate);
    amount.dispose();address.dispose();super.dispose();
  }
  void invalidate(){
    if(mounted)setState((){
      price=null;receipt=null;key=null;error=null;uncertain=false;
    });
  }
  String? atomic(String text){
    final raw=text.trim();
    if(!RegExp(r'^(0|[1-9][0-9]{0,17})(\.[0-9]{1,6})?$').hasMatch(raw))
      return null;
    final parts=raw.split('.');
    final whole=BigInt.parse(parts[0]);
    final frac=BigInt.parse(parts.length==1?'0':parts[1].padRight(6,'0'));
    final value=whole*BigInt.from(1000000)+frac;
    return value>BigInt.zero?value.toString():null;
  }
  String unit(String raw){
    final v=BigInt.parse(raw);
    return (v~/BigInt.from(1000000)).toString()+'.'+
      (v%BigInt.from(1000000)).toString().padLeft(6,'0');
  }
  String idem()=>List<int>.generate(24,(_)=>secureRandom.nextInt(256))
    .map((b)=>b.toRadixString(16).padLeft(2,'0')).join();
  bool same(String token)=>mounted&&widget.currentUserId()==widget.expectedUserId&&
    widget.accessToken()?.trim()==token;
  Options auth(String token)=>Options(
    headers:{'Authorization':'Bearer '+token},followRedirects:false,
    receiveTimeout:const Duration(seconds:20));
  String uri(String path)=>widget.baseUrl.replaceFirst(RegExp(r'/$'),'')+path;
  void fail(String message,String token){
    if(same(token))setState(()=>error=message);
  }
  Future<void> review() async{
    final token=widget.accessToken()?.trim(),value=atomic(amount.text);
    if(busy||token==null||!same(token))return;
    if(value==null||address.text.trim().length<20){
      setState(()=>error='Enter a positive MSNW amount (up to six decimals) '
        'and a valid destination address.');
      return;
    }
    setState((){busy=true;error=null;price=null;receipt=null;});
    try{
      final result=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/convert/quote'),options:auth(token),
        data:{'amountMicro':value,'providerCode':providerCode,
          'destinationAddress':address.text.trim()});
      if(!same(token))return;
      final response=result.data;
      if(response is! Map||response['asset']!='MSNW'||
         response['sourceMicro']!=value||response['providerCode']!=providerCode||
         response['destinationAddress']!=address.text.trim()||
         response['targetMicro'] is! String||
         response['feeEstimateMicro'] is! String||
         response['rateUsdMicroPerMsnw'] is! String||
         response['availableMicro'] is! String||
         response['sufficient'] is! bool||
         response['providerLiquidityQualified'] is! bool){
        throw const FormatException('Invalid conversion quote');
      }
      setState((){
        price=response.cast<String,dynamic>();
        key=idem();uncertain=false;
      });
    }catch(_){
      fail('NOWPayments crypto quote unavailable. Verify approved destination, '
        'network, treasury liquidity and available MSNW.',token);
    }finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> confirm() async{
    final token=widget.accessToken()?.trim(),v=price,id=key;
    if(busy||token==null||!same(token)||v==null||id==null||
       v['sufficient']!=true||v['providerLiquidityQualified']!=true)return;
    final proceed=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW to crypto'),
        content:Text('Reserve '+unit(v['sourceMicro'] as String)+
          ' MSNW and pay '+unit(v['targetMicro'] as String)+' '+providerCode+
          ' to your approved address? NOWPayments will require payout '
          'verification. Never send funds to a different blockchain.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payout')),
        ]));
    if(proceed!=true||!same(token))return;
    setState((){busy=true;error=null;uncertain=false;});
    try{
      final result=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/convert'),options:auth(token),
        data:{
          'amountMicro':v['sourceMicro'],'providerCode':providerCode,
          'destinationAddress':address.text.trim(),
          'expectedTargetMicro':v['targetMicro'],
          'expectedFeeMicro':v['feeEstimateMicro'],
          'expectedRateUsdMicroPerMsnw':v['rateUsdMicroPerMsnw'],
          'idempotencyKey':id,
        });
      if(!same(token))return;
      final received=result.data;
      if(received is! Map||received['conversionId'] is! String||
         received['state'] is! String||received['asset']!='MSNW'){
        throw const FormatException('Unverified conversion response');
      }
      setState(()=>receipt=received.cast<String,dynamic>());
      widget.onCompleted();
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payout outcome uncertain. Do NOT submit a new conversion. '
          'Retry the same idempotency key or review your history.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> refreshReceipt() async{
    final token=widget.accessToken()?.trim();
    final op=receipt?['conversionId'];
    if(busy||token==null||!same(token)||op is! String)return;
    setState((){busy=true;error=null;});
    try{
      final r=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/convert/'+Uri.encodeComponent(op)),
        options:auth(token));
      if(!same(token))return;
      final value=r.data;
      if(value is! Map||value['conversionId']!=op||value['state'] is! String)
        throw const FormatException('Invalid provider payout status');
      setState(()=>receipt=value.cast<String,dynamic>());
      if(value['state']=='finished'||value['state']=='refunded')widget.onCompleted();
    }catch(_){
      fail('Payout status has not been verified. Reserved MSNW is protected '
        'until exact provider evidence is available.',token);
    }finally{if(mounted)setState(()=>busy=false);}
  }
  @override Widget build(BuildContext context)=>SafeArea(
    child:SingleChildScrollView(
      padding:EdgeInsets.fromLTRB(20,12,20,20+MediaQuery.viewInsetsOf(context).bottom),
      child:Column(mainAxisSize:MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text('Convert MSNW to crypto',
            style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:8),

          const SizedBox(height:10),
          WalletSelectionField<String>(
            value:providerCode,
            items:const [
              DropdownMenuItem(value:'USDTTRC20',child:Text('USDT · Tron TRC20')),
              DropdownMenuItem(value:'USDTMATIC',child:Text('USDT · Polygon')),
              DropdownMenuItem(value:'USDCMATIC',child:Text('USDC · Polygon')),
            ],
            onChanged:busy||receipt!=null?null:(next){
              if(next!=null)setState((){
                providerCode=next;price=null;key=null;receipt=null;
              });
            },
            decoration:const InputDecoration(labelText:'Crypto and network'),
          ),
          TextField(controller:amount,enabled:!busy&&receipt==null,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'MSNW amount')),
          TextField(controller:address,enabled:!busy&&receipt==null,
            decoration:const InputDecoration(labelText:'Approved crypto address')),
          if(price!=null)...[
            const SizedBox(height:8),
            Text('Reserve MSNW: '+unit(price!['sourceMicro'] as String)),
            Text('Estimated crypto: '+unit(price!['targetMicro'] as String)),
            Text('NOWPayments fee: '+unit(price!['feeEstimateMicro'] as String)),
            Text('Available MSNW: '+unit(price!['availableMicro'] as String)),
            if(price!['providerLiquidityQualified']!=true)
              const Text('Provider treasury liquidity currently unavailable.'),
            if(price!['sufficient']!=true)
              const Text('Insufficient settled MSNW available.'),
          ],
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(price==null&&receipt==null)
            FilledButton(onPressed:busy?null:review,
              child:const Text('Get executable quote')),
          if(price!=null&&receipt==null)
            FilledButton(
              onPressed:busy||price!['sufficient']!=true||
                price!['providerLiquidityQualified']!=true?null:confirm,
              child:const Text('Review and convert')),
          if(receipt!=null)...[
            Text('Status: '+(receipt!['state'] as String)),
            SelectableText('Reference: '+(receipt!['conversionId'] as String)),
            if(receipt!['state']=='finished')
              const Text('Provider withdrawal confirmed.'),
            if(receipt!['state']=='manual_review')
              const Text('Provider submission uncertain. Do not retry a new payout.'),
            OutlinedButton(onPressed:busy?null:refreshReceipt,
              child:const Text('Check payout status')),
          ],
          if(uncertain&&receipt==null)TextButton(
            onPressed:busy?null:confirm,child:const Text('Retry SAME conversion')),
        ],
      ),
    ),
  );
}
