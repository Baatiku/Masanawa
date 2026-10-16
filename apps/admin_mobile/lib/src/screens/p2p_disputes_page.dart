import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  Future<void> _copyPrivateEvidenceLink(String orderId,String evidenceId) async {
    try {
      final response=await _dio.get<dynamic>(
        '$_base/v1/admin/msnw/p2p/disputes/$orderId/evidence/$evidenceId',
        options:_auth);
      final data=Map<String,dynamic>.from(response.data as Map);
      final url='${data['url'] ?? ''}';
      if(!url.startsWith('https://'))throw StateError('Evidence not available');
      await Clipboard.setData(ClipboardData(text:url));
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Private evidence link copied; it expires in 60 seconds.')));
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Unable to access evidence: $error')));
    }
  }
  Future<void> _inspect(Map<String,dynamic> order) async {
    final id='${order['order_id']}';
    await showModalBottomSheet<void>(context:context,isScrollControlled:true,
      showDragHandle:true,builder:(ctx)=>FractionallySizedBox(
        heightFactor:0.85,child:SafeArea(child:FutureBuilder<Map<String,dynamic>>(
          future:()async{
            final response=await _dio.get<dynamic>(
              '$_base/v1/admin/msnw/p2p/disputes/$id',options:_auth);
            return Map<String,dynamic>.from(response.data as Map);
          }(),
          builder:(ctx,snapshot){
            if(!snapshot.hasData)return Center(child:snapshot.hasError
              ? Text('Case file unavailable: ${snapshot.error}')
              : const CircularProgressIndicator());
            final file=snapshot.data!;
            final events=(file['events'] as List<dynamic>? ?? []);
            final evidence=(file['evidence'] as List<dynamic>? ?? []);
            final late=file['latePayment'] is Map
              ? Map<String,dynamic>.from(file['latePayment'] as Map)
              : <String,dynamic>{};
            return ListView(padding:const EdgeInsets.all(18),children:[
              Text('Escrow audit • $id',style:Theme.of(ctx).textTheme.titleLarge),
              const SizedBox(height:8),
              Text('State: ${(file['order'] as Map?)?['state'] ?? 'Unknown'}'),
              const Text('Payment is not provider-verified. A screenshot or buyer '
                'claim alone must never authorize a release.'),
              const SizedBox(height:12),
              if(late.isNotEmpty) ...[
                Text('Late-payment appeal: ${late['state']}',
                  style:Theme.of(ctx).textTheme.titleMedium),
                Text('Buyer report: ${late['buyer_reason']}'),
                if(late['operator_note']!=null)
                  Text('Operator note: ${late['operator_note']}'),
                for(final item in (late['events'] as List<dynamic>? ?? []))
                  ListTile(
                    leading:const Icon(Icons.history_outlined),
                    title:Text('${(item as Map)['action']}'),
                    subtitle:Text('${item['explanation']}')),
                const SizedBox(height:16),
              ],
              Text('Evidence references (${evidence.length})',
                style:Theme.of(ctx).textTheme.titleMedium),
              if(evidence.isEmpty)const Text('No evidence attached.'),
              for(final entry in evidence)
                ListTile(leading:const Icon(Icons.attachment_outlined),
                  title:Text('Evidence ${(entry as Map)['evidence_id']}'),
                  subtitle:Text('Submitted by ${entry['submitted_by']}\\nSHA-256: ${entry['sha256']}'),
                  trailing:IconButton(
                    icon:const Icon(Icons.copy_outlined),
                    tooltip:'Copy 60-second private evidence link',
                    onPressed:()=>_copyPrivateEvidenceLink(
                      id,'${entry['evidence_id']}')),
                ),
              const SizedBox(height:12),
              Text('Audit events (${events.length})',
                style:Theme.of(ctx).textTheme.titleMedium),
              if(events.isEmpty)const Text('No recorded state changes.'),
              for(final entry in events)
                ListTile(leading:const Icon(Icons.history_outlined),
                  title:Text('${(entry as Map)['action']}'),
                  subtitle:Text('${entry['from_state']} → ${entry['to_state']}\n'
                    'Actor: ${entry['actor_id']}\n'
                    'Reason: ${entry['reason'] ?? '—'}')),
            ]);
          }))),
      ));
  }

  Future<void> _expireUnpaid() async {
    if(_submitting)return;
    final accepted=await showDialog<bool>(context:context,
      builder:(ctx)=>AlertDialog(
        title:const Text('Recover overdue unpaid escrow'),
        content:const Text('Only unpaid orders past their deadline are eligible. '
          'The Gateway checks locked order state and refunds through the canonical '
          'MSNW custody ledger; claims and disputes remain frozen.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Back')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Check and refund')),
        ]))??false;
    if(!accepted)return;
    setState(()=>_submitting=true);
    try{
      final result=await _dio.post<dynamic>('$_base/v1/admin/msnw/p2p/expire',
        data:{},options:_auth);
      if(!mounted)return;
      final count=(result.data as Map?)?['expired']??0;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Overdue orders recovered: $count')));
      _reload();
    } on DioException catch(e) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Escrow recovery unavailable: '
          '${e.response?.data is Map?(e.response!.data as Map)['error']:e.message}')));
    } finally {
      if(mounted)setState(()=>_submitting=false);
    }
  }
  Future<void> _resolveLate(Map<String,dynamic> order) async {
    if(_submitting)return;
    final id='${order['order_id']}';
    final note=TextEditingController();
    String resolution='escalate';
    try{
      final decision=await showDialog<Map<String,String>>(context:context,
        builder:(ctx)=>StatefulBuilder(builder:(ctx,update)=>AlertDialog(
          title:const Text('Late bank-payment support case'),
          content:SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.start,children:[
              Text('Order: $id'),
              Text('Escrow status: ${order['state']}'),
              Text('Buyer report: ${order['late_case_reason'] ?? 'Unavailable'}'),
              const SizedBox(height:12),
              const Text('Escrow was already refunded to the seller. '
                'This support action must never create or release MSNW. '
                'Check bank statements independently and arrange an '
                'appropriate customer-support resolution.'),
              RadioListTile<String>(
                title:const Text('Escalate for further review'),
                value:'escalate',groupValue:resolution,
                onChanged:(v)=>update(()=>resolution=v??'escalate')),
              RadioListTile<String>(
                title:const Text('Close after documented resolution'),
                value:'close',groupValue:resolution,
                onChanged:(v)=>update(()=>resolution=v??'close')),
              TextField(controller:note,maxLines:3,
                decoration:const InputDecoration(
                  labelText:'Documented outcome and bank reference')),
            ])),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(ctx),child:const Text('Cancel')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,{
              'resolution':resolution,'reason':note.text.trim(),
            }),child:const Text('Record outcome')),
          ],
        )));
      if(decision==null||!mounted)return;
      if((decision['reason']??'').length<10){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:Text('Document a detailed reason before proceeding.')));
        return;
      }
      setState(()=>_submitting=true);
      await _dio.post<dynamic>(
        '$_base/v1/admin/msnw/p2p/late-payments/$id/resolve',
        data:decision,options:_auth);
      if(mounted)_reload();
    } catch(error){
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Late-payment case unavailable: $error')));
    } finally{
      note.dispose();
      if(mounted)setState(()=>_submitting=false);
    }
  }
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
      trailing:Wrap(spacing:4,children:[
        IconButton(tooltip:'Recover overdue unpaid orders',
          onPressed:_submitting?null:_expireUnpaid,
          icon:const Icon(Icons.history_toggle_off_outlined)),
        IconButton(tooltip:'Reload disputes',icon:const Icon(Icons.refresh),
          onPressed:_submitting?null:_reload),
      ])),
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
            trailing:Wrap(spacing:6,children:[
              IconButton(tooltip:'Review audit and evidence',
                onPressed:()=>_inspect(o),
                icon:const Icon(Icons.folder_open_outlined)),
              FilledButton(onPressed:_submitting?null:
                ()=>(o['late_case_state']!=null && o['state']!='disputed')
                  ?_resolveLate(o):_resolve(o),
                child:Text(o['late_case_state']!=null && o['state']!='disputed'
                  ? 'Review appeal':'Resolve')),
            ]),
          ));
        });
      })),
  ]);
}
