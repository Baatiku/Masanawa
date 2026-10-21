import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WalletTransactionHelp extends StatefulWidget {
  const WalletTransactionHelp({super.key,required this.dio,required this.baseUrl,required this.operationId,required this.authorized,required this.accessToken});
  final Dio dio;final String baseUrl,operationId;final bool Function() authorized;final String? Function() accessToken;
  @override State<WalletTransactionHelp> createState()=>_WalletTransactionHelpState();
}
class _WalletTransactionHelpState extends State<WalletTransactionHelp>{
  String reason='pending';Map<String,dynamic>? ticket;String? error;bool busy=false;
  @override void initState(){super.initState();WidgetsBinding.instance.addPostFrameCallback((_)=>request(false));}
  Future<void> request(bool create)async{
    final token=widget.accessToken();if(busy||!widget.authorized()||token==null)return;
    bool current()=>mounted&&widget.authorized()&&widget.accessToken()==token;
    setState((){busy=true;error=null;});
    try{
      final url='${widget.baseUrl.replaceFirst(RegExp(r'/$'),'')}/v1/wallet/support';
      final options=Options(headers:{'Authorization':'Bearer $token'},followRedirects:false);
      final response=create?await widget.dio.post<dynamic>(url,data:{'operationId':widget.operationId,'reason':reason},options:options)
        :await widget.dio.get<dynamic>(url,queryParameters:{'operationId':widget.operationId},options:options);
      if(!current())return;
      final row=response.data;
      if(row is! Map||row['operationId']!=widget.operationId||row['caseId'] is! String||row['state'] is! String)throw const FormatException('Invalid support reference');
      setState(()=>ticket=row.cast<String,dynamic>());
    }on DioException catch(e){if(current()&&(create||e.response?.statusCode!=404))setState(()=>error='Could not check this operation. Please retry.');}
    catch(_){if(current())setState(()=>error='Support is unavailable. Your payment was not changed.');}
    finally{if(current())setState(()=>busy=false);}
  }
  @override Widget build(BuildContext context){
    if(!widget.authorized())return const Center(child:Text('Sign in to view this operation'));
    return ListView(padding:const EdgeInsets.all(20),children:[
      const Text('Transaction help',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
      SelectableText('Operation: ${widget.operationId}'),const SizedBox(height:16),
      const Text('A support request does not reverse, refund or settle a payment. Keep this reference; do not share passwords, verification codes or private keys.'),
      if(ticket case final row?)...[
        SelectableText('Case: ${row['caseId']}'),Text('Status: ${row['state']}'),
        OutlinedButton(onPressed:busy?null:()=>request(false),child:const Text('Refresh case')),
      ]else...[
        DropdownButtonFormField<String>(value:reason,items:const[
          DropdownMenuItem(value:'pending',child:Text('Still pending')),
          DropdownMenuItem(value:'not_received',child:Text('Not received')),
          DropdownMenuItem(value:'incorrect_amount',child:Text('Amount needs checking')),
          DropdownMenuItem(value:'other',child:Text('Other transaction issue')),
        ],onChanged:busy?null:(value)=>setState(()=>reason=value??reason)),
        FilledButton(onPressed:busy?null:()=>request(true),child:const Text('Open support case')),
      ],
      if(error!=null)Text(error!),if(busy)const LinearProgressIndicator(),
    ]);
  }
}
