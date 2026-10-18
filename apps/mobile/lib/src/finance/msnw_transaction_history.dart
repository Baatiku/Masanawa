import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'msnw_wallet_home.dart';
import 'wallet_flow_page.dart';
import 'msnw_p2p_screen.dart';
import '../ui/components/masanawa_list_skeleton.dart';

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

WalletTransaction parseWalletActivity(dynamic row) {
  if(row is! Map || row['id'] is! String || row['reference'] is! String ||
    row['category'] is! String || row['title'] is! String || row['asset'] is! String ||
    row['status'] is! String || row['incoming'] is! bool || row['amountAtomic'] is! String ||
    row['decimals'] is! int || (row['decimals'] as int)<0 || (row['decimals'] as int)>36 ||
    row['createdAt'] is! String || DateTime.tryParse(row['createdAt'] as String)==null ||
    row['details'] is! Map) throw const FormatException('Invalid transaction record');
  final details=<String,String>{'Reference':row['reference'] as String};
  for(final field in (row['details'] as Map).entries) {
    if(field.key is! String || field.value is! String)throw const FormatException('Invalid receipt detail');
    if(field.key=='MSNW credited atomic') {
      details['MSNW credited']='${formatWalletAtomic(field.value as String)} MSNW';
    } else if(field.key=='Crypto amount atomic') {
      details['Crypto amount']='${formatWalletAtomic(field.value as String)} ${row['details']['Network']??''}';
    } else { details[field.key as String]=field.value as String; }
  }
  return WalletTransaction(id:row['id'] as String,category:row['category'] as String,
    title:row['title'] as String,amount:formatWalletAtomic(row['amountAtomic'] as String,decimals:row['decimals'] as int),
    asset:row['asset'] as String,status:row['status'] as String,incoming:row['incoming'] as bool,
    details:details,createdAt:DateTime.parse(row['createdAt'] as String).toUtc());
}

class WalletHistoryFilter {
  const WalletHistoryFilter({this.category = 'All', this.status = 'All', this.from, this.to,this.asset='All',this.direction='All',this.minAmount,this.maxAmount});
  final String category, status,asset,direction;
  final String? minAmount,maxAmount;
  bool get active=>category!='All'||status!='All'||asset!='All'||direction!='All'||from!=null||to!=null||minAmount!=null||maxAmount!=null;
  final DateTime? from, to;
  bool matches(WalletTransaction e) => (asset=='All'||e.asset==asset)&&(direction=='All'||e.incoming==(direction=='in'))&&walletAmountInRange(e.amount,minAmount,maxAmount)&&(category == 'All' || e.category == category) &&
    (status == 'All' || (status == 'Completed' ? ['completed','succeeded','settled','released','finished'].contains(e.status) :
      status == 'Failed' ? ['failed','cancelled','rejected','expired','refunded'].contains(e.status) :
      !['completed','succeeded','settled','released','finished','failed','cancelled','rejected','expired','refunded','recorded'].contains(e.status))) &&
    (from == null || e.createdAt != null && !e.createdAt!.isBefore(from!)) &&
    (to == null || e.createdAt != null && e.createdAt!.isBefore(to!.add(const Duration(days:1))));
}

