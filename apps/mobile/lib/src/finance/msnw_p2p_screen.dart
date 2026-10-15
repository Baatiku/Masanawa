import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

/// Exact six-decimal MSNW amounts: UI never uses floating point for financial input.
String _micro(String text) {
  final value = text.trim();
  if (!RegExp(r'^[0-9]{1,12}(\.[0-9]{1,6})?$').hasMatch(value)) {
    throw const FormatException('Enter an MSNW amount (up to 6 decimals).');
  }
  final pieces = value.split('.');
  final atomic = BigInt.parse(pieces.first) * BigInt.from(1000000) +
    BigInt.parse((pieces.length == 2 ? pieces[1] : '').padRight(6, '0'));
  if (atomic <= BigInt.zero || atomic > BigInt.from(9223372036854775807)) {
    throw const FormatException('Amount is out of range.');
  }
  return atomic.toString();
}
String _msnw(Object? atomic) {
  final n = BigInt.tryParse('$atomic');
  if (n == null) return 'Unavailable';
  final major = n ~/ BigInt.from(1000000);
  final fractional = (n % BigInt.from(1000000)).toString().padLeft(6, '0')
      .replaceFirst(RegExp(r'0+$'), '');
  return fractional.isEmpty ? '$major MSNW' : '$major.$fractional MSNW';
}
String _ngn(Object? kobo) {
  final n = BigInt.tryParse('$kobo');
  if (n == null) return 'Unavailable';
  final major = n ~/ BigInt.from(100);
  final minor = (n % BigInt.from(100)).toString().padLeft(2, '0');
  return '₦$major.$minor';
}
Map<String, dynamic> _json(dynamic data) =>
    Map<String, dynamic>.from(data as Map);

class MsnwP2pScreen extends StatefulWidget {
  const MsnwP2pScreen({super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId, required this.accessToken});
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  @override State<MsnwP2pScreen> createState() => _MsnwP2pScreenState();
}

