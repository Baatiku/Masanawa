import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'msnw_wallet_home.dart';
import 'wallet_flow_page.dart';

class WalletTransaction {
  const WalletTransaction({required this.id, required this.category,
    required this.title, required this.amount, required this.asset,
    required this.status, required this.incoming, required this.details,
    this.createdAt});
  final String id, category, title, amount, asset, status;
  final bool incoming;
  final DateTime? createdAt;
  final Map<String,String> details;
  String get displayAmount => '${incoming ? '+' : '−'}$amount $asset';
  String get searchable => '$title $category $id $asset $status ${details.values.join(' ')}'.toLowerCase();
}

String _required(Map row, String key) {
  final value = row[key];
  if (value is! String || value.isEmpty || value.length > 2000) {
    throw FormatException('Invalid transaction $key');
  }
  return value;
}
DateTime? _date(Map row, Iterable<String> keys) {
  for (final key in keys) {
    final value = row[key];
    if (value is String && DateTime.tryParse(value) != null) return DateTime.parse(value).toUtc();
  }
  return null;
}
Map<String,String> _details(Map row) {
  const labels = {'operationId':'Transfer reference','reference':'Funding reference',
    'conversionId':'Conversion reference','order_id':'Order reference',
    'receipt_reference':'Receipt','requestId':'Request reference',
    'recipientName':'Recipient','counterpartyName':'With',
    'providerCode':'Asset / network','network':'Network','destinationAddress':'Destination'};
  return {
    for (final field in labels.entries)
      if(row[field.key] is String) field.value:'${row[field.key]}',
    if(row['issuedMicro'] is String) 'MSNW credited':'${formatWalletAtomic(row['issuedMicro'] as String)} MSNW',
    if(row['targetMicro'] is String && row['providerCode'] is String)
      'Crypto amount':'${formatWalletAtomic(row['targetMicro'] as String)} ${row['providerCode']}',
    if(row['updatedAt'] is String) 'Updated':'${row['updatedAt']}',
    if(row['updated_at'] is String) 'Updated':'${row['updated_at']}',
  };
}

List<WalletTransaction> parseWalletTransactions(String source, dynamic data, String userId) {
  if (data is! Map) throw const FormatException('Invalid history response');
  final raw = data[source == 'Crypto' ? 'intents' : source == 'Archive' ? 'entries' : 'items'];
  if (raw is! List || raw.length > 1000) throw const FormatException('Invalid history page');
  return raw.map((item) {
    if (item is! Map) throw const FormatException('Invalid transaction');
    final row = item;
    String id, title, amount, asset, status;
    bool incoming;
    switch (source) {
      case 'Transfers':
        if (row['asset'] != 'MSNW' || !['sent','received'].contains(row['direction'])) {
          throw const FormatException('Invalid custody transfer');
        }
        id = _required(row,'operationId'); incoming = row['direction'] == 'received';
        title = incoming ? 'MSNW received' : 'MSNW sent';
        amount = formatWalletAtomic(_required(row,'amountMicro')); asset = 'MSNW'; status = 'completed';
      case 'Funding':
        id = _required(row,'reference'); incoming = true; title = 'Bank funding';
        amount = formatWalletAtomic(_required(row,'amountKobo'), decimals: 2); asset = 'NGN';
        status = row['obligationState'] == 'msnw_issued' ? 'completed' : 'backing_pending';
      case 'Conversions':
        if (row['asset'] != 'MSNW') throw const FormatException('Invalid conversion asset');
        id = _required(row,'conversionId'); incoming = false; title = 'MSNW to ${_required(row,'providerCode')}';
        amount = formatWalletAtomic(_required(row,'sourceMicro')); asset = 'MSNW'; status = _required(row,'state');
      case 'P2P':
        id = _required(row,'order_id'); incoming = row['seller_id'] != userId;
        title = incoming ? 'P2P buy' : 'P2P sell';
        amount = formatWalletAtomic(_required(row,'amount_micro')); asset = 'MSNW'; status = _required(row,'state');
      case 'Crypto':
        id = _required(row,'requestId'); title = 'Crypto ${_required(row,'operation').replaceAll('_',' ')}';
        incoming = row['operation'] == 'deposit' || row['operation'] == 'fiat_purchase';
        amount = _required(row,'amount');
        if (!RegExp(r'^[0-9]+(\.[0-9]+)?$').hasMatch(amount)) throw const FormatException('Invalid crypto amount');
        asset = _required(row,'asset'); status = _required(row,'status');
      case 'Archive':
        id = _required(row,'id'); title = _required(row,'title');
        final value = row['amountCredits'];
        if (value is! int || value < 0) throw const FormatException('Invalid historical amount');
        amount = '$value'; asset = 'Cr (historical)'; incoming = row['incoming'] == true; status = 'recorded';
      default: throw const FormatException('Unknown transaction source');
    }
    return WalletTransaction(id: '$source:$id', category: source, title: title,
      amount: amount, asset: asset, status: status, incoming: incoming,
      createdAt: _date(row,['createdAt','paidAt','created_at']), details: _details(row));
  }).toList();
}