class MsnwTransactionHistory extends StatefulWidget {
  const MsnwTransactionHistory({super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId, required this.accessToken,
    this.refreshKey = 0, this.initialSearch});
  final String? initialSearch;
  final Dio dio;
  final String baseUrl, expectedUserId;
  final int refreshKey;
  final String? Function() currentUserId, accessToken;
  @override State<MsnwTransactionHistory> createState() => _HistoryState();
}
class _HistoryState extends State<MsnwTransactionHistory> {
  List<WalletTransaction> entries = [];
  List<String> assets=[];
  late final search = TextEditingController(text: widget.initialSearch ?? '');
  List<String> failed = [];
  bool busy = true;
  int generation = 0;
  String? nextCursor;
  Timer? debounce;
  WalletHistoryFilter filter = const WalletHistoryFilter();
  static const categories=['Transfers','Funding','Bills','Conversions','P2P','Crypto','Calls','Rooms','Archive'];
  @override void initState() { super.initState(); load(); }
  @override void didUpdateWidget(covariant MsnwTransactionHistory old) {
    super.didUpdateWidget(old);
    if (old.initialSearch != widget.initialSearch) {
      search.text = widget.initialSearch ?? '';
      load();
    } else if (old.expectedUserId != widget.expectedUserId) {
      search.clear();
      assets=[];
      filter = const WalletHistoryFilter();
      load();
    } else if (old.refreshKey != widget.refreshKey) {
      // A balance-affecting operation refreshes the rows, not the filters.
      load();
    }
  }
  @override void dispose() { debounce?.cancel(); search.dispose(); super.dispose(); }
  bool same(String? token) => mounted && widget.currentUserId() == widget.expectedUserId &&
    token != null && token.isNotEmpty && token == widget.accessToken()?.trim();
  Map<String,String> get query => {
    if(filter.category!='All') 'category':filter.category,
    if(filter.status!='All') 'status':filter.status,
    if(filter.asset!='All') 'asset':filter.asset,
    if(filter.direction!='All') 'direction':filter.direction,
    if(filter.minAmount!=null) 'minAmount':filter.minAmount!,
    if(filter.maxAmount!=null) 'maxAmount':filter.maxAmount!,
    if(search.text.trim().isNotEmpty) 'search':search.text.trim(),
    if(filter.from!=null) 'from':filter.from!.toIso8601String().substring(0,10),
    if(filter.to!=null) 'to':filter.to!.toIso8601String().substring(0,10),
  };
  Future<void> load({bool more=false}) async {
    if(more&&(busy||nextCursor==null))return;
    final run=++generation,token=widget.accessToken()?.trim();
    final cursor=more?nextCursor:null;
    setState(() {busy=true;failed=[];if(!more){entries=[];nextCursor=null;}});
    if(!same(token)){setState((){busy=false;failed=['Sign in again'];});return;}
    try {
      final response=await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'),'')}/v1/wallet/msnw/activity',
        queryParameters:{...query,'limit':'50',if(cursor!=null)'cursor':cursor},
        options:Options(headers:{'Authorization':'Bearer $token','Cache-Control':'no-store'},
          followRedirects:false,receiveTimeout:const Duration(seconds:15)));
      final raw=response.data;
      if(raw is! Map||raw['items'] is! List||(raw['items'] as List).length>50||
        raw['nextCursor']!=null&&raw['nextCursor'] is! String)throw const FormatException('Invalid history page');
      final values=(raw['items'] as List).map(parseWalletActivity).toList();
      if(!same(token)||run!=generation)return;
      setState(() {
        entries={for(final e in [...(more?entries:<WalletTransaction>[]),...values])e.id:e}.values.toList();
        assets=(raw['assets'] is List?(raw['assets'] as List).whereType<String>().where((a)=>a.length<=40):values.map((v)=>v.asset)).toSet().toList()..sort();
        nextCursor=raw['nextCursor'] as String?;busy=false;
      });
    } catch(_) {
      if(!mounted||run!=generation)return;
      setState((){busy=false;failed=['Transactions'];});
    } finally {
      if(mounted&&run==generation&&!same(token))setState((){busy=false;entries=[];nextCursor=null;failed=['Session changed'];});
    }
  }
  void searched(String value) {
    debounce?.cancel();
    // Fence an older query immediately, including before the debounce fires.
    generation++;
    setState((){entries=[];nextCursor=null;busy=true;});
    debounce=Timer(const Duration(milliseconds:300),load);
  }
  List<WalletTransaction> get visible=>entries;
  Future<void> filters() async {
    final next = await openWalletPage<WalletHistoryFilter>(context:context,title:'Filter transactions',
      builder: (_) => _FilterPage(initial:filter,assets:assets));
    if (mounted && next != null) setState(() => filter = next);
    if(mounted && next!=null) await load();
  }
  @override Widget build(BuildContext context) {
    if (widget.currentUserId() != widget.expectedUserId) return const Center(child:Text('Sign in to view transactions'));
    final rows = visible;
    return Column(children:[
      Padding(padding:const EdgeInsets.fromLTRB(16,12,16,8),child:TextField(
        controller:search,onChanged:searched,
        decoration:InputDecoration(hintText:'Search transactions',filled:true,
          fillColor:Theme.of(context).colorScheme.surfaceContainerLow,
          prefixIcon:const Icon(Icons.search),border:OutlineInputBorder(borderRadius:BorderRadius.circular(16),borderSide:BorderSide.none)))),
      Padding(padding:const EdgeInsets.symmetric(horizontal:16),child:Row(children:[
        TextButton.icon(onPressed:filters,icon:const Icon(Icons.tune),label:Text(filter.category == 'All' ? 'Filters' : filter.category)),
        const Spacer(),
        IconButton(tooltip:'Refresh transactions',onPressed:busy?null:load,icon:const Icon(Icons.refresh)),
        IconButton(tooltip:'Export transactions',onPressed:busy||rows.isEmpty?null:()=>openWalletPage<void>(context:context,title:'Export transactions',
          builder:(_)=>_ExportPage(dio:widget.dio,baseUrl:widget.baseUrl,query:Map.unmodifiable(query),
            accessToken:widget.accessToken,authorized:()=>same(widget.accessToken()?.trim()))),icon:const Icon(Icons.ios_share)),
      ])),
      if (busy) const LinearProgressIndicator(minHeight:2),
      if (failed.isNotEmpty) Padding(padding:const EdgeInsets.symmetric(horizontal:20,vertical:8),
        child:const Text('Couldn’t refresh transactions. Check your connection and retry.',textAlign:TextAlign.center)),
      Expanded(child:rows.isEmpty
        ? busy
          ? const MasanawaListSkeleton(semanticLabel: 'Loading transactions')
          : Center(child:Padding(padding:const EdgeInsets.all(24),
              child:Column(mainAxisSize:MainAxisSize.min,children:[
                const Icon(Icons.receipt_long_outlined,size:42),
                const SizedBox(height:12),
                Text(failed.isNotEmpty
                  ? 'Couldn’t load transactions. Check your connection and retry.'
                  : filter.active || search.text.trim().isNotEmpty
                    ? 'No transactions match your filters.'
                    : 'No transactions yet. Fund your MSNW wallet to get started.',
                  textAlign:TextAlign.center),
                const SizedBox(height:16),
                if(failed.isNotEmpty)
                  OutlinedButton.icon(onPressed:()=>load(),
                    icon:const Icon(Icons.refresh),label:const Text('Retry'))
                else if(filter.active||search.text.trim().isNotEmpty)
                  TextButton(onPressed:(){debounce?.cancel();search.clear();setState(()=>filter=const WalletHistoryFilter());load();},
                    child:const Text('Clear filters'))
              ])))
        : ListView.builder(
            key:PageStorageKey<String>('msnw-history-${widget.expectedUserId}-${filter.category}-${filter.status}'),
            padding:const EdgeInsets.fromLTRB(8,0,8,24),itemCount:rows.length+1,itemBuilder:(context,index) {
          if(index==rows.length)return Padding(padding:const EdgeInsets.all(16),child:nextCursor==null?
            const Text('End of transactions',textAlign:TextAlign.center,style:TextStyle(fontSize:12)):
            OutlinedButton(onPressed:busy?null:()=>load(more:true),child:const Text('Load more')));
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
              subtitle:Text(walletTransactionStatus(e.status),maxLines:1),
              trailing:ConstrainedBox(constraints:const BoxConstraints(maxWidth:130),child:Text(e.displayAmount,
                textAlign:TextAlign.end,style:const TextStyle(fontWeight:FontWeight.w700))),
              onTap:()=>openWalletPage<void>(context:context,title:'Transaction details',builder:(_)=>WalletTransactionDetails(
                entry:e,authorized:()=>same(widget.accessToken()?.trim()),
                onSupport:e.category=='P2P'?()=>openWalletPage<void>(context:context,title:'P2P order',wrapScaffold:false,builder:(_)=>MsnwP2pScreen(dio:widget.dio,baseUrl:widget.baseUrl,expectedUserId:widget.expectedUserId,currentUserId:widget.currentUserId,accessToken:widget.accessToken,initialOrderId:e.details['Reference'])):null))),
          ]);
        })),
    ]);
  }
}

