import 'p2p_case_notes.dart';
import 'p2p_support_requests.dart';
import 'p2p_case_context.dart';
import 'p2p_ad_reports_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/admin_api.dart';
import 'p2p_message_reports_page.dart';
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
  Future<void> _inspect(Map<String,dynamic> order) async {
    final id='${order['order_id']}',session=widget.api.currentAccessToken,base=_base;
    bool same()=>mounted&&widget.api.currentAccessToken==session&&_base==base;
    final auth=Options(headers:{'Authorization':'Bearer $session','Cache-Control':'no-store'});
    await showModalBottomSheet<void>(context:context,isScrollControlled:true,showDragHandle:true,builder:(ctx)=>FractionallySizedBox(heightFactor:0.85,child:SafeArea(child:P2pCaseContext(
      orderId:id,currentSession:()=>same()?session:null,
      load:()async{
        if(!same())throw StateError('Admin session changed');
        final response=await _dio.get<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id',options:auth);
        if(!same())throw StateError('Admin session changed');return Map<String,dynamic>.from(response.data as Map);
      },
      openNotes:(page)async{if(!same()||!page.mounted)return;await Navigator.of(page).push(MaterialPageRoute<void>(builder:(_)=>P2pCaseNotesPage(currentSession:()=>same()?session:null,load:()async{if(!same())throw StateError('Admin session changed');final r=await _dio.get<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id/notes',options:auth);if(!same())throw StateError('Admin session changed');return Map<String,dynamic>.from(r.data as Map);},add:(details)async{if(!same())throw StateError('Admin session changed');await _dio.post<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id/notes',options:auth,data:{'details':details});if(!same())throw StateError('Admin session changed');})));},
      openSupportRequests:(page)async{if(!same()||!page.mounted)return;await Navigator.of(page).push(MaterialPageRoute<void>(builder:(_)=>P2pStaffSupportRequests(currentSession:()=>same()?session:null,load:()async{if(!same())throw StateError('Admin session changed');final r=await _dio.get<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id/support/requests',options:auth);if(!same())throw StateError('Admin session changed');return Map<String,dynamic>.from(r.data as Map);},request:(recipient,instruction,hours)async{if(!same())throw StateError('Admin session changed');await _dio.post<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id/support/requests',options:auth,data:{'recipient':recipient,'instruction':instruction,'windowHours':hours});if(!same())throw StateError('Admin session changed');})));},
      copyEvidence:(evidenceId)async{
        if(!same())throw StateError('Admin session changed');
        final response=await _dio.get<dynamic>('$base/v1/admin/msnw/p2p/disputes/$id/evidence/$evidenceId',options:auth);
        if(!same())throw StateError('Admin session changed');
        final data=Map<String,dynamic>.from(response.data as Map),url='${(response.data as Map)['url']??''}';
        if(!url.startsWith('https://')||data['url'] is! String)throw const FormatException();
        await Clipboard.setData(ClipboardData(text:url));
        if(same())ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Private evidence link copied; it expires in 60 seconds.')));
      },
    ))));
  }
  Future<void> _showReconciliation() async {
    final result=_dio.get<dynamic>(
      '$_base/v1/admin/msnw/p2p/reconciliation',options:_auth);
    await showDialog<void>(context:context,builder:(dialog)=>AlertDialog(
      title:const Text('MSNW P2P financial health'),
      content:FutureBuilder<Response<dynamic>>(future:result,builder:(ctx,snapshot){
        if(snapshot.connectionState!=ConnectionState.done)
          return const SizedBox(height:90,child:Center(child:CircularProgressIndicator()));
        if(snapshot.hasError)return Text('Could not load audit: ${snapshot.error}');
        try{
          final data=Map<String,dynamic>.from(snapshot.data!.data as Map);
          final bad=(
            (data['inconsistentOrders'] as num).toInt()+
            (data['underReservedSellers'] as num).toInt()+
            (data['undeliveredDeadLetters'] as num).toInt())>0;
          return SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              const Text('Read-only reconciliation of immutable custody '
                'postings, seller reserves and notification recovery.'),
              const SizedBox(height:14),
              Text('Inconsistent escrow orders: ${data['inconsistentOrders']}'),
              Text('Under-reserved sellers: ${data['underReservedSellers']}'),
              Text('Undelivered notification dead letters: '
                '${data['undeliveredDeadLetters']}'),
              const SizedBox(height:14),
              Text(bad
                ? 'Investigate these exceptions against the original MSNW '
                  'posting, order receipt and authorized payment confirmation. '
                  'Do not manually adjust available/reserved balances.'
                : 'No exceptions detected in the current read-only snapshot. '
                  'This does not replace chain/provider settlement verification.'),
            ]));
        }catch(error){
          return Text('Audit response unavailable: $error');
        }
      }),
      actions:[TextButton(onPressed:()=>Navigator.pop(dialog),
        child:const Text('Close'))],
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
  Future<void> _openAdReports()async{
    final session=widget.api.currentAccessToken,base=_base;
    void authorize(){if(!mounted||widget.api.currentAccessToken!=session||_base!=base)throw StateError('Admin session changed.');}
    final options=Options(headers:{'Authorization':'Bearer $session'});
    await Navigator.of(context).push(MaterialPageRoute<void>(builder:(_)=>P2pAdReportsPage(
      currentSession:()=>_base==base?widget.api.currentAccessToken:null,
      load:(cursor,filter)async{authorize();final r=await _dio.get<dynamic>('$base/v1/admin/msnw/p2p/ad-reports',options:options,queryParameters:{'filter':filter,if(cursor!=null)'cursor':cursor});authorize();return Map<String,dynamic>.from(r.data as Map);},
      review:(id,decision,reason,version)async{authorize();await _dio.post<dynamic>('$base/v1/admin/msnw/p2p/ad-reports/$id/review',options:options,data:{'decision':decision,'reason':reason,'version':version});authorize();},
    )));
  }
  @override Widget build(BuildContext context)=>Column(children:[
    ListTile(title:const Text('MSNW P2P disputes'),
      subtitle:const Text('Authorized resolutions only. Bank claims and screenshots '
        'do not automatically release escrow.'),
      trailing:Wrap(spacing:4,children:[
        PopupMenuButton<String>(tooltip:'Review P2P reports',
          itemBuilder:(_)=>const [PopupMenuItem(value:'messages',child:Text('Order message reports')),PopupMenuItem(value:'ads',child:Text('Ad reports'))],
          onSelected:(value){if(value=='ads'){_openAdReports();return;}Navigator.of(context).push(MaterialPageRoute<void>(builder:(_)=>
            P2pMessageReportsPage(currentSession:()=>widget.api.currentAccessToken,load:() async {
              final r=await _dio.get<dynamic>('$_base/v1/admin/msnw/p2p/message-reports',options:_auth);
              return Map<String,dynamic>.from(r.data as Map);
            },review:(id,decision,reason,version)async {
              await _dio.post<dynamic>('$_base/v1/admin/msnw/p2p/message-reports/$id/review',
                options:_auth,data:{'decision':decision,'reason':reason,'version':version});
            })));},icon:const Icon(Icons.flag_outlined)),
        IconButton(tooltip:'Review P2P financial reconciliation',
          onPressed:_submitting?null:_showReconciliation,
          icon:const Icon(Icons.monitor_heart_outlined)),
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