String walletTransactionsCsv(List<WalletTransaction> entries) {
  String cell(String value) {
    final safe = RegExp(r'^[\s]*[=+\-@\t\r]').hasMatch(value) ? "'$value" : value;
    return '"${safe.replaceAll('"','""')}"';
  }
  return const ['Reference,Category,Description,Amount,Asset,Direction,Status,Created UTC']
    .followedBy(entries.map((e) => [e.id,e.category,e.title,e.amount,e.asset,
      e.incoming ? 'in' : 'out',e.status,e.createdAt?.toIso8601String() ?? ''].map(cell).join(',')))
    .join('\r\n');
}

class WalletHistoryFilter {
  const WalletHistoryFilter({this.category = 'All', this.status = 'All', this.from, this.to});
  final String category, status;
  final DateTime? from, to;
  bool matches(WalletTransaction e) => (category == 'All' || e.category == category) &&
    (status == 'All' || (status == 'Completed' ? ['completed','succeeded','settled','released','finished'].contains(e.status) :
      status == 'Failed' ? ['failed','cancelled','rejected','expired','refunded'].contains(e.status) :
      !['completed','succeeded','settled','released','finished','failed','cancelled','rejected','expired','refunded','recorded'].contains(e.status))) &&
    (from == null || e.createdAt != null && !e.createdAt!.isBefore(from!)) &&
    (to == null || e.createdAt != null && e.createdAt!.isBefore(to!.add(const Duration(days:1))));
}