class WalletTransactionDetails extends StatelessWidget {
  const WalletTransactionDetails({super.key,required this.entry,required this.authorized,this.onSupport});
  final WalletTransaction entry;
  final bool Function() authorized;
  final VoidCallback? onSupport;
  @override Widget build(BuildContext context) {
    if (!authorized()) return const Center(child:Text('Sign in to view this transaction'));
    final e=entry;
    return ListView(padding:const EdgeInsets.all(24),children:[
      const Icon(Icons.receipt_long_outlined,size:48),const SizedBox(height:16),
      Text(e.displayAmount,textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height:8),Text(walletTransactionStatus(e.status),textAlign:TextAlign.center),
      if(walletTransactionStatusDetail(e.status)!=null)Padding(padding:const EdgeInsets.only(top:12),child:Text(walletTransactionStatusDetail(e.status)!,textAlign:TextAlign.center)),
      const SizedBox(height:24),
      for(final field in {'Type':e.title,'Reference':e.id,'Asset':e.asset,
        'Created':e.createdAt?.toLocal().toString()??'Not provided',...e.details}.entries)
        Padding(padding:const EdgeInsets.symmetric(vertical:10),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text(field.key,style:Theme.of(context).textTheme.labelMedium),const SizedBox(height:4),SelectableText(field.value)])),
      OutlinedButton.icon(onPressed:()async{if(authorized())await Clipboard.setData(ClipboardData(text:e.details['Reference']??e.id));},
        icon:const Icon(Icons.copy),label:const Text('Copy reference')),
      if(onSupport!=null)OutlinedButton.icon(onPressed:authorized()?onSupport:null,icon:const Icon(Icons.support_agent_outlined),label:const Text('Order help')),
    ]);
  }
}
class _FilterPage extends StatefulWidget {
  const _FilterPage({required this.initial,required this.assets});
  final WalletHistoryFilter initial;
  final List<String> assets;
  @override State<_FilterPage> createState()=>_FilterState();
}
class _FilterState extends State<_FilterPage> {
  late String category=widget.initial.category,status=widget.initial.status,asset=widget.initial.asset,direction=widget.initial.direction;
  late final minimum=TextEditingController(text:widget.initial.minAmount??''),maximum=TextEditingController(text:widget.initial.maxAmount??'');
  late final from=TextEditingController(text:widget.initial.from?.toIso8601String().substring(0,10)??'');
  late final to=TextEditingController(text:widget.initial.to?.toIso8601String().substring(0,10)??'');
  String? error;
  @override void dispose(){from.dispose();to.dispose();minimum.dispose();maximum.dispose();super.dispose();}
  void apply(){
    DateTime? date(String v)=>v.isEmpty?null:RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(v)?DateTime.tryParse('${v}T00:00:00Z'):null;
    final a=date(from.text.trim()),b=date(to.text.trim());
    bool valid(DateTime? d,String raw)=>raw.isEmpty||d!=null&&d.toIso8601String().substring(0,10)==raw.trim();
    if(!valid(a,from.text)||!valid(b,to.text)||a!=null&&b!=null&&b.isBefore(a)){
      setState(()=>error='Use YYYY-MM-DD and an end date after the start date.');return;
    }
    final min=minimum.text.trim(),max=maximum.text.trim();
    final amountPattern=RegExp(r'^[0-9]{1,40}(\.[0-9]{1,36})?$');
    if((min.isNotEmpty||max.isNotEmpty)&&asset=='All'){setState(()=>error='Choose an asset for the amount range');return;}
    if(min.isNotEmpty&&!amountPattern.hasMatch(min)||max.isNotEmpty&&!amountPattern.hasMatch(max)){setState(()=>error='Enter valid amounts');return;}
    BigInt scaled(String v){final p=v.split('.');return BigInt.parse(p[0]+(p.length==2?p[1]:'').padRight(36,'0'));}
    if(min.isNotEmpty&&max.isNotEmpty&&scaled(min)>scaled(max)){setState(()=>error='Maximum must be at least the minimum');return;}
    Navigator.pop(context,WalletHistoryFilter(category:category,status:status,from:a,to:b,asset:asset,direction:direction,minAmount:min.isEmpty?null:min,maxAmount:max.isEmpty?null:max));
  }
  @override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(20),children:[
    WalletSelectionField<String>(initialValue:category,decoration:const InputDecoration(labelText:'Transaction type'),
      items:['All',..._HistoryState.categories].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(),onChanged:(v)=>setState(()=>category=v!)),
    const SizedBox(height:20),
    WalletSelectionField<String>(initialValue:status,decoration:const InputDecoration(labelText:'Status'),
      items:['All','Completed','Pending','Failed'].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(),onChanged:(v)=>setState(()=>status=v!)),
    const SizedBox(height:20),WalletSelectionField<String>(initialValue:asset,decoration:const InputDecoration(labelText:'Asset'),items:[for(final v in {'All',...widget.assets,if(asset!='All')asset})DropdownMenuItem(value:v,child:Text(v))],onChanged:(v)=>setState(()=>asset=v!)),
    const SizedBox(height:20),WalletSelectionField<String>(initialValue:direction,decoration:const InputDecoration(labelText:'Direction'),items:const [DropdownMenuItem(value:'All',child:Text('All')),DropdownMenuItem(value:'in',child:Text('Incoming')),DropdownMenuItem(value:'out',child:Text('Outgoing'))],onChanged:(v)=>setState(()=>direction=v!)),
    const SizedBox(height:20),Row(children:[Expanded(child:TextField(controller:minimum,keyboardType:const TextInputType.numberWithOptions(decimal:true),decoration:const InputDecoration(labelText:'Minimum amount'))),const SizedBox(width:12),Expanded(child:TextField(controller:maximum,keyboardType:const TextInputType.numberWithOptions(decimal:true),decoration:const InputDecoration(labelText:'Maximum amount')))]),
    const SizedBox(height:20),TextField(controller:from,decoration:const InputDecoration(labelText:'From (UTC)',hintText:'YYYY-MM-DD')),
    const SizedBox(height:20),TextField(controller:to,decoration:const InputDecoration(labelText:'To (UTC)',hintText:'YYYY-MM-DD')),
    if(error!=null)Text(error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
    const SizedBox(height:28),FilledButton(onPressed:apply,child:const Text('Apply filters')),
    TextButton(onPressed:()=>Navigator.pop(context,const WalletHistoryFilter()),child:const Text('Reset filters')),
  ]);
}
class _ExportPage extends StatefulWidget {
  const _ExportPage({required this.dio,required this.baseUrl,required this.query,
    required this.accessToken,required this.authorized});
  final Dio dio;
  final String baseUrl;
  final Map<String,String> query;
  final String? Function() accessToken;
  final bool Function() authorized;
  @override State<_ExportPage> createState()=>_ExportState();
}
class _ExportState extends State<_ExportPage> {
  bool busy=false;
  String format='csv',range='Current filters';
  Map<String,String> get effectiveQuery=>{...widget.query,...walletStatementRange(range)};
  String? error;
  Future<void> share() async {
    if(busy||!widget.authorized())return;
    final token=widget.accessToken();
    setState((){busy=true;error=null;});
    try {
      final response=await widget.dio.get<List<int>>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'),'')}/v1/wallet/msnw/activity/export',
        queryParameters:{...effectiveQuery,'format':format},
        options:Options(headers:{'Authorization':'Bearer $token','Cache-Control':'no-store'},
          responseType:ResponseType.bytes,followRedirects:false,receiveTimeout:const Duration(seconds:30)));
      if(!mounted||!widget.authorized()||widget.accessToken()!=token)return;
      final bytes=response.data;
      if(bytes==null||bytes.isEmpty||bytes.length>8000000||
        !response.headers.value('content-type').toString().startsWith(format=='csv'?'text/csv':'application/pdf'))throw const FormatException('Invalid statement');
      await SharePlus.instance.share(ShareParams(files:[XFile.fromData(Uint8List.fromList(bytes),mimeType:format=='csv'?'text/csv':'application/pdf')],
        fileNameOverrides:['masanawa-transactions-${effectiveQuery['from']??'all'}-${effectiveQuery['to']??DateTime.now().toUtc().toIso8601String().substring(0,10)}.$format'],title:'Masanawa transactions'));
    } catch(failure) {
      if(mounted&&widget.authorized())setState(()=>error=failure is DioException&&failure.response?.statusCode==413?
        'Too many transactions match this format. Choose a smaller date range.':'Couldn’t export transactions. Please retry.');
    } finally {if(mounted)setState(()=>busy=false);}
  }
  @override Widget build(BuildContext context)=>ListView(padding:const EdgeInsets.all(24),children:[
    const Icon(Icons.description_outlined,size:48),const SizedBox(height:20),
    Text('All matching transactions',style:Theme.of(context).textTheme.titleLarge),
    const SizedBox(height:20),WalletSelectionField<String>(initialValue:range,decoration:const InputDecoration(labelText:'Date range'),items:[for(final label in ['Current filters','Today','Last 7 days','This month','Last month'])DropdownMenuItem(value:label,child:Text(label))],onChanged:busy?null:(value)=>setState(()=>range=value!)),
    const SizedBox(height:12),Text('${effectiveQuery['from']??'All dates'} → ${effectiveQuery['to']??'Today'}'),
    const SizedBox(height:20),WalletSelectionField<String>(initialValue:format,decoration:const InputDecoration(labelText:'File format'),
      items:const [DropdownMenuItem(value:'csv',child:Text('CSV spreadsheet')),DropdownMenuItem(value:'pdf',child:Text('PDF statement'))],
      onChanged:busy?null:(value)=>setState(()=>format=value!)),

    const SizedBox(height:24),if(error!=null)Text(error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
    if(busy)const LinearProgressIndicator(),
    FilledButton.icon(onPressed:busy?null:share,icon:const Icon(Icons.ios_share),label:const Text('Save or share statement')),
  ]);
}

