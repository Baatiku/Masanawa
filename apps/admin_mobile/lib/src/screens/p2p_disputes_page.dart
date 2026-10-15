import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_auth_api.dart';

/// Reuses the existing admin session and Gateway; no separate operator login.
/// The Gateway independently validates admin principals on every request.
class P2pDisputesPage extends StatefulWidget {
  const P2pDisputesPage({super.key, required this.api});
  final AdminApi api;
  @override State<P2pDisputesPage> createState()=>_P2pDisputesPageState();
}
class _P2pDisputesPageState extends State<P2pDisputesPage> {
  final Dio _dio=Dio(BaseOptions(
    connectTimeout:const Duration(seconds:10),
    receiveTimeout:const Duration(seconds:20),
    headers:{'Accept':'application/json'},
  ));
  late Future<List<Map<String,dynamic>>> _disputes=_load();
  bool _submitting=false;
  String get _base => requireAdminAuthBaseUrl();
  Options get _auth => Options(headers:{
    'Authorization':'Bearer ${widget.api.currentAccessToken}',
    'Cache-Control':'no-store',
  });
  Future<List<Map<String,dynamic>>> _load() async {
    final response=await _dio.get<dynamic>(
      '$_base/v1/admin/msnw/p2p/disputes',options:_auth);
    final map=Map<String,dynamic>.from(response.data as Map);
    return (map['items'] as List<dynamic>? ?? [])
      .map((e)=>Map<String,dynamic>.from(e as Map)).toList();
  }
  void _reload()=>setState(()=>_disputes=_load());
  Future<void> _resolve(Map<String,dynamic> order) async {
    final id='${order['order_id']}';
    final reason=TextEditingController();
    String resolution='refund';
    try {
      final decision=await showDialog<Map<String,String>>(context:context,
        builder:(ctx)=>StatefulBuilder(builder:(ctx,update)=>AlertDialog(
          title:const Text('Resolve MSNW escrow dispute'),
          content:SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text('Order: $id'),
              Text('Buyer: ${order['buyer_id']}'),
              Text('Seller: ${order['seller_id']}'),
              Text('MSNW micro: ${order['amount_micro']}'),
              const SizedBox(height:12),
              const Text('Check evidence, bank settlement and relevant '
                'audit records before selecting a resolution.'),
              RadioListTile<String>(
                title:const Text('Refund MSNW to seller'),
                value:'refund',groupValue:resolution,
                onChanged:(value)=>update(()=>resolution=value??'refund')),
              RadioListTile<String>(
                title:const Text('Release MSNW to buyer'),
                value:'release',groupValue:resolution,
                onChanged:(value)=>update(()=>resolution=value??'release')),
              TextField(controller:reason,maxLines:4,
                decoration:const InputDecoration(
                  labelText:'Reason and payment verification reference',
                  helperText:'A screenshot alone is not verified payment.',
                )),
            ])),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(ctx),
              child:const Text('Back')),
            FilledButton(
              onPressed:()=>Navigator.pop(ctx,{
                'resolution':resolution,'reason':reason.text.trim(),
              }),
              child:const Text('Submit resolution')),
          ],
        )));
      if(decision==null||!mounted)return;
      if((decision['reason']??'').length<10){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:Text('A detailed reason is required.')));
        return;
      }
      final confirmed=await showDialog<bool>(context:context,
        builder:(ctx)=>AlertDialog(
          title:const Text('Confirm financial resolution'),
          content:Text('${decision['resolution']} this escrow order? '
            'This action moves MSNW using the canonical ledger and is audited.'),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(ctx,false),
              child:const Text('Back')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,true),
              child:const Text('Confirm')),
          ],
        ))??false;
      if(!confirmed)return;
      setState(()=>_submitting=true);
      await _dio.post<dynamic>('$_base/v1/admin/msnw/p2p/disputes/$id/resolve',
        data:decision,options:_auth);
      if(mounted)_reload();
    } on DioException catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Could not resolve escrow: '
          '${error.response?.data is Map ? (error.response!.data as Map)['error'] : error.message}')));
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Resolution unavailable: $error')));
    } finally {
      reason.dispose();
      if(mounted)setState(()=>_submitting=false);
    }
  }
  @override Widget build(BuildContext context)=>Column(children:[
    ListTile(title:const Text('MSNW P2P disputes'),
      subtitle:const Text('Authorized resolutions only. Bank claims and screenshots '
        'do not automatically release escrow.'),
      trailing:IconButton(tooltip:'Reload disputes',icon:const Icon(Icons.refresh),
        onPressed:_submitting?null:_reload)),
    Expanded(child:FutureBuilder<List<Map<String,dynamic>>>(
      future:_disputes,builder:(ctx,s){
        if(s.connectionState!=ConnectionState.done)
          return const Center(child:CircularProgressIndicator());
        if(s.hasError)return Center(child:Padding(
          padding:const EdgeInsets.all(18),
          child:Column(mainAxisSize:MainAxisSize.min,children:[
            Text('Cannot load disputes: ${s.error}',textAlign:TextAlign.center),
            TextButton(onPressed:_reload,child:const Text('Retry')),
          ])));
        final items=s.data??[];
        if(items.isEmpty)return const Center(child:Text('No open P2P disputes'));
        return ListView.builder(itemCount:items.length,itemBuilder:(ctx,index){
          final o=items[index];
          return Card(child:ListTile(
            leading:const Icon(Icons.gavel_outlined),
            title:Text('Order ${o['order_id']}'),
            subtitle:Text('Seller: ${o['seller_id']}\n'
              'Buyer: ${o['buyer_id']}\n'
              'MSNW micro: ${o['amount_micro']}'),
            isThreeLine:true,
            trailing:FilledButton(
              onPressed:_submitting?null:()=>_resolve(o),
              child:const Text('Resolve')),
          ));
        });
      })),
  ]);
}
