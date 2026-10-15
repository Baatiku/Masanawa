import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Adds real persisted P2P order references to the existing Wallet activity
/// surface without ever treating uncompleted orders as spendable MSNW.
class MsnwP2pActivity extends StatefulWidget {
  const MsnwP2pActivity({super.key,required this.dio,required this.baseUrl,
    required this.expectedUserId,required this.currentUserId,
    required this.accessToken,required this.onOpenP2p});
  final Dio dio;
  final String baseUrl,expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  final VoidCallback onOpenP2p;
  @override State<MsnwP2pActivity> createState()=>_MsnwP2pActivityState();
}
class _MsnwP2pActivityState extends State<MsnwP2pActivity> {
  late Future<List<Map<String,dynamic>>> _future=_load();
  bool get _authorized=>widget.currentUserId()==widget.expectedUserId &&
    widget.accessToken()?.isNotEmpty==true;
  Future<List<Map<String,dynamic>>> _load() async {
    if(!_authorized)throw StateError('Session changed');
    final response=await widget.dio.get<dynamic>(
      '${widget.baseUrl}/v1/wallet/msnw/p2p/orders',
      options:Options(headers:{
        'Authorization':'Bearer ${widget.accessToken()}',
        'Cache-Control':'no-store',
      }),
    );
    if(!_authorized)throw StateError('Session changed');
    final data=Map<String,dynamic>.from(response.data as Map);
    return (data['items'] as List<dynamic>? ?? [])
      .take(5).map((item)=>Map<String,dynamic>.from(item as Map)).toList();
  }
  void _retry()=>setState(()=>_future=_load());
  @override void didUpdateWidget(covariant MsnwP2pActivity oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.expectedUserId!=widget.expectedUserId)_retry();
  }
  String _amount(String? raw) {
    final number=BigInt.tryParse(raw??'');
    if(number==null)return 'Unavailable';
    final whole=number~/BigInt.from(1000000);
    final fraction=(number%BigInt.from(1000000))
      .toString().padLeft(6,'0').replaceFirst(RegExp(r'0+$'),'');
    return fraction.isEmpty?'$whole MSNW':'$whole.$fraction MSNW';
  }
  @override Widget build(BuildContext context) {
    if(!_authorized)return const SizedBox.shrink();
    return FutureBuilder<List<Map<String,dynamic>>>(future:_future,
      builder:(context,result){
        if(result.connectionState!=ConnectionState.done)return const ListTile(
          leading:SizedBox(width:20,height:20,child:CircularProgressIndicator(strokeWidth:2)),
          title:Text('Loading P2P activity…'));
        if(result.hasError)return ListTile(
          title:const Text('P2P activity unavailable'),
          subtitle:const Text('Connection failed or sign-in expired.'),
          trailing:TextButton(onPressed:_retry,child:const Text('Retry')));
        final orders=result.data??[];
        if(orders.isEmpty)return ListTile(
          title:const Text('No P2P orders yet'),
          trailing:TextButton(onPressed:widget.onOpenP2p,child:const Text('Explore')));
        return Column(children:[
          for(final order in orders) ListTile(
            leading:const Icon(Icons.swap_horiz_outlined),
            title:Text('${order['seller_id']==widget.expectedUserId?'Sell':'Buy'} '
              '${_amount('${order['amount_micro']}')}'),
            subtitle:Text('P2P · ${order['state'] ?? 'Unknown'} · '
              'Receipt: ${order['receipt_reference'] ?? 'Not settled'}'),
            onTap:widget.onOpenP2p,
            trailing:const Icon(Icons.chevron_right),
          ),
        ]);
      },
    );
  }
}