/// Inclusive UTC date filters accepted by the canonical statement endpoint.
Map<String,String> walletStatementRange(String preset,{DateTime? now}){
 final day=(now??DateTime.now()).toUtc();
 final today=DateTime.utc(day.year,day.month,day.day);
 String date(DateTime d)=>d.toIso8601String().substring(0,10);
 final start=switch(preset){
  'Today'=>today,'Last 7 days'=>today.subtract(const Duration(days:6)),
  'This month'=>DateTime.utc(day.year,day.month),
  'Last month'=>DateTime.utc(day.year,day.month-1),_=>null,
 };
 if(start==null)return {};
 final end=preset=='Last month'?DateTime.utc(day.year,day.month).subtract(const Duration(days:1)):today;
 return {'from':date(start),'to':date(end)};
}

String walletTransactionStatus(String status)=>const {
 'backing_pending':'Awaiting MSNW settlement','reserved':'Funds reserved',
 'processing':'Processing','provider_pending':'Processing','submitted':'Processing',
 'awaiting_payment':'Awaiting payment','payment_claimed':'Awaiting seller confirmation',
 'disputed':'Under review','recorded':'Historical record',
}[status]??status.replaceAll('_',' ');
String? walletTransactionStatusDetail(String status)=>const {
 'backing_pending':'Payment verified. MSNW is not available until settlement finishes.',
 'reserved':'Held for this transaction; not available to spend.',
 'processing':'Awaiting the provider’s final result.',
 'provider_pending':'Awaiting the provider’s final result.',
 'submitted':'Awaiting the provider’s final result.',
 'reversed':'The original transaction was reversed.',
 'refunded':'Funds were returned by the recorded refund.',
 'failed':'The transaction did not complete. Check the receipt before retrying.',
 'payment_claimed':'The buyer reported payment. Seller bank confirmation is still required.',
 'disputed':'Support is reviewing this order. Escrow remains protected.',
}[status];

bool walletAmountInRange(String amount,String? minimum,String? maximum){
 BigInt scaled(String value){final p=value.split('.');return BigInt.parse(p[0]+(p.length>1?p[1]:'').padRight(36,'0'));}
 try{final n=scaled(amount);return (minimum==null||n>=scaled(minimum))&&(maximum==null||n<=scaled(maximum));}catch(_){return false;}
}
