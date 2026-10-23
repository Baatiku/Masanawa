import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'msnw_transaction_history.dart';

/// OPay-inspired first-screen overview of the existing canonical Wallet
/// activity endpoint. This is an informational preview, never another ledger
/// or a source of financial authority. It deliberately shows no aggregate
/// balance or synthetic success state.
class WalletRecentActivity extends StatefulWidget {
  const WalletRecentActivity({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.accountId,
    required this.currentUserId,
    required this.accessToken,
    required this.onViewAll,
    this.refreshKey = 0,
    this.hideAmounts = false,
    this.compact = false,
    this.onOpenReceipt,
  });

  final Dio dio;
  final String baseUrl;
  final String? accountId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  final VoidCallback onViewAll;
  final int refreshKey;
  final bool hideAmounts;
  final bool compact;
  final ValueChanged<String>? onOpenReceipt;

  @override
  State<WalletRecentActivity> createState() => _WalletRecentActivityState();
}

class _WalletRecentActivityState extends State<WalletRecentActivity> {
  static const _maxRows = 3;
  int _generation = 0;
  List<WalletTransaction> _entries = const [];
  bool _loading = true;
  bool _failed = false;

  bool _sameOwner(String account, String token, int generation) =>
      mounted &&
      generation == _generation &&
      widget.accountId == account &&
      widget.currentUserId() == account &&
      widget.accessToken()?.trim() == token;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(covariant WalletRecentActivity oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountId != widget.accountId ||
        oldWidget.refreshKey != widget.refreshKey) {
      _load();
    }
  }

  @override
  void dispose() {
    _generation++;
    super.dispose();
  }

  Future<void> _load() async {
    final generation = ++_generation;
    final account = widget.accountId;
    final token = widget.accessToken()?.trim();
    setState(() {
      _entries = const []; // Never retain another account's private activity.
      _loading = account != null;
      _failed = false;
    });
    if (account == null) return;
    if (widget.currentUserId() != account || token == null || token.isEmpty) {
      if (mounted && generation == _generation) {
        setState(() {
          _loading = false;
          _failed = true;
        });
      }
      return;
    }
    try {
      final response = await widget.dio
          .get<dynamic>(
            '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/msnw/activity',
            queryParameters: const {'limit': '3'},
            options: Options(
              headers: {
                'Authorization': 'Bearer $token',
                'Cache-Control': 'no-store',
              },
              followRedirects: false,
              receiveTimeout: const Duration(seconds: 8),
              sendTimeout: const Duration(seconds: 8),
            ),
          )
          .timeout(const Duration(seconds: 9));
      final data = response.data;
      if (data is! Map ||
          data['items'] is! List ||
          (data['items'] as List).length > _maxRows) {
        throw const FormatException('Invalid activity preview');
      }
      final items = (data['items'] as List).map(parseWalletActivity).toList();
      if (!_sameOwner(account, token, generation)) return;
      setState(() {
        _entries = items;
        _loading = false;
      });
    } catch (_) {
      if (!_sameOwner(account, token, generation)) return;
      setState(() {
        _entries = const [];
        _loading = false;
        _failed = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final account = widget.accountId;
    final permitted =
        account != null &&
        widget.currentUserId() == account &&
        widget.accessToken()?.trim().isNotEmpty == true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if(!widget.compact) ...[
          Row(children:[
            Expanded(child:Text('Recent activity',
              style:Theme.of(context).textTheme.titleMedium)),
            TextButton(onPressed:permitted?widget.onViewAll:null,
              child:const Text('View all')),
          ]),
          const Text('Latest recorded Wallet activity. See Transactions for filters and full details.',
            style:TextStyle(fontSize:12)),
        ],
        if (!permitted)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('Sign in to see your Wallet activity.'),
          )
        else if (_loading)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: LinearProgressIndicator(minHeight: 2),
          )
        else if (_failed)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.cloud_off_outlined),
            title: const Text('Activity unavailable'),
            subtitle: const Text('No transaction status has been assumed.'),
            trailing: TextButton(onPressed: _load, child: const Text('Retry')),
          )
        else if (_entries.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('No recorded activity yet.'),
          )
        else
          for (final item in _entries)
            ListTile(
              key: ValueKey('recent-${item.id}'),
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                item.incoming ? Icons.south_west : Icons.north_east,
                semanticLabel: item.incoming ? 'Incoming' : 'Outgoing',
              ),
              title: Text(
                item.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '${item.category} · ${item.status}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: SizedBox(
                width: 112,
                child: Semantics(
                  label: widget.hideAmounts
                      ? 'Amount hidden'
                      : item.displayAmount,
                  child: Text(
                    widget.hideAmounts ? '••••' : item.displayAmount,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.end,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onTap: permitted?(){
                if(widget.onOpenReceipt!=null){widget.onOpenReceipt!(item.id);}
                else{widget.onViewAll();}
              }:null,
            ),
      ],
    );
  }
}
