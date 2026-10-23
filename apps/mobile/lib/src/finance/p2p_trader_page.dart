import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Public context for a presently eligible ad. Buying returns to the existing
/// immutable quote/review journey; this page never submits an order.
class P2pTraderPage extends StatefulWidget {
  const P2pTraderPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.load,
    required this.formatMsnw,
    required this.formatNgn,
  });
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function(String? cursor) load;
  final String Function(Object?) formatMsnw;
  final String Function(Object?) formatNgn;
  @override
  State<P2pTraderPage> createState() => _P2pTraderPageState();
}

class _P2pTraderPageState extends State<P2pTraderPage> {
  final _offers = <String, Map<String, dynamic>>{};
  Map<String, dynamic>? _trader;
  String? _cursor, _error;
  bool _loading = false, _restricted = false, _gone = false;
  int _generation = 0;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
    _load();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same) _clearAccount();
    });
  }

  void _clearAccount() {
    if (!mounted || _gone) return;
    _fence?.cancel();
    _generation++;
    setState(() {
      _gone = true;
      _trader = null;
      _offers.clear();
      _error = null;
      _cursor = null;
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  Future<void> _load({bool older = false}) async {
    if (!_same) {
      _clearAccount();
      return;
    }
    if (_loading || (older && _cursor == null)) return;
    final generation = ++_generation;
    setState(() => _loading = true);
    try {
      final data = await widget
          .load(older ? _cursor : null)
          .timeout(const Duration(seconds: 20));
      if (!mounted || !_same || generation != _generation) return;
      final trader = data['trader'], items = data['items'];
      if (trader is! Map ||
          items is! List ||
          trader['windowDays'] != 30 ||
          trader['completedOrders30d'] is! int ||
          trader['closedOrders30d'] is! int ||
          (trader['completedOrders30d'] as int) < 0 ||
          (trader['closedOrders30d'] as int) <
              (trader['completedOrders30d'] as int) ||
          DateTime.tryParse('${trader['asOf']}') == null ||
          (data['nextCursor'] != null && data['nextCursor'] is! String)) {
        throw const FormatException('Invalid trader context');
      }
      final parsed = <String, Map<String, dynamic>>{};
      for (final raw in items) {
        if (raw is! Map ||
            raw['offer_id'] is! String ||
            !RegExp(
              r'^[1-9][0-9]*$',
            ).hasMatch('${raw['rate_kobo_per_msnw']}') ||
            !RegExp(r'^[1-9][0-9]*$').hasMatch('${raw['remaining_micro']}')) {
          throw const FormatException('Invalid ad');
        }
        parsed[raw['offer_id'] as String] = Map<String, dynamic>.from(raw);
      }
      setState(() {
        if (!older) _offers.clear();
        _offers.addAll(parsed);
        _trader = Map<String, dynamic>.from(trader);
        _cursor = data['nextCursor'] as String?;
        _error = null;
        _restricted = false;
      });
    } catch (error) {
      if (mounted && _same && generation == _generation) {
        setState(() {
          if (error is DioException &&
              const {401, 403, 404}.contains(error.response?.statusCode)) {
            _offers.clear();
            _trader = null;
            _cursor = null;
            _restricted = true;
            _error = 'This trader is unavailable for this account.';
          } else {
            _error =
                'Could not refresh trader details. Check your connection and retry.';
          }
        });
      }
    } finally {
      if (mounted && _same && generation == _generation) {
        setState(() => _loading = false);
      }
      if (!_same) _clearAccount();
    }
  }

  String get _name {
    final raw = _trader?['displayName'];
    if (raw is! String || raw.trim().isEmpty) return 'Masanawa trader';
    final name = raw.trim().replaceAll(RegExp(r'\s+'), ' ');
    return name.length > 80 ? '${name.substring(0, 80)}…' : name;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Trader profile'),
      actions: [
        IconButton(
          tooltip: 'Refresh trader',
          onPressed: _loading || !_same ? null : () => _load(),
          icon: const Icon(Icons.refresh),
        ),
      ],
    ),
    body: !_same
        ? const Center(
            child: Text('Trader profile closed after account change.'),
          )
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (_error != null) ...[
                Semantics(liveRegion: true, child: Text(_error!)),
                TextButton(
                  onPressed: _loading ? null : () => _load(),
                  child: const Text('Retry'),
                ),
              ],
              if (_loading) const LinearProgressIndicator(),
              if (_trader != null && !_restricted) ...[
                const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: CircleAvatar(child: Icon(Icons.person_outline)),
                ),
                const SizedBox(height: 12),
                Text(_name, style: Theme.of(context).textTheme.headlineSmall),
                const Text('Public profile display name'),
                const SizedBox(height: 16),
                Text(
                  'Trading history',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if ((_trader!['closedOrders30d'] as int) < 5)
                  Text(
                    'Not enough trading history · ${_trader!['closedOrders30d']} closed orders',
                  )
                else
                  Text(
                    '${_trader!['completedOrders30d']} completed / ${_trader!['closedOrders30d']} closed orders',
                  ),
                const Text(
                  'Orders opened in the last 30 days. Closed includes completed, cancelled and expired orders.',
                ),
                const Text('Trading history does not guarantee payment.'),
                Text(
                  'As of ${MaterialLocalizations.of(context).formatCompactDate(DateTime.parse(_trader!['asOf'] as String).toLocal())}',
                ),
                const SizedBox(height: 20),
                Text(
                  'Active MSNW ads · NGN bank transfer',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (_offers.isEmpty)
                  const Text(
                    'No eligible ads available. Refresh to check again.',
                  ),
                for (final offer in _offers.values)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.formatNgn(offer['rate_kobo_per_msnw'])} / MSNW',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '${offer['offer_side']=='buy'?'Buyer demand':'Available'} ${widget.formatMsnw(offer['remaining_micro'])}',
                          ),
                          Text(
                            'Limit ${widget.formatMsnw(offer['min_micro'])} – ${widget.formatMsnw(offer['max_micro'])}',
                          ),
                          Text('${offer['bank_name'] ?? 'Bank transfer'}'),
                          if (offer['bank_method_verified'] == true)
                            const Text('Bank method verified'),
                          FilledButton(
                            onPressed: _loading
                                ? null
                                : () {
                                    if (_same) Navigator.pop(context, offer);
                                  },
                            child: Text(offer['offer_side']=='buy'?'Review sell quote':'Review buy quote'),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (_cursor != null)
                  TextButton(
                    onPressed: _loading ? null : () => _load(older: true),
                    child: const Text('Load more ads'),
                  ),
              ],
            ],
          ),
  );
}