class MsnwTransactionHistory extends StatefulWidget {
  const MsnwTransactionHistory({super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId, required this.accessToken});
  final Dio dio;
  final String baseUrl, expectedUserId;
  final String? Function() currentUserId, accessToken;
  @override State<MsnwTransactionHistory> createState() => _HistoryState();
}
class _HistoryState extends State<MsnwTransactionHistory> {
  List<WalletTransaction> entries = [];
  final search = TextEditingController();
  List<String> failed = [];
  bool busy = true;
  int generation = 0;
  WalletHistoryFilter filter = const WalletHistoryFilter();
  static const paths = {
    'Transfers': '/v1/wallet/msnw/transactions',
    'Funding': '/v1/wallet/msnw/funding/verified',
    'Conversions': '/v1/wallet/msnw/convert/history',
    'P2P': '/v1/wallet/msnw/p2p/orders',
    'Crypto': '/v1/financial/crypto/history?limit=100',
    'Archive': '/v1/wallet?limit=100',
  };
  @override void initState() { super.initState(); load(); }
  @override void didUpdateWidget(covariant MsnwTransactionHistory old) {
    super.didUpdateWidget(old);
    if (old.expectedUserId != widget.expectedUserId) { search.clear(); filter = const WalletHistoryFilter(); load(); }
  }
  @override void dispose() { search.dispose(); super.dispose(); }
  bool same(String? token) => mounted && widget.currentUserId() == widget.expectedUserId &&
    token != null && token.isNotEmpty && token == widget.accessToken()?.trim();
  Future<void> load() async {
    final run = ++generation, token = widget.accessToken()?.trim();
    setState(() { busy = true; entries = []; failed = []; });
    if (!same(token)) { setState(() { busy = false; failed = ['Sign in again']; }); return; }
    final values = <WalletTransaction>[], errors = <String>[];
    await Future.wait(paths.entries.map((source) async {
      try {
        final r = await widget.dio.get<dynamic>(
          '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}${source.value}',
          options: Options(headers: {'Authorization':'Bearer $token','Cache-Control':'no-store'},
            followRedirects:false, receiveTimeout:const Duration(seconds:15)));
        values.addAll(parseWalletTransactions(source.key,r.data,widget.expectedUserId));
      } catch (_) { errors.add(source.key); }
    }));
    if (!same(token) || run != generation) {
      if(mounted && run==generation) setState(() { busy=false; entries=[]; failed=['Session changed']; });
      return;
    }
    final byId = {for (final e in values) e.id: e};
    final sorted = byId.values.toList()..sort((a,b) {
      final order = (b.createdAt?.millisecondsSinceEpoch ?? -1).compareTo(a.createdAt?.millisecondsSinceEpoch ?? -1);
      return order != 0 ? order : b.id.compareTo(a.id);
    });
    setState(() { entries = sorted; failed = errors..sort(); busy = false; });
  }
  List<WalletTransaction> get visible => entries.where((e) => filter.matches(e) &&
    e.searchable.contains(search.text.trim().toLowerCase())).toList();
  Future<void> filters() async {
    final next = await openWalletPage<WalletHistoryFilter>(context:context,title:'Filter transactions',
      builder: (_) => _FilterPage(initial:filter));
    if (mounted && next != null) setState(() => filter = next);
  }
  @override Widget build(BuildContext context) {
    if (widget.currentUserId() != widget.expectedUserId) return const Center(child:Text('Sign in to view transactions'));
    final rows = visible;
    return Column(children:[
      Padding(padding:const EdgeInsets.fromLTRB(16,12,16,8),child:TextField(
        controller:search,onChanged:(_)=>setState((){}),
        decoration:InputDecoration(hintText:'Search transactions',filled:true,
          fillColor:Theme.of(context).colorScheme.surfaceContainerLow,
          prefixIcon:const Icon(Icons.search),border:OutlineInputBorder(borderRadius:BorderRadius.circular(16),borderSide:BorderSide.none)))),
      Padding(padding:const EdgeInsets.symmetric(horizontal:16),child:Row(children:[
        TextButton.icon(onPressed:filters,icon:const Icon(Icons.tune),label:Text(filter.category == 'All' ? 'Filters' : filter.category)),
        const Spacer(),
        IconButton(tooltip:'Refresh transactions',onPressed:busy?null:load,icon:const Icon(Icons.refresh)),
        IconButton(tooltip:'Export transactions',onPressed:busy||rows.isEmpty?null:()=>openWalletPage<void>(context:context,title:'Export transactions',
          builder:(_)=>_ExportPage(entries:List.unmodifiable(rows),failed:List.unmodifiable(failed),
            authorized:()=>same(widget.accessToken()?.trim()))),icon:const Icon(Icons.ios_share)),
      ])),
      if (busy) const LinearProgressIndicator(minHeight:2),
      if (failed.isNotEmpty) Padding(padding:const EdgeInsets.symmetric(horizontal:20,vertical:8),
        child:Text('Couldn’t load: ${failed.join(', ')}. Retry to refresh.',textAlign:TextAlign.center)),
      Expanded(child:rows.isEmpty ? Center(child:Padding(padding:const EdgeInsets.all(24),
        child:Text(busy?'Loading transactions…':failed.length==paths.length?'Couldn’t load transactions. Check your connection and retry.':
          entries.isEmpty?'No transactions yet':'No matching transactions',textAlign:TextAlign.center))) :
        ListView.builder(padding:const EdgeInsets.fromLTRB(8,0,8,24),itemCount:rows.length+1,itemBuilder:(context,index) {
          if (index==rows.length) return const Padding(padding:EdgeInsets.all(16),child:Text(
            'Recent records from each service. Older records may not be included.',textAlign:TextAlign.center,style:TextStyle(fontSize:12)));
          final e=rows[index];
          final day=e.createdAt?.toLocal();
          final previous=index==0?null:rows[index-1].createdAt?.toLocal();
          final group=day==null?'Date unavailable':'${day.year}-${day.month.toString().padLeft(2,'0')}-${day.day.toString().padLeft(2,'0')}';
          final heading=index==0||day?.year!=previous?.year||day?.month!=previous?.month||day?.day!=previous?.day;
          return Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
            if(heading)Padding(padding:const EdgeInsets.fromLTRB(16,18,16,8),child:Text(group,style:const TextStyle(fontWeight:FontWeight.w700))),
            ListTile(leading:CircleAvatar(backgroundColor:Theme.of(context).colorScheme.surfaceContainerLow,
              child:Icon(e.incoming?Icons.south_west:Icons.north_east,size:20)),
              title:Text(e.title,maxLines:1,overflow:TextOverflow.ellipsis),
              subtitle:Text(e.status.replaceAll('_',' '),maxLines:1),
              trailing:ConstrainedBox(constraints:const BoxConstraints(maxWidth:130),child:Text(e.displayAmount,
                textAlign:TextAlign.end,style:const TextStyle(fontWeight:FontWeight.w700))),
              onTap:()=>openWalletPage<void>(context:context,title:'Transaction details',builder:(_)=>WalletTransactionDetails(
                entry:e,authorized:()=>same(widget.accessToken()?.trim())))),
          ]);
        })),
    ]);
  }
}

