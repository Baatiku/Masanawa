import 'wallet_flow_page.dart';
import 'dart:math';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  final storage=const FlutterSecureStorage();
  Map<String,dynamic>? pending;
  String get pendingStorageKey =>
      'msnw.convert.pending.v1.${widget.expectedUserId}';
  String? key,error;
  Map<String,dynamic>? price,receipt;
  bool busy=false,uncertain=false,restoring=true,blockedRecovery=false;

  @override void initState() {
    super.initState();
    amount.addListener(invalidate);
    address.addListener(invalidate);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(mounted)restorePending();
    });
  }
  @override void dispose(){
    amount.removeListener(invalidate);address.removeListener(invalidate);
    amount.dispose();address.dispose();super.dispose();
  }
  void invalidate(){
    if(mounted)setState((){
      price=null;receipt=null;key=null;
      if(pending==null){error=null;uncertain=false;}
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
  bool validPending(Map<String,dynamic> v) =>
      v['amountMicro'] is String &&
      RegExp(r'^[1-9][0-9]{0,23}$').hasMatch(v['amountMicro'] as String) &&
      v['expectedTargetMicro'] is String &&
      RegExp(r'^[1-9][0-9]{0,23}$').hasMatch(v['expectedTargetMicro'] as String) &&
      v['expectedFeeMicro'] is String &&
      RegExp(r'^(0|[1-9][0-9]{0,23})$').hasMatch(v['expectedFeeMicro'] as String) &&
      v['expectedRateUsdMicroPerMsnw'] is String &&
      RegExp(r'^[1-9][0-9]{0,23}$').hasMatch(v['expectedRateUsdMicroPerMsnw'] as String) &&
      const {'USDTTRC20','USDTMATIC','USDCMATIC'}.contains(v['providerCode']) &&
      v['destinationAddress'] is String &&
      RegExp(r'^[A-Za-z0-9]{20,128}$').hasMatch(v['destinationAddress'] as String) &&
      v['idempotencyKey'] is String &&
      RegExp(r'^[A-Za-z0-9:_-]{16,128}$').hasMatch(v['idempotencyKey'] as String);

  Future<void> restorePending() async {
    final token=widget.accessToken()?.trim();
    if(token==null||token.isEmpty||!same(token))return;
    try {
      final raw=await storage.read(key:pendingStorageKey);
      if(raw==null||!same(token))return;
      final decoded=jsonDecode(raw);
      if(decoded is! Map)throw const FormatException('Invalid pending payout');
      final value=decoded.cast<String,dynamic>();
      if(!validPending(value))throw const FormatException('Invalid pending payout');
      setState((){pending=value;uncertain=true;});
      await recoverPending();
    }catch(_){
      if(same(token))setState((){uncertain=true;blockedRecovery=true;error=
        'A previous payout could not be restored. Check transaction '
        'history and support before starting another conversion.';});
    }finally{
      if(same(token))setState(()=>restoring=false);
    }
  }

  Future<void> recoverPending() async {
    final original=pending,token=widget.accessToken()?.trim();
    if(busy||original==null||!validPending(original)||
        token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      final response=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/convert/status/' +
          Uri.encodeComponent(original['idempotencyKey'] as String)),
        options:auth(token));
      if(!same(token))return;
      final raw=response.data;
      if(raw is! Map||raw['asset']!='MSNW'||raw['conversionId'] is! String||
          raw['state'] is! String||
          raw['sourceMicro']!=original['amountMicro']||
          raw['targetMicro']!=original['expectedTargetMicro']||
          raw['providerCode']!=original['providerCode']||
          raw['destinationAddress']!=original['destinationAddress']){
        throw const FormatException('Conversion recovery mismatch');
      }
      final value=raw.cast<String,dynamic>();
      final terminal=const {'finished','refunded'}.contains(value['state']);
      if(terminal) {
        try{await storage.delete(key:pendingStorageKey);}catch(_){}
      }
      if(!same(token))return;
      setState((){
        receipt=value;uncertain=!terminal;
        if(terminal)pending=null;
      });
      if(terminal)widget.onCompleted();
    }on DioException catch(e){
      if(same(token))setState((){
        uncertain=true;
        error=e.response?.statusCode==404
          ? 'No existing payout is visible yet. Retry only the original '
            'request, never start a different conversion.'
          : 'Payout confirmation unavailable. Check again without '
            'creating another withdrawal.';
      });
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payout recovery details mismatched. Contact support with '
          'the original reference; do not send another payout.';
      });
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Future<void> submitPending(Map<String,dynamic> original,String token) async {
    if(busy||!same(token)||!validPending(original))return;
    setState((){busy=true;error=null;uncertain=true;});
    try {
      final result=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/convert'),options:auth(token),data:original);
      if(!same(token))return;
      final raw=result.data;
      if(raw is! Map||raw['asset']!='MSNW'||raw['conversionId'] is! String||
          raw['sourceMicro']!=original['amountMicro']||
          raw['targetMicro']!=original['expectedTargetMicro']||
          raw['providerCode']!=original['providerCode']||
          raw['destinationAddress']!=original['destinationAddress']||
          raw['state'] is! String){
        throw const FormatException('Invalid payout response');
      }
      final value=raw.cast<String,dynamic>();
      final terminal=const {'finished','refunded'}.contains(value['state']);
      if(terminal) {
        try{await storage.delete(key:pendingStorageKey);}catch(_){}
      }
      if(!same(token))return;
      setState((){
        receipt=value;uncertain=!terminal;
        if(terminal)pending=null;
      });
      widget.onCompleted();
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payout outcome is uncertain. Recover the original '
          'operation using its existing reference.';
      });
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Future<void> retryPending() async {
    final original=pending,token=widget.accessToken()?.trim();
    if(busy||original==null||!validPending(original)||
        token==null||!same(token))return;
    final approved=await openWalletPage<bool>(
      context:context,title:'Recover crypto conversion',
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Retry this original payout?'),
        content:Text('The destination and amounts stay unchanged. '
          'It reuses reference ${original['idempotencyKey']}. '
          'No new withdrawal reference is created.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Retry original')),
        ]));
    if(approved==true && same(token))await submitPending(original,token);
  }

  Future<void> review() async{
    final token=widget.accessToken()?.trim(),value=atomic(amount.text);
    if(busy||restoring||blockedRecovery||pending!=null||token==null||!same(token))return;
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
    if(busy||restoring||blockedRecovery||pending!=null||token==null||!same(token)||v==null||id==null||
       v['sufficient']!=true||v['providerLiquidityQualified']!=true)return;
    final destination=address.text.trim();
    final proceed=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW to crypto'),
        content:Text('Reserve '+unit(v['sourceMicro'] as String)+
          ' MSNW and pay '+unit(v['targetMicro'] as String)+' '+providerCode+
          ' to '+destination+'? Carefully confirm the blockchain and address.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payout')),
        ]));
    if(proceed!=true||!same(token)||price!=v||key!=id||
       address.text.trim()!=destination)return;
    final original=<String,dynamic>{
      'amountMicro':v['sourceMicro'],
      'providerCode':providerCode,
      'destinationAddress':destination,
      'expectedTargetMicro':v['targetMicro'],
      'expectedFeeMicro':v['feeEstimateMicro'],
      'expectedRateUsdMicroPerMsnw':v['rateUsdMicroPerMsnw'],
      'idempotencyKey':id,
    };
    if(!validPending(original)) {
      setState(()=>error='Invalid payout reference. Obtain another quote.');
      return;
    }
    try {
      await storage.write(key:pendingStorageKey,value:jsonEncode(original));
    }catch(_){
      if(same(token))setState(()=>error=
        'Secure recovery storage unavailable. No payout was submitted.');
      return;
    }
    if(!same(token))return;
    setState((){pending=original;uncertain=true;});
    await submitPending(original,token);
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
      final terminal=value['state']=='finished'||value['state']=='refunded';
      if(terminal) {
        try { await storage.delete(key:pendingStorageKey); } catch (_) {}
      }
      if(!same(token))return;
      setState((){
        receipt=value.cast<String,dynamic>();
        uncertain=!terminal;
        if(terminal)pending=null;
      });
      if(terminal)widget.onCompleted();
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
            onChanged:busy||receipt!=null||pending!=null?null:(next){
              if(next!=null)setState((){
                providerCode=next;price=null;key=null;receipt=null;
              });
            },
            decoration:const InputDecoration(labelText:'Crypto and network'),
          ),
          TextField(controller:amount,enabled:!busy&&receipt==null&&pending==null,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'MSNW amount')),
          TextField(controller:address,enabled:!busy&&receipt==null&&pending==null,
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
          if(restoring)const LinearProgressIndicator(),
          if(blockedRecovery)const Text(
            'An earlier conversion needs support review before a new one '
            'can be authorized on this device.'),
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(pending!=null)...[
            const SizedBox(height:12),
            const Text('Previous crypto payout',
              style:TextStyle(fontWeight:FontWeight.bold)),
            SelectableText('Reference: ${pending!['idempotencyKey']}'),
            Text('Network: ${pending!['providerCode']}'),
            Text('Destination: ${pending!['destinationAddress']}'),
            Wrap(spacing:8,runSpacing:8,children:[
              OutlinedButton(onPressed:busy?null:recoverPending,
                child:const Text('Check original status')),
              if(receipt==null)
                FilledButton(onPressed:busy?null:retryPending,
                  child:const Text('Retry original payout')),
            ]),
          ],
          if(price==null&&receipt==null&&pending==null)
            FilledButton(onPressed:busy||restoring||blockedRecovery?null:review,
              child:const Text('Get executable quote')),
          if(price!=null&&receipt==null&&pending==null)
            FilledButton(
              onPressed:busy||restoring||blockedRecovery||price!['sufficient']!=true||
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
          if(uncertain&&receipt==null&&pending!=null)
            const Text('Do not start another conversion while the original '
              'payout is unresolved.'),
        ],
      ),
    ),
  );
}