class _MsnwP2pScreenState extends State<MsnwP2pScreen> {
  int _tab = 0;
  bool _busy = false;
  late Future<List<Map<String, dynamic>>> _list = _load();
  bool get _sameAccount => widget.currentUserId() == widget.expectedUserId;
  String get _prefix => '${widget.baseUrl}/v1/wallet/msnw/p2p';
  Options get _headers => Options(headers: {
    'Authorization': 'Bearer ${widget.accessToken() ?? ''}',
    'Cache-Control': 'no-store',
  });
  Future<dynamic> _request(String method, String uri, [dynamic data,
      String? idempotency]) async {
    if (!_sameAccount || widget.accessToken()?.isNotEmpty != true) {
      throw StateError('Sign in again to access P2P.');
    }
    final options = _headers.copyWith(headers: {
      ...?_headers.headers,
      if (idempotency != null) 'Idempotency-Key': idempotency,
    });
    final r = await widget.dio.request<dynamic>('$_prefix$uri',
      options: options.copyWith(method: method), data: data);
    if (!_sameAccount) throw StateError('Account changed. Please reopen P2P.');
    return r.data;
  }
  Future<List<Map<String, dynamic>>> _load() async {
    final path = switch (_tab) {
      0 => '/offers',1 => '/my-offers',2 => '/orders',_ => '/notifications',
    };
    final json = _json(await _request('GET', path));
    return (json['items'] as List<dynamic>? ?? [])
        .map((item) => _json(item)).toList();
  }
  void _reload([int? tab]) {
    setState(() {
      if (tab != null) _tab = tab;
      _list = _load();
    });
  }
  Future<void> _act(Future<void> Function() action) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await action();
      if (mounted && _sameAccount) _reload();
    } catch (error) {
      if (mounted) {
        final message = error is DioException
            ? (error.response?.data is Map
                ? '${(error.response!.data as Map)['error'] ?? 'P2P unavailable'}'
                : 'Connection failed; retry to check the order state.')
            : '$error';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
  Future<String?> _field({required String title, required String label,
      String? hint, String? initial}) async {
    final controller = TextEditingController(text: initial);
    try {
      return await showDialog<String>(context: context,
        builder: (ctx) => AlertDialog(title: Text(title), content: TextField(
          controller: controller, autofocus: true,
          decoration: InputDecoration(labelText: label, hintText: hint),
        ), actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Back')),
          FilledButton(onPressed: () => Navigator.pop(ctx, controller.text.trim()),
            child: const Text('Continue')),
        ]));
    } finally { controller.dispose(); }
  }
  Future<bool> _confirm(String title, String details) async {
    return await showDialog<bool>(context: context,
      builder: (ctx) => AlertDialog(title: Text(title), content: Text(details),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx,false),
          child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx,true),
            child: const Text('Confirm')),
        ])) ?? false;
  }
  Future<void> _buy(Map<String,dynamic> offer) async {
    final entered = await _field(title: 'Buy MSNW', label: 'MSNW amount',
      hint: 'e.g. 10.5');
    if (entered == null || !mounted) return;
    late final String micro;
    try { micro = _micro(entered); } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      return;
    }
    final rate = BigInt.tryParse('${offer['rate_kobo_per_msnw']}');
    if (rate == null) return;
    final amount = BigInt.parse(micro);
    final fiat = (amount * rate + BigInt.from(999999)) ~/ BigInt.from(1000000);
    final fee = (amount * BigInt.from((offer['fee_bps'] as num?)?.toInt() ?? 50)
      + BigInt.from(9999)) ~/ BigInt.from(10000);
    if (!await _confirm('Review P2P order',
      'You receive ${_msnw(micro)} after verified payment.\n'
      'Pay ${_ngn(fiat)} directly to the seller.\n'
      'Seller escrow fee: ${_msnw(fee)}.\n'
      'Payment deadline: 30 minutes. No screenshot automatically releases escrow.')) return;
    await _act(() async {
      final key = 'p2p-${DateTime.now().microsecondsSinceEpoch}-${widget.expectedUserId.hashCode.abs()}';
      final res = _json(await _request('POST', '/orders', {
        'offerId': offer['offer_id'], 'amountMicro': micro,
      },key));
      if (!mounted) return;
      await _orderDetail('${res['orderId']}');
    });
  }
  Future<void> _verifySellerBank() async {
    late final List<Map<String,dynamic>> banks;
    try {
      final payload=_json(await _request('GET','/banks'));
      banks=(payload['items'] as List<dynamic>? ?? []).map(_json).toList();
      if(banks.isEmpty)throw StateError('Bank directory unavailable.');
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text('Bank verification unavailable: $error')));
      return;
    }
    if(!mounted)return;
    final number=TextEditingController();
    String? code; bool consent=false;
    try {
      final details=await showDialog<Map<String,String>>(context:context,
        builder:(dialog)=>StatefulBuilder(builder:(dialog,update)=>AlertDialog(
          title:const Text('Verify seller bank'),
          content:SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,children:[
              const Text('Your Paystack identity verification must be completed. '
                'Only a bank account whose full holder name matches your verified '
                'legal identity can receive P2P payments.'),
              const SizedBox(height:16),
              DropdownButtonFormField<String>(
                isExpanded:true,initialValue:code,
                decoration:const InputDecoration(labelText:'Nigerian bank'),
                items:banks.map((b)=>DropdownMenuItem<String>(
                  value:'${b['code']}',child:Text('${b['name']}',overflow:TextOverflow.ellipsis),
                )).toList(),
                onChanged:(value)=>update(()=>code=value),
              ),
              TextField(controller:number,keyboardType:TextInputType.number,
                onChanged:(_)=>update((){}),
                maxLength:10,decoration:const InputDecoration(
                  labelText:'Your 10-digit account number')),
              CheckboxListTile(
                value:consent,onChanged:(v)=>update(()=>consent=v??false),
                title:const Text('I consent to verifying these bank details '
                  'with Paystack for P2P payment instructions.'),
              ),
            ])),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(dialog),
              child:const Text('Cancel')),
            FilledButton(
              onPressed:!consent||code==null||!RegExp(r'^[0-9]{10}
    late final List<Map<String,dynamic>> methods;
    try {
      final json=_json(await _request('GET','/methods'));
      methods=(json['items'] as List<dynamic>? ?? [])
        .map((item)=>_json(item)).toList();
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text('Verified bank methods unavailable: $error')));
      return;
    }
    if (!mounted) return;
    if (methods.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:
        Text('A verified bank payment method is required before selling MSNW.')));
      return;
    }
    final rate = await _field(title: 'Create sell offer', label: 'NGN per 1 MSNW',
      hint: 'e.g. 1500.00');
    if (rate == null || !mounted) return;
    final min = await _field(title: 'Minimum trade', label: 'Minimum MSNW',
      hint: 'e.g. 1');
    if (min == null || !mounted) return;
    final max = await _field(title: 'Maximum trade', label: 'Maximum MSNW',
      hint: 'e.g. 100');
    if (max == null || !mounted) return;
    final available = await _field(title: 'Offer inventory', label: 'MSNW inventory',
      hint: 'e.g. 100');
    if (available == null || !mounted) return;
    late final String rateKobo, minMicro, maxMicro, inventoryMicro;
    try {
      // Currency price accepts at most two NGN decimal places.
      final text = rate.trim();
      if (!RegExp(r'^[0-9]{1,10}(\.[0-9]{1,2})?$').hasMatch(text)) {
        throw const FormatException('Enter a valid NGN rate.');
      }
      final parts = text.split('.');
      rateKobo = (BigInt.parse(parts[0])*BigInt.from(100) +
        BigInt.parse((parts.length>1?parts[1]:'').padRight(2,'0'))).toString();
      minMicro=_micro(min);maxMicro=_micro(max);inventoryMicro=_micro(available);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      return;
    }
    if (!await _confirm('Publish MSNW offer',
      'Price ${_ngn(rateKobo)} per MSNW. '
      'Only a buyer order can reserve your verified available MSNW.')) return;
    await _act(() async {
      await _request('POST','/offers',{
        'paymentMethodId':methods.first['method_id'],
        'rateKoboPerMsnw':rateKobo,'minMicro':minMicro,
        'maxMicro':maxMicro,'inventoryMicro':inventoryMicro,
      });
      _reload(0);
    });
  }
  Future<void> _orderDetail(String id) async {
    if (!mounted) return;
    await Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (ctx) => _P2pOrderDetail(
        load: () async => _json(await _request('GET','/orders/$id')),
        act: (action, [reason]) => _act(() async {
          await _request('POST','/orders/$id/$action',
            reason == null ? {} : {'reason': reason});
        }),
        userId: widget.expectedUserId,
        listEvidence: () async {
          final data=_json(await _request('GET','/orders/$id/evidence'));
          return (data['items'] as List<dynamic>? ?? []).map(_json).toList();
        },
        uploadEvidence: (data)=>_act(() async {
          await _request('POST','/orders/$id/evidence/upload',data);
        }),
        openEvidence: (evidenceId) async {
          final link=_json(await _request('GET',
            '/orders/$id/evidence/$evidenceId'));
          final uri=Uri.tryParse('${link['url'] ?? ''}');
          if(uri==null||uri.scheme!='https')throw StateError('Evidence link unavailable');
          if(!await launchUrl(uri,mode:LaunchMode.externalApplication)) {
            throw StateError('Unable to open private evidence');
          }
        },
        confirmReceipt: (order) => _act(() async {
          await _request('POST','/orders/$id/confirm-receipt',{
            'confirmation':{
              'orderId':id,
              'fiatKobo':'${order['fiat_kobo']}',
              'attestation':'I HAVE RECEIVED PAYMENT',
            },
          });
        }),
      )));
  }
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('MSNW P2P')),
    body: Column(children: [
      const Padding(padding: EdgeInsets.fromLTRB(16,12,16,4),
        child: Text('Trade MSNW directly with another member. '
          'Only verified escrow protects MSNW; bank transfers remain subject to confirmation.')),
      SegmentedButton<int>(segments: const [
        ButtonSegment(value:0,label:Text('Buy')),
        ButtonSegment(value:1,label:Text('Sell')),
        ButtonSegment(value:2,label:Text('My orders')),
        ButtonSegment(value:3,label:Text('Updates')),
      ],selected:{_tab},onSelectionChanged: (v)=>_reload(v.first)),
      Expanded(child: FutureBuilder<List<Map<String,dynamic>>>(future:_list,
        builder:(context,snapshot) {
          if(snapshot.connectionState!=ConnectionState.done) {
            return const Center(child:CircularProgressIndicator());
          }
          if(snapshot.hasError) return Center(child:Padding(
            padding:const EdgeInsets.all(20),
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              Text('P2P is unavailable: ${snapshot.error}',textAlign:TextAlign.center),
              TextButton(onPressed:()=>_reload(),child:const Text('Retry')),
            ])));
          }
          final items=snapshot.data ?? [];
          return RefreshIndicator(onRefresh:()async{
            _reload();await _list;
          },child:ListView(children:[
            if(_tab==1) Padding(padding:const EdgeInsets.all(12),
              child:Wrap(spacing:8,runSpacing:8,children:[
                OutlinedButton.icon(onPressed:_busy?null:_verifySellerBank,
                  icon:const Icon(Icons.account_balance_outlined),
                  label:const Text('Verify bank')),
                FilledButton.icon(onPressed:_busy?null:_sell,
                  icon:const Icon(Icons.add),label:const Text('Create sell offer')),
              ])),
            if(items.isEmpty) const Padding(padding:EdgeInsets.all(28),
              child:Text('Nothing here yet. Pull down to refresh.',
                textAlign:TextAlign.center)),
            for(final item in items) Card(child:ListTile(
              title:Text(_tab==0
                  ? '${_ngn(item['rate_kobo_per_msnw'])} / MSNW'
                  : _tab==1
                    ? '${_ngn(item['rate_kobo_per_msnw'])} per MSNW'
                    : _tab==2 ? '${_msnw(item['amount_micro'])} · ${item['state']}'
                    : 'Order ${item['state'] ?? 'updated'}'),
              subtitle:Text(_tab==0
                ? 'Available: ${_msnw(item['remaining_micro'])}  · '
                  'Trade ${_msnw(item['min_micro'])}–${_msnw(item['max_micro'])}'
                : _tab==1
                    ? 'Remaining ${_msnw(item['remaining_micro'])} · ${item['state']}'
                    : _tab==2 ? 'Fiat ${_ngn(item['fiat_kobo'])}'
                    : '${item['action'] ?? 'State change'} · ${item['created_at'] ?? ''}'),
              trailing:const Icon(Icons.chevron_right),
              onTap: _busy?null: () {
                if(_tab==0) {_buy(item);}
                if(_tab==1 && item['state']=='active') {
                  _confirm('Close this offer', 'Existing escrow orders will not be affected.')
                    .then((yes){if(yes)_act(()async{
                      await _request('POST','/offers/${item['offer_id']}/close',{});
                    });});
                }
                if(_tab==2||_tab==3) {_orderDetail('${item['order_id']}');}
              },
            )),
          ]));
        })),
    ]),
  );
}