class WalletTransactionDetails extends StatelessWidget {
  const WalletTransactionDetails({super.key,required this.entry,required this.authorized});
  final WalletTransaction entry;
  final bool Function() authorized;
  @override Widget build(BuildContext context) {
    if (!authorized()) return const Center(child:Text('Sign in to view this transaction'));
    final e=entry;
    return ListView(padding:const EdgeInsets.all(24),children:[
      const Icon(Icons.receipt_long_outlined,size:48),const SizedBox(height:16),
      Text(e.displayAmount,textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height:8),Text(e.status.replaceAll('_',' '),textAlign:TextAlign.center),
      const SizedBox(height:24),
      for(final field in {'Type':e.title,'Reference':e.id,'Asset':e.asset,
        'Created':e.createdAt?.toLocal().toString()??'Not provided',...e.details}.entries)
        Padding(padding:const EdgeInsets.symmetric(vertical:10),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(field.key,style:Theme.of(context).textTheme.labelMedium),const SizedBox(height:4),SelectableText(field.value)])),
      OutlinedButton.icon(onPressed:()async{if(authorized())await Clipboard.setData(ClipboardData(text:e.id));},
        icon:const Icon(Icons.copy),label:const Text('Copy reference')),
    ]);
  }
}
class _FilterPage extends StatefulWidget {
  const _FilterPage({required this.initial});
  final WalletHistoryFilter initial;
  @override State<_FilterPage> createState()=>_FilterState();
}
class _FilterState extends State<_FilterPage> {
  late String category=widget.initial.category,status=widget.initial.status;
  late final from=TextEditingController(text:widget.initial.from?.toIso8601String().substring(0,10)??'');
  late final to=TextEditingController(text:widget.initial.to?.toIso8601String().substring(0,10)??'');
  String? error;
  @override void dispose(){from.dispose();to.dispose();super.dispose();}
  void apply(){
    DateTime? date(String v)=>v.isEmpty?null:RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(v)?DateTime.tryParse('${v}T00:00:00Z'):null;
    final a=date(from.text.trim()),b=date(to.text.trim());
    bool valid(DateTime? d,String raw)=>raw.isEmpty||d!=null&&d.toIso8601String().substring(0,10)==raw.trim();
    if(!valid(a,from.text)||!valid(b,to.text)||a!=null&&b!=null&&b.isBefore(a)){
      setState(()=>error='Use YYYY-MM-DD and an end date after the start date.');return;
    }
    Navigator.pop(context,WalletHistoryFilter(category:category,status:status,from:a,to:b));
  }
  @override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(20),children:[
    DropdownButtonFormField<String>(initialValue:category,decoration:const InputDecoration(labelText:'Transaction type'),
      items:['All',..._HistoryState.paths.keys].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(),onChanged:(v)=>setState(()=>category=v!)),
    const SizedBox(height:20),
    DropdownButtonFormField<String>(initialValue:status,decoration:const InputDecoration(labelText:'Status'),
      items:['All','Completed','Pending','Failed'].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(),onChanged:(v)=>setState(()=>status=v!)),
    const SizedBox(height:20),TextField(controller:from,decoration:const InputDecoration(labelText:'From (UTC)',hintText:'YYYY-MM-DD')),
    const SizedBox(height:20),TextField(controller:to,decoration:const InputDecoration(labelText:'To (UTC)',hintText:'YYYY-MM-DD')),
    if(error!=null)Text(error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
    const SizedBox(height:28),FilledButton(onPressed:apply,child:const Text('Apply filters')),
    TextButton(onPressed:()=>Navigator.pop(context,const WalletHistoryFilter()),child:const Text('Reset filters')),
  ]);
}
class _ExportPage extends StatelessWidget {
  const _ExportPage({required this.entries,required this.failed,required this.authorized});
  final List<WalletTransaction> entries;
  final List<String> failed;
  final bool Function() authorized;
  @override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(24),children:[
    const Icon(Icons.description_outlined,size:48),const SizedBox(height:20),
    Text('${entries.length} transactions',style:Theme.of(context).textTheme.titleLarge),
    const SizedBox(height:12),const Text('CSV · exact amounts · UTC timestamps'),
    const SizedBox(height:12),const Text('Includes the filtered records currently loaded from each service. This is a recent-activity export, not a full account statement.'),
    if(failed.isNotEmpty)Text('Missing sources: ${failed.join(', ')}. Go back and retry before exporting.'),
    const SizedBox(height:24),FilledButton.icon(onPressed:failed.isNotEmpty?null:()async{
      if(!authorized())return;
      final csv=walletTransactionsCsv(entries);
      try {
        await SharePlus.instance.share(ShareParams(files:[XFile.fromData(Uint8List.fromList(utf8.encode(csv)),mimeType:'text/csv')],
          fileNameOverrides:['masanawa-transactions.csv'],title:'Masanawa transactions'));
      } catch (_) {
        if(context.mounted)ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Couldn’t export. Please retry.')));
      }
    },icon:const Icon(Icons.ios_share),label:const Text('Save or share CSV')),
  ]);
}
