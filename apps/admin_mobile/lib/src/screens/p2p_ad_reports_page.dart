import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class P2pAdReportsPage extends StatefulWidget {
  const P2pAdReportsPage({
    super.key,
    required this.currentSession,
    required this.load,
    required this.review,
  });
  final String? Function() currentSession;
  final Future<Map<String, dynamic>> Function(String? cursor, String filter)
  load;
  final Future<void> Function(
    String reportId,
    String decision,
    String reason,
    int version,
  )
  review;
  @override
  State<P2pAdReportsPage> createState() => _P2pAdReportsPageState();
}

class _P2pAdReportsPageState extends State<P2pAdReportsPage> {
  final _items = <String, Map<String, dynamic>>{};
  String? _session, _cursor, _error;
  String _filter = 'open';
  bool _writing = false;
  bool _loading = false, _busy = false, _revoked = false, _failedOlder = false;
  Timer? _fence;
  bool get _same => !_revoked && widget.currentSession() == _session;
  @override
  void initState() {
    super.initState();
    _session = widget.currentSession();
    _load();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same) _clear();
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  void _clear() {
    if (!mounted || _revoked) return;
    _fence?.cancel();
    setState(() {
      _revoked = true;
      _items.clear();
      _cursor = null;
      _error = null;
    });
  }