class _P2pOrderDetail extends StatefulWidget {
  const _P2pOrderDetail({required this.load,required this.act,
    required this.confirmReceipt,required this.listEvidence,
    required this.uploadEvidence,required this.openEvidence,required this.userId});
  final Future<Map<String,dynamic>> Function() load;
  final Future<void> Function(String action,[String? reason]) act;
  final Future<void> Function(Map<String,dynamic> order) confirmReceipt;
  final Future<List<Map<String,dynamic>>> Function() listEvidence;
  final Future<void> Function(Map<String,dynamic>) uploadEvidence;
  final Future<void> Function(String) openEvidence;
  final String userId;
  @override State<_P2pOrderDetail> createState()=>_P2pOrderDetailState();
}
class _P2pOrderDetailState extends State<_P2pOrderDetail> {
  late Future<Map<String,dynamic>> _future=widget.load();
  late Future<List<Map<String,dynamic>>> _evidence=widget.listEvidence();
  void _refresh()=>setState((){
    _future=widget.load();
    _evidence=widget.listEvidence();
  });
  Future<void> _uploadEvidence() async {
    try {
      final selection=await FilePicker.platform.pickFiles(
        type:FileType.custom,allowedExtensions:const ['png','jpg','jpeg','webp','pdf'],
        withData:true,allowMultiple:false);
      if(selection==null || selection.files.isEmpty)return;
      final file=selection.files.single;
      final bytes=file.bytes;
      if(bytes==null||bytes.isEmpty||bytes.length>2*1024*1024)
        throw StateError('Choose a PNG, JPG, WEBP or PDF no larger than 2 MB.');
      final extension=(file.extension??'').toLowerCase();
      final contentType=switch(extension){
        'png'=>'image/png','jpg'||'jpeg'=>'image/jpeg',
        'webp'=>'image/webp','pdf'=>'application/pdf',
        _=>throw StateError('Unsupported evidence type'),
      };
      await widget.uploadEvidence({
        'contentType':contentType,'contentBase64':base64Encode(bytes),
      });
      if(mounted)_refresh();
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Could not attach evidence: $error')));
    }
  }

