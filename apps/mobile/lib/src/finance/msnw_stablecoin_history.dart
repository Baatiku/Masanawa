import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// A crypto payout is completed only after exact NOWPayments withdrawal
/// evidence, not after POST /payout or an expired on-device request.
class MsnwStablecoinHistory extends StatefulWidget {
  const MsnwStablecoinHistory({
    super.key,required this.dio,required this.baseUrl,
    required this.expectedUserId,required this.currentUserId,
    required this.accessToken,
  });
  final Dio dio;
  final String baseUrl,expectedUserId;
  final String? Function() currentUserId,accessToken;
  @override
  State<MsnwStablecoinHistory> createState()=>_MsnwStablecoinHistoryState();
}
class _MsnwStablecoinHistoryState extends State<MsnwStablecoinHistory>{
  List<Map<String,dynamic>>? entries;
  String? error;
  bool busy=false;
  @override void initState(){super.initState();refresh();}
  bool same(String token)=>mounted&&widget.currentUserId()==widget.expectedUserId&&
    widget.accessToken()?.trim()==token;
  Options auth(String token)=>Options(
    headers:{'Authorization':'Bearer '+token},followRedirects:false,
    receiveTimeout:const Duration(seconds:12));
  String base()=>widget.baseUrl.replaceFirst(RegExp(r'/$'),'');
  Future<void> refresh() async{
    final token=widget.accessToken()?.trim();
    if(busy||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      final r=await widget.dio.get<dynamic>(
        base()+'/v1/wallet/msnw/convert/history',options:auth(token));
      if(!same(token))return;
      final rows=r.data;
      if(rows is! Map||rows['items'] is! List||
        (rows['items'] as List).length>50){
        throw const FormatException('Invalid MSNW conversion history');
      }
      final items=<Map<String,dynamic>>[];
      for(final value in rows['items'] as List){
        if(value is! Map||value['asset']!='MSNW'||
          value['conversionId'] is! String||
          value['providerCode'] is! String||
          value['targetMicro'] is! String||value['sourceMicro'] is! String||
          value['state'] is! String){
          throw const FormatException('Invalid MSNW crypto receipt');
        }
        items.add(value.cast<String,dynamic>());
      }
      setState(()=>entries=items);
    }catch(_){
      if(same(token))setState(()=>error='Crypto payout activity unavailable.');
    }finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> check(String reference) async{
    final token=widget.accessToken()?.trim();
    if(busy||token==null||!same(token))return;
    setState((){busy=true;error=null;});
    try{
      final result=await widget.dio.get<dynamic>(
        base()+'/v1/wallet/msnw/convert/'+Uri.encodeComponent(reference),
        options:auth(token));
      if(!same(token))return;
      final v=result.data;
      if(v is! Map||v['conversionId']!=reference||
         v['asset']!='MSNW'||v['state'] is! String)
        throw const FormatException('Invalid provider payout evidence');
      setState((){
        entries=entries?.map((entry)=>entry['conversionId']==reference
          ?v.cast<String,dynamic>():entry).toList();
      });
    }catch(_){
      if(same(token))setState(()=>error=
        'Payout still requires provider verification or operator review.');
    }finally{if(mounted)setState(()=>busy=false);}
  }
  @override Widget build(BuildContext context)=>Column(
    crossAxisAlignment:CrossAxisAlignment.start,children:[
      if(busy)const LinearProgressIndicator(minHeight:2),
      if(error!=null)ListTile(title:Text(error!),
        trailing:TextButton(onPressed:refresh,child:const Text('Retry'))),
      if(entries!=null&&entries!.isNotEmpty)...[
        const ListTile(title:Text('MSNW crypto payouts',
          style:TextStyle(fontWeight:FontWeight.w700))),
        for(final entry in entries!.take(8))
          ListTile(
            leading:const Icon(Icons.currency_exchange),
            title:Text(entry['providerCode'] as String),
            subtitle:Text('Provider state: '+(entry['state'] as String)+
              ' · Reference: '+(entry['conversionId'] as String)),
            trailing:IconButton(
              tooltip:'Refresh provider payout',
              onPressed:busy?null:()=>check(entry['conversionId'] as String),
              icon:const Icon(Icons.refresh)),
          ),
      ],
      if(entries!=null&&entries!.isEmpty)
        const ListTile(title:Text('No MSNW crypto payouts yet')),
      Align(alignment:Alignment.centerRight,
        child:TextButton(onPressed:busy?null:refresh,
          child:const Text('Refresh crypto payouts'))),
    ],
  );
}
