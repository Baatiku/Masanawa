import 'wallet_flow_page.dart';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../core/api/billing_models.dart';
import '../core/network/api_client.dart';

/// Confirmed MSNW custody balance only; old NGN/Credits are not spendable here.
class MsnwBillingCheckoutSheet extends StatefulWidget {
  const MsnwBillingCheckoutSheet({
    super.key, required this.api,required this.dio,required this.baseUrl,
    required this.categoryCode,required this.item,required this.customerId,
    required this.expectedUserId,required this.currentUserId,
    required this.accessToken,required this.onFund,this.initialQuote,
  });
  final ApiClient api;
  final Dio dio;
  final String baseUrl,categoryCode,customerId,expectedUserId;
  final BillItem item;
  final BillingQuote? initialQuote;
  final String? Function() currentUserId,accessToken;
  final VoidCallback onFund;
  @override
  State<MsnwBillingCheckoutSheet> createState()=>_MsnwBillingCheckoutSheetState();
}
class _MsnwBillingCheckoutSheetState extends State<MsnwBillingCheckoutSheet> {
  late final TextEditingController amount;
  BillingQuote? quote;
  Map<String,dynamic>? price,receipt;
  String? error;
  bool busy=false,uncertain=false;
  final storage = const FlutterSecureStorage();
  Map<String,dynamic>? pendingBill;
  String get pendingStorageKey =>
      'msnw.bill.pending.v1.${widget.expectedUserId}';
  @override void initState(){
    super.initState();
    amount=TextEditingController(text:widget.item.variableAmount?'':widget.item.amount);
    if(widget.initialQuote != null){quote=widget.initialQuote;uncertain=true;
      WidgetsBinding.instance.addPostFrameCallback((_) {if(mounted)recover();});}
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(mounted && widget.initialQuote==null) restorePending();
    });
  }
  @override void dispose(){amount.dispose();super.dispose();}
  bool same(String token)=>mounted&&widget.currentUserId()==widget.expectedUserId&&
    widget.accessToken()?.trim()==token;
  String uri(String path)=>widget.baseUrl.replaceFirst(RegExp(r'/$'),'')+path;
  Options auth(String token)=>Options(
    headers:{'Authorization':'Bearer '+token},followRedirects:false,
    receiveTimeout:const Duration(seconds:20));
  String units(String micro) {
    final value=BigInt.parse(micro);
    return (value ~/ BigInt.from(1000000)).toString()+'.'+
      (value%BigInt.from(1000000)).toString().padLeft(6,'0');
  }

  // Recovery must retain the server-issued quote ID and original expected
  // amount/rate. Customer-entered fresh requests must never silently replace
  // an uncertain existing provider purchase.
  bool validPendingBill(Map<String,dynamic> value) {
    final ref=value['fulfillmentReference'];
    final quoteId=value['quoteId'];
    final rev=value['quoteRevision'];
    final amount=value['expectedAmountMicro'];
    final rate=value['expectedRateKoboPerMsnw'];
    return ref is String &&
        RegExp(r'^msnw-bill-[A-Za-z0-9_-]{5,128}
    final token=widget.accessToken()?.trim();
    if(busy||pendingBill!=null||token==null||token.isEmpty||!same(token))return;
    setState((){busy=true;error=null;price=null;receipt=null;});
    try{
      final view=await widget.api.createBillingQuote(
        categoryCode:widget.categoryCode,
        billerCode:widget.item.billerCode,
        itemCode:widget.item.itemCode,
        customerId:widget.customerId,amount:amount.text.trim());
      if(!same(token))return;
      final next=view.quote;
      if(next.currency!='NGN'||next.itemCode!=widget.item.itemCode||
          next.customerId!=widget.customerId||next.state!='quoted'){
        throw const FormatException('Invalid bill quote');
      }
      final response=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/preview'),options:auth(token),
        data:{'quoteId':next.quoteId,'quoteRevision':next.revision});
      if(!same(token))return;
      final v=response.data;
      if(v is! Map||v['asset']!='MSNW'||v['quoteId']!=next.quoteId||
          v['quoteRevision']!=next.revision||
          v['totalAmountKobo']!=next.totalAmountKobo.toString()||
          v['amountMicro'] is! String||v['rateKoboPerMsnw'] is! String||
          v['availableMicro'] is! String||v['sufficient'] is! bool){
        throw const FormatException('Invalid MSNW price quote');
      }
      setState((){quote=next;price=v.cast<String,dynamic>();});
    }catch(_){
      if(same(token))setState(()=>error='Bill pricing unavailable. '
        'Check the provider details or your MSNW custody balance.');
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Future<void> pay() async{
    final token=widget.accessToken()?.trim();
    final v=price,q=quote;
    if(busy||pendingBill!=null||token==null||!same(token)||v==null||q==null||
       v['sufficient']!=true)return;
    final choice=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW bill'),
        content:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          detail('Product',q.itemName),detail('Recipient',q.customerId),
          detail('Service','NGN '+q.serviceAmount),detail('Fee','NGN '+q.feeAmount),
          detail('Total','NGN '+q.totalAmount),
          detail('Payment',units(v['amountMicro'] as String)+' MSNW'),
          detail('Rate','NGN '+units((BigInt.parse(v['rateKoboPerMsnw'] as String)*
              BigInt.from(10000)).toString())+' / MSNW'),
        ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payment')),
        ]));
    if(choice!=true||!same(token)||quote!=q||price!=v)return;
    final original=<String,dynamic>{
      'quoteId':q.quoteId,
      'quoteRevision':q.revision,
      'expectedAmountMicro':v['amountMicro'],
      'expectedRateKoboPerMsnw':v['rateKoboPerMsnw'],
      'fulfillmentReference':'msnw-bill-${q.quoteId}',
      'itemName':q.itemName,
      'customerId':q.customerId,
      'totalAmount':q.totalAmount,
    };
    if(!validPendingBill(original)) {
      setState(()=>error='Bill reference invalid. Obtain a new verified quote.');
      return;
    }
    try {
      await storage.write(key:pendingStorageKey,value:jsonEncode(original));
    }catch(_){
      if(same(token))setState(()=>error=
        'Secure payment recovery storage unavailable. No payment was sent.');
      return;
    }
    if(!same(token))return;
    setState(()=>pendingBill=original);
    await submitPending(original,token);
  }

  Future<void> recover() async{
    final q=quote,token=widget.accessToken()?.trim();
    if(busy||q==null||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      if(widget.initialQuote != null && !(q.fulfillmentReference?.startsWith('msnw-bill-') ?? false)) {
        final view=await widget.api.billingQuote(q.quoteId);
        if(!same(token))return;
        if(view.quote.quoteId != q.quoteId || view.quote.customerId != q.customerId)
          throw const FormatException('Invalid original bill receipt');
        final purchase=view.purchase;
        setState((){receipt={
          'state':purchase?.state ?? view.phase,
          'fulfillmentReference':purchase?.fulfillmentReference ?? view.quote.fulfillmentReference ?? q.quoteId,
          'providerReference':purchase?.providerReference ?? view.quote.billProviderReference,
          'deliveryCode':purchase?.deliveryCode,
        };uncertain=false;});
        return;
      }
      final ref='msnw-bill-'+q.quoteId;
      final r=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/billing/'+Uri.encodeComponent(ref)),
        options:auth(token));
      if(!same(token))return;
      final data=r.data;
      if(data is! Map||data['fulfillmentReference']!=ref||
          data['state'] is! String){
        throw const FormatException('Invalid bill status');
      }
      setState((){receipt=data.cast<String,dynamic>();uncertain=false;});
    }catch(_){
      if(same(token))setState((){
        uncertain=true;error='Order status unavailable. Retry this order.';
      });
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Widget detail(String label,String value)=>Padding(
    padding:const EdgeInsets.symmetric(vertical:6),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(label,style:Theme.of(context).textTheme.labelMedium),
      SelectableText(value),
    ]));
  String status(String value)=>switch(value){
    'succeeded'||'fulfilled'=>'Completed',
    'failed'=>'Failed','refunded'=>'Refunded','pending'=>'Processing',
    'dispatching'=>'Processing','uncertain'=>'Verification pending',
    _=>'Verification pending',
  };

  @override Widget build(BuildContext context)=>SafeArea(
    child:SingleChildScrollView(
      padding:EdgeInsets.fromLTRB(20,12,20,20+MediaQuery.viewInsetsOf(context).bottom),
      child:Column(mainAxisSize:MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(widget.initialQuote != null || receipt != null ? 'Bill receipt' : 'Pay with MSNW',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(widget.item.name),
          Text('Recipient: '+widget.customerId),
          if(widget.initialQuote == null && receipt == null)
            TextField(controller:amount,enabled:quote==null&&!busy&&pendingBill==null,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'Bill amount (NGN)')),
          if(price!=null)...[
            const SizedBox(height:10),
            detail('Service','NGN '+quote!.serviceAmount),
            detail('Fee','NGN '+quote!.feeAmount),
            detail('Total','NGN '+quote!.totalAmount),
            Text('MSNW payment: '+units(price!['amountMicro'] as String)),
            Text('Available: '+units(price!['availableMicro'] as String)+' MSNW'),
            if(price!['sufficient']!=true)
              const Text('Insufficient available MSNW'),
          ],
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(pendingBill!=null)...[
            const SizedBox(height:12),
            const Text('Previous bill payment',style:TextStyle(
              fontWeight:FontWeight.bold)),
            detail('Product',pendingBill!['itemName'] as String),
            detail('Recipient',pendingBill!['customerId'] as String),
            detail('Original reference',
              pendingBill!['fulfillmentReference'] as String),
            Wrap(spacing:8,runSpacing:8,children:[
              OutlinedButton(onPressed:busy?null:recoverPending,
                child:const Text('Check original status')),
              if(receipt==null)
                FilledButton(onPressed:busy?null:retryPending,
                  child:const Text('Retry original purchase')),
            ]),
          ],
          if(quote==null&&pendingBill==null&&receipt==null)
            FilledButton(onPressed:busy?null:review,
            child:const Text('Get verified price')),
          if(quote!=null&&receipt==null&&!uncertain&&pendingBill==null)
            FilledButton(onPressed:(busy || price?['sufficient'] != true) ? null : pay,
              child:const Text('Review & pay MSNW')),
          if((uncertain||receipt!=null)&&quote!=null&&pendingBill==null)
            OutlinedButton(onPressed:busy?null:recover,
              child:const Text('Check payment status')),
          if(receipt!=null)...[
            detail('Status',status(receipt!['state'] as String)),
            detail('Reference',receipt!['fulfillmentReference'] as String),
            if(receipt!['providerReference'] case final String reference when reference.isNotEmpty)
              detail('Provider reference',reference),
            if(receipt!['deliveryCode'] case final String code when code.isNotEmpty)
              detail('Delivery code / electricity token',code),
          ],
          if(widget.initialQuote case final BillingQuote original)...[
            detail('Service','NGN '+original.serviceAmount),
            detail('Fee','NGN '+original.feeAmount),
            detail('Total','NGN '+original.totalAmount),
            detail('Created',original.createdAt),
          ],
          TextButton.icon(onPressed:busy?null:widget.onFund,
            icon:const Icon(Icons.account_balance),
            label:const Text('Fund MSNW with Paystack')),
        ],
      ),
    ),
  );
}


).hasMatch(ref) &&
        quoteId is String && ref=='msnw-bill-$quoteId' &&
        rev is int && rev>=0 &&
        amount is String && RegExp(r'^[1-9][0-9]{0,23}
    final token=widget.accessToken()?.trim();
    if(busy||token==null||token.isEmpty||!same(token))return;
    setState((){busy=true;error=null;price=null;receipt=null;});
    try{
      final view=await widget.api.createBillingQuote(
        categoryCode:widget.categoryCode,
        billerCode:widget.item.billerCode,
        itemCode:widget.item.itemCode,
        customerId:widget.customerId,amount:amount.text.trim());
      if(!same(token))return;
      final next=view.quote;
      if(next.currency!='NGN'||next.itemCode!=widget.item.itemCode||
          next.customerId!=widget.customerId||next.state!='quoted'){
        throw const FormatException('Invalid bill quote');
      }
      final response=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/preview'),options:auth(token),
        data:{'quoteId':next.quoteId,'quoteRevision':next.revision});
      if(!same(token))return;
      final v=response.data;
      if(v is! Map||v['asset']!='MSNW'||v['quoteId']!=next.quoteId||
          v['quoteRevision']!=next.revision||
          v['totalAmountKobo']!=next.totalAmountKobo.toString()||
          v['amountMicro'] is! String||v['rateKoboPerMsnw'] is! String||
          v['availableMicro'] is! String||v['sufficient'] is! bool){
        throw const FormatException('Invalid MSNW price quote');
      }
      setState((){quote=next;price=v.cast<String,dynamic>();});
    }catch(_){
      if(same(token))setState(()=>error='Bill pricing unavailable. '
        'Check the provider details or your MSNW custody balance.');
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> pay() async{
    final token=widget.accessToken()?.trim();
    final v=price,q=quote;
    if(busy||token==null||!same(token)||v==null||q==null||
        v['sufficient']!=true)return;
    final choice=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW bill'),
        content:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          detail('Product',q.itemName),detail('Recipient',q.customerId),
          detail('Service','NGN '+q.serviceAmount),detail('Fee','NGN '+q.feeAmount),
          detail('Total','NGN '+q.totalAmount),detail('Payment',units(v['amountMicro'] as String)+' MSNW'),
          detail('Rate','NGN '+units((BigInt.parse(v['rateKoboPerMsnw'] as String)*BigInt.from(10000)).toString())+' / MSNW'),
        ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payment')),
        ]));
    if(choice!=true||!same(token))return;
    setState((){busy=true;error=null;uncertain=false;});
    try{
      final r=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/execute'),options:auth(token),
        data:{'quoteId':q.quoteId,'quoteRevision':q.revision,
          'expectedAmountMicro':v['amountMicro'],
          'expectedRateKoboPerMsnw':v['rateKoboPerMsnw']});
      if(!same(token))return;
      final response=r.data;
      if(response is! Map||response['state'] is! String||
          response['fulfillmentReference'] != 'msnw-bill-'+q.quoteId){
        throw const FormatException('Invalid provider receipt');
      }
      setState(()=>receipt=response.cast<String,dynamic>());
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payment status pending. Check this order before buying again.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> recover() async{
    final q=quote,token=widget.accessToken()?.trim();
    if(busy||q==null||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      if(widget.initialQuote != null && !(q.fulfillmentReference?.startsWith('msnw-bill-') ?? false)) {
        final view=await widget.api.billingQuote(q.quoteId);
        if(!same(token))return;
        if(view.quote.quoteId != q.quoteId || view.quote.customerId != q.customerId)
          throw const FormatException('Invalid original bill receipt');
        final purchase=view.purchase;
        setState((){receipt={
          'state':purchase?.state ?? view.phase,
          'fulfillmentReference':purchase?.fulfillmentReference ?? view.quote.fulfillmentReference ?? q.quoteId,
          'providerReference':purchase?.providerReference ?? view.quote.billProviderReference,
          'deliveryCode':purchase?.deliveryCode,
        };uncertain=false;});
        return;
      }
      final ref='msnw-bill-'+q.quoteId;
      final r=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/billing/'+Uri.encodeComponent(ref)),
        options:auth(token));
      if(!same(token))return;
      final data=r.data;
      if(data is! Map||data['fulfillmentReference']!=ref||
          data['state'] is! String){
        throw const FormatException('Invalid bill status');
      }
      setState((){receipt=data.cast<String,dynamic>();uncertain=false;});
    }catch(_){
      if(same(token))setState((){
        uncertain=true;error='Order status unavailable. Retry this order.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Widget detail(String label,String value)=>Padding(
    padding:const EdgeInsets.symmetric(vertical:6),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(label,style:Theme.of(context).textTheme.labelMedium),
      SelectableText(value),
    ]));
  String status(String value)=>switch(value){
    'succeeded'||'fulfilled'=>'Completed',
    'failed'=>'Failed','refunded'=>'Refunded','pending'=>'Processing',
    'dispatching'=>'Processing','uncertain'=>'Verification pending',
    _=>'Verification pending',
  };

  @override Widget build(BuildContext context)=>SafeArea(
    child:SingleChildScrollView(
      padding:EdgeInsets.fromLTRB(20,12,20,20+MediaQuery.viewInsetsOf(context).bottom),
      child:Column(mainAxisSize:MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(widget.initialQuote != null || receipt != null ? 'Bill receipt' : 'Pay with MSNW',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(widget.item.name),
          Text('Recipient: '+widget.customerId),
          if(widget.initialQuote == null && receipt == null) TextField(controller:amount,enabled:quote==null&&!busy,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'Bill amount (NGN)')),
          if(price!=null)...[
            const SizedBox(height:10),
            detail('Service','NGN '+quote!.serviceAmount),
            detail('Fee','NGN '+quote!.feeAmount),
            detail('Total','NGN '+quote!.totalAmount),
            Text('MSNW payment: '+units(price!['amountMicro'] as String)),
            Text('Available: '+units(price!['availableMicro'] as String)+' MSNW'),
            if(price!['sufficient']!=true)
              const Text('Insufficient available MSNW'),
          ],
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(quote==null)FilledButton(onPressed:busy?null:review,
            child:const Text('Get verified price')),
          if(quote!=null&&receipt==null&&!uncertain)
            FilledButton(onPressed:(busy || price?['sufficient'] != true) ? null : pay,
              child:const Text('Review & pay MSNW')),
          if((uncertain||receipt!=null)&&quote!=null)
            OutlinedButton(onPressed:busy?null:recover,
              child:const Text('Check payment status')),
          if(receipt!=null)...[
            detail('Status',status(receipt!['state'] as String)),
            detail('Reference',receipt!['fulfillmentReference'] as String),
            if(receipt!['providerReference'] case final String reference when reference.isNotEmpty)
              detail('Provider reference',reference),
            if(receipt!['deliveryCode'] case final String code when code.isNotEmpty)
              detail('Delivery code / electricity token',code),
          ],
          if(widget.initialQuote case final BillingQuote original)...[
            detail('Service','NGN '+original.serviceAmount),
            detail('Fee','NGN '+original.feeAmount),
            detail('Total','NGN '+original.totalAmount),
            detail('Created',original.createdAt),
          ],
          TextButton.icon(onPressed:busy?null:widget.onFund,
            icon:const Icon(Icons.account_balance),
            label:const Text('Fund MSNW with Paystack')),
        ],
      ),
    ),
  );
}


).hasMatch(amount) &&
        rate is String && RegExp(r'^[1-9][0-9]{0,15}
    final token=widget.accessToken()?.trim();
    if(busy||token==null||token.isEmpty||!same(token))return;
    setState((){busy=true;error=null;price=null;receipt=null;});
    try{
      final view=await widget.api.createBillingQuote(
        categoryCode:widget.categoryCode,
        billerCode:widget.item.billerCode,
        itemCode:widget.item.itemCode,
        customerId:widget.customerId,amount:amount.text.trim());
      if(!same(token))return;
      final next=view.quote;
      if(next.currency!='NGN'||next.itemCode!=widget.item.itemCode||
          next.customerId!=widget.customerId||next.state!='quoted'){
        throw const FormatException('Invalid bill quote');
      }
      final response=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/preview'),options:auth(token),
        data:{'quoteId':next.quoteId,'quoteRevision':next.revision});
      if(!same(token))return;
      final v=response.data;
      if(v is! Map||v['asset']!='MSNW'||v['quoteId']!=next.quoteId||
          v['quoteRevision']!=next.revision||
          v['totalAmountKobo']!=next.totalAmountKobo.toString()||
          v['amountMicro'] is! String||v['rateKoboPerMsnw'] is! String||
          v['availableMicro'] is! String||v['sufficient'] is! bool){
        throw const FormatException('Invalid MSNW price quote');
      }
      setState((){quote=next;price=v.cast<String,dynamic>();});
    }catch(_){
      if(same(token))setState(()=>error='Bill pricing unavailable. '
        'Check the provider details or your MSNW custody balance.');
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> pay() async{
    final token=widget.accessToken()?.trim();
    final v=price,q=quote;
    if(busy||token==null||!same(token)||v==null||q==null||
        v['sufficient']!=true)return;
    final choice=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW bill'),
        content:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          detail('Product',q.itemName),detail('Recipient',q.customerId),
          detail('Service','NGN '+q.serviceAmount),detail('Fee','NGN '+q.feeAmount),
          detail('Total','NGN '+q.totalAmount),detail('Payment',units(v['amountMicro'] as String)+' MSNW'),
          detail('Rate','NGN '+units((BigInt.parse(v['rateKoboPerMsnw'] as String)*BigInt.from(10000)).toString())+' / MSNW'),
        ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payment')),
        ]));
    if(choice!=true||!same(token))return;
    setState((){busy=true;error=null;uncertain=false;});
    try{
      final r=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/execute'),options:auth(token),
        data:{'quoteId':q.quoteId,'quoteRevision':q.revision,
          'expectedAmountMicro':v['amountMicro'],
          'expectedRateKoboPerMsnw':v['rateKoboPerMsnw']});
      if(!same(token))return;
      final response=r.data;
      if(response is! Map||response['state'] is! String||
          response['fulfillmentReference'] != 'msnw-bill-'+q.quoteId){
        throw const FormatException('Invalid provider receipt');
      }
      setState(()=>receipt=response.cast<String,dynamic>());
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payment status pending. Check this order before buying again.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> recover() async{
    final q=quote,token=widget.accessToken()?.trim();
    if(busy||q==null||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      if(widget.initialQuote != null && !(q.fulfillmentReference?.startsWith('msnw-bill-') ?? false)) {
        final view=await widget.api.billingQuote(q.quoteId);
        if(!same(token))return;
        if(view.quote.quoteId != q.quoteId || view.quote.customerId != q.customerId)
          throw const FormatException('Invalid original bill receipt');
        final purchase=view.purchase;
        setState((){receipt={
          'state':purchase?.state ?? view.phase,
          'fulfillmentReference':purchase?.fulfillmentReference ?? view.quote.fulfillmentReference ?? q.quoteId,
          'providerReference':purchase?.providerReference ?? view.quote.billProviderReference,
          'deliveryCode':purchase?.deliveryCode,
        };uncertain=false;});
        return;
      }
      final ref='msnw-bill-'+q.quoteId;
      final r=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/billing/'+Uri.encodeComponent(ref)),
        options:auth(token));
      if(!same(token))return;
      final data=r.data;
      if(data is! Map||data['fulfillmentReference']!=ref||
          data['state'] is! String){
        throw const FormatException('Invalid bill status');
      }
      setState((){receipt=data.cast<String,dynamic>();uncertain=false;});
    }catch(_){
      if(same(token))setState((){
        uncertain=true;error='Order status unavailable. Retry this order.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Widget detail(String label,String value)=>Padding(
    padding:const EdgeInsets.symmetric(vertical:6),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(label,style:Theme.of(context).textTheme.labelMedium),
      SelectableText(value),
    ]));
  String status(String value)=>switch(value){
    'succeeded'||'fulfilled'=>'Completed',
    'failed'=>'Failed','refunded'=>'Refunded','pending'=>'Processing',
    'dispatching'=>'Processing','uncertain'=>'Verification pending',
    _=>'Verification pending',
  };

  @override Widget build(BuildContext context)=>SafeArea(
    child:SingleChildScrollView(
      padding:EdgeInsets.fromLTRB(20,12,20,20+MediaQuery.viewInsetsOf(context).bottom),
      child:Column(mainAxisSize:MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(widget.initialQuote != null || receipt != null ? 'Bill receipt' : 'Pay with MSNW',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(widget.item.name),
          Text('Recipient: '+widget.customerId),
          if(widget.initialQuote == null && receipt == null) TextField(controller:amount,enabled:quote==null&&!busy,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'Bill amount (NGN)')),
          if(price!=null)...[
            const SizedBox(height:10),
            detail('Service','NGN '+quote!.serviceAmount),
            detail('Fee','NGN '+quote!.feeAmount),
            detail('Total','NGN '+quote!.totalAmount),
            Text('MSNW payment: '+units(price!['amountMicro'] as String)),
            Text('Available: '+units(price!['availableMicro'] as String)+' MSNW'),
            if(price!['sufficient']!=true)
              const Text('Insufficient available MSNW'),
          ],
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(quote==null)FilledButton(onPressed:busy?null:review,
            child:const Text('Get verified price')),
          if(quote!=null&&receipt==null&&!uncertain)
            FilledButton(onPressed:(busy || price?['sufficient'] != true) ? null : pay,
              child:const Text('Review & pay MSNW')),
          if((uncertain||receipt!=null)&&quote!=null)
            OutlinedButton(onPressed:busy?null:recover,
              child:const Text('Check payment status')),
          if(receipt!=null)...[
            detail('Status',status(receipt!['state'] as String)),
            detail('Reference',receipt!['fulfillmentReference'] as String),
            if(receipt!['providerReference'] case final String reference when reference.isNotEmpty)
              detail('Provider reference',reference),
            if(receipt!['deliveryCode'] case final String code when code.isNotEmpty)
              detail('Delivery code / electricity token',code),
          ],
          if(widget.initialQuote case final BillingQuote original)...[
            detail('Service','NGN '+original.serviceAmount),
            detail('Fee','NGN '+original.feeAmount),
            detail('Total','NGN '+original.totalAmount),
            detail('Created',original.createdAt),
          ],
          TextButton.icon(onPressed:busy?null:widget.onFund,
            icon:const Icon(Icons.account_balance),
            label:const Text('Fund MSNW with Paystack')),
        ],
      ),
    ),
  );
}


).hasMatch(rate) &&
        value['customerId'] is String &&
        value['itemName'] is String && value['totalAmount'] is String;
  }
  bool terminalReceipt(Object? status) =>
      const {'succeeded','fulfilled','failed','refunded','cancelled'}
          .contains(status);

  Future<void> restorePending() async {
    final token=widget.accessToken()?.trim();
    if(token==null||token.isEmpty||!same(token))return;
    try {
      final raw=await storage.read(key:pendingStorageKey);
      if(!same(token)||raw==null)return;
      final parsed=jsonDecode(raw);
      if(parsed is! Map)throw const FormatException('Malformed pending bill');
      final saved=parsed.cast<String,dynamic>();
      if(!validPendingBill(saved))
        throw const FormatException('Malformed pending bill');
      setState(()=>pendingBill=saved);
      await recoverPending();
    }catch(_){
      if(same(token))setState(()=>error=
        'Previous bill payment could not be recovered. Check transaction '
        'history before submitting another payment.');
    }
  }

  Future<void> recoverPending() async {
    final saved=pendingBill,token=widget.accessToken()?.trim();
    if(busy||saved==null||!validPendingBill(saved)||
       token==null||token.isEmpty||!same(token))return;
    setState((){busy=true;error=null;});
    try {
      final reference=saved['fulfillmentReference'] as String;
      final response=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/billing/'+Uri.encodeComponent(reference)),
        options:auth(token));
      if(!same(token))return;
      final v=response.data;
      if(v is! Map||v['fulfillmentReference']!=reference ||
         v['state'] is! String)
        throw const FormatException('Unexpected bill recovery receipt');
      if(terminalReceipt(v['state'])) {
        try { await storage.delete(key:pendingStorageKey); }catch(_){}
      }
      if(!same(token))return;
      setState((){
        receipt=v.cast<String,dynamic>();
        uncertain=!terminalReceipt(v['state']);
        if(!uncertain)pendingBill=null;
      });
    }on DioException catch(e){
      if(same(token))setState((){
        uncertain=true;
        error=e.response?.statusCode==404
          ? 'No completed purchase found yet. Retry only the original '
            'quote below, or check status again.'
          : 'Purchase outcome unavailable. Check status or retry the '
            'original quote without starting another purchase.';
      });
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Purchase status could not be confirmed. Contact support '
          'with the original bill reference before paying again.';
      });
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Future<void> submitPending(Map<String,dynamic> saved,String token) async {
    if(busy||!same(token)||!validPendingBill(saved))return;
    setState((){busy=true;error=null;uncertain=false;});
    try {
      final response=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/execute'),options:auth(token),
        data:{
          'quoteId':saved['quoteId'],
          'quoteRevision':saved['quoteRevision'],
          'expectedAmountMicro':saved['expectedAmountMicro'],
          'expectedRateKoboPerMsnw':saved['expectedRateKoboPerMsnw'],
        });
      if(!same(token))return;
      final value=response.data;
      if(value is! Map||value['state'] is! String||
         value['fulfillmentReference'] != saved['fulfillmentReference'])
        throw const FormatException('Invalid provider bill receipt');
      if(terminalReceipt(value['state'])) {
        try { await storage.delete(key:pendingStorageKey); }catch(_){}
      }
      if(!same(token))return;
      setState((){
        receipt=value.cast<String,dynamic>();
        uncertain=!terminalReceipt(value['state']);
        if(!uncertain)pendingBill=null;
      });
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payment outcome is uncertain. Check status or retry only '
          'this exact quote; the same provider purchase reference is reused.';
      });
    }finally{if(same(token))setState(()=>busy=false);}
  }

  Future<void> retryPending() async {
    final saved=pendingBill,token=widget.accessToken()?.trim();
    if(busy||saved==null||!validPendingBill(saved)||
       token==null||token.isEmpty||!same(token))return;
    final approved=await openWalletPage<bool>(context:context,
      title:'Recover bill payment',
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Retry original payment'),
        content:Column(mainAxisSize:MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,children:[
            detail('Service',saved['itemName'] as String),
            detail('Recipient',saved['customerId'] as String),
            detail('Total','NGN '+(saved['totalAmount'] as String)),
            detail('Reference',saved['fulfillmentReference'] as String),
            const Text('This uses your original quote. It cannot create '
              'a different bill purchase.'),
          ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Retry original')),
        ],
      ));
    if(approved==true && same(token))await submitPending(saved,token);
  }

  Future<void> review() async{
    final token=widget.accessToken()?.trim();
    if(busy||token==null||token.isEmpty||!same(token))return;
    setState((){busy=true;error=null;price=null;receipt=null;});
    try{
      final view=await widget.api.createBillingQuote(
        categoryCode:widget.categoryCode,
        billerCode:widget.item.billerCode,
        itemCode:widget.item.itemCode,
        customerId:widget.customerId,amount:amount.text.trim());
      if(!same(token))return;
      final next=view.quote;
      if(next.currency!='NGN'||next.itemCode!=widget.item.itemCode||
          next.customerId!=widget.customerId||next.state!='quoted'){
        throw const FormatException('Invalid bill quote');
      }
      final response=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/preview'),options:auth(token),
        data:{'quoteId':next.quoteId,'quoteRevision':next.revision});
      if(!same(token))return;
      final v=response.data;
      if(v is! Map||v['asset']!='MSNW'||v['quoteId']!=next.quoteId||
          v['quoteRevision']!=next.revision||
          v['totalAmountKobo']!=next.totalAmountKobo.toString()||
          v['amountMicro'] is! String||v['rateKoboPerMsnw'] is! String||
          v['availableMicro'] is! String||v['sufficient'] is! bool){
        throw const FormatException('Invalid MSNW price quote');
      }
      setState((){quote=next;price=v.cast<String,dynamic>();});
    }catch(_){
      if(same(token))setState(()=>error='Bill pricing unavailable. '
        'Check the provider details or your MSNW custody balance.');
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> pay() async{
    final token=widget.accessToken()?.trim();
    final v=price,q=quote;
    if(busy||token==null||!same(token)||v==null||q==null||
        v['sufficient']!=true)return;
    final choice=await openWalletPage<bool>(context:context,
      builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm MSNW bill'),
        content:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          detail('Product',q.itemName),detail('Recipient',q.customerId),
          detail('Service','NGN '+q.serviceAmount),detail('Fee','NGN '+q.feeAmount),
          detail('Total','NGN '+q.totalAmount),detail('Payment',units(v['amountMicro'] as String)+' MSNW'),
          detail('Rate','NGN '+units((BigInt.parse(v['rateKoboPerMsnw'] as String)*BigInt.from(10000)).toString())+' / MSNW'),
        ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),
            child:const Text('Confirm payment')),
        ]));
    if(choice!=true||!same(token))return;
    setState((){busy=true;error=null;uncertain=false;});
    try{
      final r=await widget.dio.post<dynamic>(
        uri('/v1/wallet/msnw/billing/execute'),options:auth(token),
        data:{'quoteId':q.quoteId,'quoteRevision':q.revision,
          'expectedAmountMicro':v['amountMicro'],
          'expectedRateKoboPerMsnw':v['rateKoboPerMsnw']});
      if(!same(token))return;
      final response=r.data;
      if(response is! Map||response['state'] is! String||
          response['fulfillmentReference'] != 'msnw-bill-'+q.quoteId){
        throw const FormatException('Invalid provider receipt');
      }
      setState(()=>receipt=response.cast<String,dynamic>());
    }catch(_){
      if(same(token))setState((){
        uncertain=true;
        error='Payment status pending. Check this order before buying again.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Future<void> recover() async{
    final q=quote,token=widget.accessToken()?.trim();
    if(busy||q==null||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      if(widget.initialQuote != null && !(q.fulfillmentReference?.startsWith('msnw-bill-') ?? false)) {
        final view=await widget.api.billingQuote(q.quoteId);
        if(!same(token))return;
        if(view.quote.quoteId != q.quoteId || view.quote.customerId != q.customerId)
          throw const FormatException('Invalid original bill receipt');
        final purchase=view.purchase;
        setState((){receipt={
          'state':purchase?.state ?? view.phase,
          'fulfillmentReference':purchase?.fulfillmentReference ?? view.quote.fulfillmentReference ?? q.quoteId,
          'providerReference':purchase?.providerReference ?? view.quote.billProviderReference,
          'deliveryCode':purchase?.deliveryCode,
        };uncertain=false;});
        return;
      }
      final ref='msnw-bill-'+q.quoteId;
      final r=await widget.dio.get<dynamic>(
        uri('/v1/wallet/msnw/billing/'+Uri.encodeComponent(ref)),
        options:auth(token));
      if(!same(token))return;
      final data=r.data;
      if(data is! Map||data['fulfillmentReference']!=ref||
          data['state'] is! String){
        throw const FormatException('Invalid bill status');
      }
      setState((){receipt=data.cast<String,dynamic>();uncertain=false;});
    }catch(_){
      if(same(token))setState((){
        uncertain=true;error='Order status unavailable. Retry this order.';
      });
    }finally{if(mounted)setState(()=>busy=false);}
  }

  Widget detail(String label,String value)=>Padding(
    padding:const EdgeInsets.symmetric(vertical:6),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(label,style:Theme.of(context).textTheme.labelMedium),
      SelectableText(value),
    ]));
  String status(String value)=>switch(value){
    'succeeded'||'fulfilled'=>'Completed',
    'failed'=>'Failed','refunded'=>'Refunded','pending'=>'Processing',
    'dispatching'=>'Processing','uncertain'=>'Verification pending',
    _=>'Verification pending',
  };

  @override Widget build(BuildContext context)=>SafeArea(
    child:SingleChildScrollView(
      padding:EdgeInsets.fromLTRB(20,12,20,20+MediaQuery.viewInsetsOf(context).bottom),
      child:Column(mainAxisSize:MainAxisSize.min,
        crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(widget.initialQuote != null || receipt != null ? 'Bill receipt' : 'Pay with MSNW',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:10),
          Text(widget.item.name),
          Text('Recipient: '+widget.customerId),
          if(widget.initialQuote == null && receipt == null) TextField(controller:amount,enabled:quote==null&&!busy,
            keyboardType:const TextInputType.numberWithOptions(decimal:true),
            decoration:const InputDecoration(labelText:'Bill amount (NGN)')),
          if(price!=null)...[
            const SizedBox(height:10),
            detail('Service','NGN '+quote!.serviceAmount),
            detail('Fee','NGN '+quote!.feeAmount),
            detail('Total','NGN '+quote!.totalAmount),
            Text('MSNW payment: '+units(price!['amountMicro'] as String)),
            Text('Available: '+units(price!['availableMicro'] as String)+' MSNW'),
            if(price!['sufficient']!=true)
              const Text('Insufficient available MSNW'),
          ],
          if(error!=null)Padding(padding:const EdgeInsets.only(top:10),
            child:Text(error!,style:TextStyle(
              color:Theme.of(context).colorScheme.error))),
          if(busy)const LinearProgressIndicator(),
          const SizedBox(height:10),
          if(quote==null)FilledButton(onPressed:busy?null:review,
            child:const Text('Get verified price')),
          if(quote!=null&&receipt==null&&!uncertain)
            FilledButton(onPressed:(busy || price?['sufficient'] != true) ? null : pay,
              child:const Text('Review & pay MSNW')),
          if((uncertain||receipt!=null)&&quote!=null)
            OutlinedButton(onPressed:busy?null:recover,
              child:const Text('Check payment status')),
          if(receipt!=null)...[
            detail('Status',status(receipt!['state'] as String)),
            detail('Reference',receipt!['fulfillmentReference'] as String),
            if(receipt!['providerReference'] case final String reference when reference.isNotEmpty)
              detail('Provider reference',reference),
            if(receipt!['deliveryCode'] case final String code when code.isNotEmpty)
              detail('Delivery code / electricity token',code),
          ],
          if(widget.initialQuote case final BillingQuote original)...[
            detail('Service','NGN '+original.serviceAmount),
            detail('Fee','NGN '+original.feeAmount),
            detail('Total','NGN '+original.totalAmount),
            detail('Created',original.createdAt),
          ],
          TextButton.icon(onPressed:busy?null:widget.onFund,
            icon:const Icon(Icons.account_balance),
            label:const Text('Fund MSNW with Paystack')),
        ],
      ),
    ),
  );
}