  Future<void> _load({bool older = false}) async {
    if (_loading || !_same || (older && _cursor == null)) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final data = await widget
          .load(older ? _cursor : null, _filter)
          .timeout(const Duration(seconds: 20));
      if (!mounted || !_same) return;
      final raw = data['items'];
      if (raw is! List ||
          (data['nextCursor'] != null && data['nextCursor'] is! String))
        throw const FormatException();
      final items = <String, Map<String, dynamic>>{};
      for (final row in raw) {
        if (row is! Map ||
            row['report_id'] is! String ||
            row['public_snapshot'] is! Map ||
            !['open', 'dismissed', 'referred'].contains(row['state']) ||
            row['version'] is! int)
          throw const FormatException();
        items['${row['report_id']}'] = Map<String, dynamic>.from(row);
      }
      setState(() {
        if (!older) _items.clear();
        _items.addAll(items);
        _cursor = data['nextCursor'] as String?;
      });
    } catch (error) {
      if (mounted && _same) {
        if (error is DioException &&
            [401, 403].contains(error.response?.statusCode)) {
          _clear();
        } else {
          setState(() {
            _failedOlder = older;
            _error = 'Ad reports could not be loaded. Retry.';
          });
        }
      }
    } finally {
      if (mounted && _same) setState(() => _loading = false);
    }
  }

  Future<void> _review(Map<String, dynamic> report, String decision) async {
    if (_busy || _loading || !_same) return;
    final form = GlobalKey<FormState>();
    var reason = '';
    setState(() => _busy = true);
    try {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(
            decision == 'dismiss'
                ? 'Dismiss ad report?'
                : 'Refer report to support?',
          ),
          content: SingleChildScrollView(
            child: Form(
              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'This records the report review. Ad availability and escrow stay unchanged. Payment disputes use the existing order workflow.',
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Private review reason',
                    ),
                    minLines: 2,
                    maxLines: 5,
                    maxLength: 2000,
                    onChanged: (v) => reason = v.trim(),
                    validator: (v) {
                      final text = (v ?? '').trim();
                      return text.runes.length < 10 ||
                              text.runes.length > 2000 ||
                              RegExp(
                                r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]',
                              ).hasMatch(text)
                          ? 'Use 10–2000 characters without control marks.'
                          : null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                if (form.currentState!.validate()) Navigator.pop(ctx, true);
              },
              child: const Text('Record review'),
            ),
          ],
        ),
      );
      if (confirmed != true || !mounted || !_same) return;
      setState(() => _writing = true);
      await widget
          .review(
            '${report['report_id']}',
            decision,
            reason,
            report['version'] as int,
          )
          .timeout(const Duration(seconds: 20));
      if (mounted && _same) await _load();
    } catch (error) {
      if (mounted && _same) {
        final independent =
            error is DioException &&
            error.response?.data is Map &&
            (error.response!.data as Map)['error'] ==
                'p2p.independent_review_required';
        if (error is DioException &&
            [401, 403].contains(error.response?.statusCode) &&
            !independent) {
          _clear();
        } else {
          setState(
            () => _error = independent
                ? 'An independent operator must review this report.'
                : 'Review is not confirmed. Refresh the queue before reviewing again.',
          );
        }
      }
    } finally {
      if (mounted && _same)
        setState(() {
          _busy = false;
          _writing = false;
        });
    }
  }

  String _amount(Object? raw, int decimals, String unit) {
    final value = BigInt.tryParse('$raw');
    if (value == null || value < BigInt.zero) return 'Unavailable';
    final scale = BigInt.from(10).pow(decimals);
    return '${value ~/ scale}.${(value % scale).toString().padLeft(decimals, '0')} $unit';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('P2P ad reports')),
    body: _revoked
        ? const Center(child: Text('Admin session changed. Reopen reports.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Wrap(
                spacing: 8,
                children: [
                  for (final pair in const {
                    'open': 'Open',
                    'reviewed': 'Reviewed',
                    'all': 'All',
                  }.entries)
                    ChoiceChip(
                      label: Text(pair.value),
                      selected: _filter == pair.key,
                      onSelected: _loading || _busy
                          ? null
                          : (_) {
                              if (_filter == pair.key) return;
                              setState(() {
                                _filter = pair.key;
                                _cursor = null;
                                _items.clear();
                              });
                              _load();
                            },
                    ),
                ],
              ),
              OutlinedButton(
                onPressed: _loading || _busy ? null : () => _load(),
                child: const Text('Refresh ad reports'),
              ),
              if (_loading || _writing) const LinearProgressIndicator(),
              if (_error != null) ...[
                Text(_error!),
                if (!_busy)
                  TextButton(
                    onPressed: _loading
                        ? null
                        : () => _load(older: _failedOlder),
                    child: const Text('Retry'),
                  ),
              ],
              if (!_loading && _error == null && _items.isEmpty)
                const Text('No ad reports in this view.'),
              for (final report in _items.values)
                Builder(
                  builder: (context) {
                    final ad = report['public_snapshot'] as Map;
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '${ad['traderName'] ?? 'Trader'} · ${ad['offerSide'] == 'buy' ? 'Buy ad' : 'Sell ad'}',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'Unit price: ${_amount(ad['rateKoboPerMsnw'], 2, 'NGN')} / MSNW',
                            ),
                            Text(
                              'Limits: ${_amount(ad['minMicro'], 6, 'MSNW')} – ${_amount(ad['maxMicro'], 6, 'MSNW')}',
                            ),
                            Text(
                              'Bank method: ${ad['bankName'] ?? 'Unavailable'}',
                            ),
                            Text(
                              'Observed: ${ad['observedAt'] ?? 'Unavailable'} · Terms ${ad['termsRevision'] ?? 'Unavailable'}',
                            ),
                            Text(
                              'Category: ${report['category']} · ${report['state']}',
                            ),
                            SelectableText('${report['details']}'),
                            SelectableText('Report: ${report['report_id']}'),
                            if (report['state'] == 'open')
                              Wrap(
                                spacing: 8,
                                children: [
                                  OutlinedButton(
                                    onPressed:
                                        _loading || _busy || _error != null
                                        ? null
                                        : () => _review(report, 'dismiss'),
                                    child: const Text('Dismiss report'),
                                  ),
                                  FilledButton(
                                    onPressed:
                                        _loading || _busy || _error != null
                                        ? null
                                        : () => _review(report, 'refer'),
                                    child: const Text('Refer to support'),
                                  ),
                                ],
                              )
                            else if (report['review_reason'] is String)
                              Text('Review: ${report['review_reason']}'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              if (_cursor != null)
                TextButton(
                  onPressed: _loading || _busy
                      ? null
                      : () => _load(older: true),
                  child: const Text('Load older reports'),
                ),
            ],
          ),
  );
}