  Future<void> _perform(String action,{bool reasonRequired=false}) async {
    String? reason;
    if(reasonRequired) {
      final input=TextEditingController();
      try {
        reason=await showDialog<String>(context:context,builder:(ctx)=>AlertDialog(
          title:const Text('Explain the dispute'),content:TextField(
            controller:input,maxLines:3,decoration:const InputDecoration(
              hintText:'What happened? Give transaction reference, not passwords.')),
          actions:[TextButton(onPressed:()=>Navigator.pop(ctx),
            child:const Text('Back')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,input.text),
              child:const Text('Submit'))]));
      } finally {input.dispose();}
      if(reason==null||reason.trim().length<10)return;
    } else {
      final yes=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
        title:const Text('Confirm this action'),
        content:Text(action=='claim'
          ? 'Mark payment sent? A claim is not bank settlement proof.'
          : 'Cancel only if payment was not sent. Funds return to the seller.'),
        actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Back')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Confirm'))]));
      if(yes!=true)return;
    }
    await widget.act(action,reason);
    if(mounted)_refresh();
  }
  Future<void> _sellerConfirm(Map<String,dynamic> order) async {
    final typed=TextEditingController();
    try {
      final accepted=await showDialog<bool>(context:context,
        builder:(ctx)=>StatefulBuilder(builder:(ctx,update)=>AlertDialog(
          title:const Text('Confirm bank payment received'),
          content:SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text('Order: ${order['order_id']}'),
              Text('Expected bank payment: ${_ngn(order['fiat_kobo'])}'),
              const SizedBox(height:12),
              const Text('Check your own bank account or bank transaction '
                'records. Do not rely on the buyer’s message or screenshot. '
                'Once released, MSNW goes to the buyer and cannot be '
                'reclaimed simply by cancelling this order.'),
              const SizedBox(height:16),
              const Text('Type RECEIVED to explicitly authorize release:'),
              TextField(controller:typed,onChanged:(_)=>update((){}),
                decoration:const InputDecoration(hintText:'RECEIVED'),
                textCapitalization:TextCapitalization.characters),
            ])),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(ctx,false),
              child:const Text('Not received')),
            FilledButton(
              onPressed:typed.text.trim()=='RECEIVED'
                ? ()=>Navigator.pop(ctx,true):null,
              child:const Text('Authorize MSNW release')),
          ],
        )))??false;
      if(!accepted)return;
      await widget.confirmReceipt(order);
      if(mounted)_refresh();
    } finally {
      typed.dispose();
    }
  }
  @override Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(title:const Text('P2P order'),actions:[
      IconButton(onPressed:_refresh,tooltip:'Refresh order',icon:const Icon(Icons.refresh)),
    ]),
    body:FutureBuilder<Map<String,dynamic>>(future:_future,builder:(context,s){
      if(!s.hasData)return Center(child:s.hasError?Text('Could not read order: ${s.error}')
        :const CircularProgressIndicator());
      final o=s.data!;
      final buyer=o['buyer_id']==widget.userId;
      final state='${o['state']}';
      final p=o['payment'] is Map?_json(o['payment']):<String,dynamic>{};
      return ListView(padding:const EdgeInsets.all(18),children:[
        Text('Status: $state',style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:12),
        Text('MSNW: ${_msnw(o['amount_micro'])}'),
        Text('Seller fee: ${_msnw(o['fee_micro'])}'),
        Text('Fiat payment: ${_ngn(o['fiat_kobo'])}'),
        const Divider(height:32),
        const Text('Pay only to these order-bound bank details:'),
        SelectableText('${p['bank_name']??'Unavailable'}\n'
          '${p['account_name']??'Unavailable'}\n'
          '${p['account_number']??'Unavailable'}'),
        const SizedBox(height:12),
        Text('Deadline: ${o['payment_deadline']}'),
        if(buyer&&state=='awaiting_payment') ...[
          FilledButton(onPressed:()=>_perform('claim'),child:const Text('I have paid')),
          TextButton(onPressed:()=>_perform('cancel'),child:const Text('Cancel unpaid order')),
        ],
        if(state=='awaiting_payment'||state=='payment_claimed') ...[
          OutlinedButton(onPressed:()=>_perform('dispute',reasonRequired:true),
            child:const Text('Open dispute')),
        ],
        if(!buyer&&state=='payment_claimed') ...[
          const ListTile(
            title:Text('Seller confirmation pending'),
            subtitle:Text('Confirm only after you independently see '
              'the correct transfer credited in your own bank account. '
              'A screenshot or buyer claim is not enough.')),
          FilledButton(
            onPressed:()=>_sellerConfirm(o),
            child:const Text('I received the bank payment')),
        ],
        if(state=='payment_claimed'||state=='disputed') ...[
          const SizedBox(height:18),
          Text('Payment evidence',style:Theme.of(context).textTheme.titleMedium),
          const Text('Optional. Attach a bank receipt only to assist a dispute. '
            'Screenshots and attachments never release MSNW escrow.'),
          OutlinedButton.icon(onPressed:_uploadEvidence,
            icon:const Icon(Icons.upload_file_outlined),
            label:const Text('Attach receipt (2 MB max)')),
          FutureBuilder<List<Map<String,dynamic>>>(future:_evidence,
            builder:(ctx,snapshot){
              if(snapshot.connectionState!=ConnectionState.done)
                return const LinearProgressIndicator();
              if(snapshot.hasError) return const Text('Evidence unavailable. Refresh to retry.');
              final items=snapshot.data??[];
              if(items.isEmpty)return const Text('No evidence attached.');
              return Column(children:[
                for(final item in items)
                  ListTile(
                    leading:const Icon(Icons.verified_user_outlined),
                    title:Text('Evidence ${item['created_at'] ?? ''}'),
                    subtitle:Text('SHA256: ${item['sha256'] ?? ''}',
                      maxLines:1,overflow:TextOverflow.ellipsis),
                    trailing:const Icon(Icons.open_in_new),
                    onTap:()async{
                      try { await widget.openEvidence('${item['evidence_id']}'); }
                      catch(error) {
                        if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:Text('Unable to open evidence: $error')));
                      }
                    },
                  ),
              ]);
            }),
        ],
        if(state=='disputed')const ListTile(
          title:Text('Escrow frozen'),
          subtitle:Text('An authorized operator must resolve this dispute.')),
        if(state=='completed')Text('Receipt: ${o['receipt_reference']??'Pending'}'),
      ]);
    }),
  );
}
