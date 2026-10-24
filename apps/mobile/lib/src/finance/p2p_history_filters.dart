import 'dart:async';
import 'package:flutter/material.dart';

class P2pHistoryFilters {
  const P2pHistoryFilters({
    this.status = 'all',
    this.direction = 'all',
    this.fromDate = '',
    this.toDate = '',
  });
  final String status, direction, fromDate, toDate;
  bool get active =>
      status != 'all' ||
      direction != 'all' ||
      fromDate.isNotEmpty ||
      toDate.isNotEmpty;
  Map<String, String> get query => {
    if (status != 'all') 'status': status,
    if (direction != 'all') 'direction': direction,
    if (fromDate.isNotEmpty) 'fromDate': fromDate,
    if (toDate.isNotEmpty) 'toDate': toDate,
  };
}

class P2pHistoryFilterPage extends StatefulWidget {
  const P2pHistoryFilterPage({
    super.key,
    required this.ads,
    required this.initial,
    required this.expectedUserId,
    required this.currentUserId,
  });
  final bool ads;
  final P2pHistoryFilters initial;
  final String expectedUserId;
  final String? Function() currentUserId;
  @override
  State<P2pHistoryFilterPage> createState() => _P2pHistoryFilterPageState();
}

class _P2pHistoryFilterPageState extends State<P2pHistoryFilterPage> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _from, _to;
  late String _status, _direction;
  bool _gone = false;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
    _from = TextEditingController(text: widget.initial.fromDate);
    _to = TextEditingController(text: widget.initial.toDate);
    _status = widget.initial.status;
    _direction = widget.initial.direction;
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same && mounted) {
        _fence?.cancel();
        _from.clear();
        _to.clear();
        setState(() => _gone = true);
      }
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    _from.dispose();
    _to.dispose();
    super.dispose();
  }

  String? _date(String? raw) {
    final s = (raw ?? '').trim();
    if (s.isEmpty) return null;
    final date = DateTime.tryParse('${s}T00:00:00Z');
    return !RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(s) ||
            date == null ||
            date.toIso8601String().substring(0, 10) != s ||
            s.compareTo('0001-01-01') < 0
        ? 'Use a valid YYYY-MM-DD date.'
        : null;
  }

  void _apply() {
    if (!_same || !_form.currentState!.validate()) return;
    Navigator.pop(
      context,
      P2pHistoryFilters(
        status: _status,
        direction: _direction,
        fromDate: _from.text.trim(),
        toDate: _to.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.ads ? 'Filter my ads' : 'Filter orders')),
    body: !_same
        ? const Center(child: Text('Access changed. Reopen P2P.'))
        : Form(
            key: _form,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text('MSNW · NGN · Bank transfer'),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _status,
                  isExpanded: true,
                  itemHeight: null,
                  decoration: const InputDecoration(labelText: 'Status'),
                  items: [
                    for (final pair
                        in (widget.ads
                                ? const {
                                    'all': 'All statuses',
                                    'active': 'Active',
                                    'paused': 'Paused',
                                    'closed': 'Closed',
                                  }
                                : const {
                                    'all': 'All statuses',
                                    'awaiting_payment': 'Awaiting payment',
                                    'payment_claimed': 'Payment claimed',
                                    'disputed': 'Disputed',
                                    'release_pending': 'Release pending',
                                    'refund_pending': 'Refund pending',
                                    'completed': 'Completed',
                                    'cancelled': 'Cancelled',
                                    'expired': 'Expired',
                                  })
                            .entries)
                      DropdownMenuItem(
                        value: pair.key,
                        child: Text(pair.value),
                      ),
                  ],
                  onChanged: (v) => _status = v!,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _direction,
                  isExpanded: true,
                  itemHeight: null,
                  decoration: InputDecoration(
                    labelText: widget.ads
                        ? 'Ad direction'
                        : 'Your trade direction',
                  ),
                  items: const [
                    DropdownMenuItem(value: 'all', child: Text('Buy and sell')),
                    DropdownMenuItem(value: 'buy', child: Text('Buy')),
                    DropdownMenuItem(value: 'sell', child: Text('Sell')),
                  ],
                  onChanged: (v) => _direction = v!,
                ),
                const SizedBox(height: 16),
                const Text('Opening dates (UTC). Both dates are included.'),
                TextFormField(
                  controller: _from,
                  decoration: const InputDecoration(
                    labelText: 'From date',
                    hintText: 'YYYY-MM-DD',
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: _date,
                ),
                TextFormField(
                  controller: _to,
                  decoration: const InputDecoration(
                    labelText: 'To date',
                    hintText: 'YYYY-MM-DD',
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: (v) {
                    final error = _date(v);
                    if (error != null) return error;
                    final from = _from.text.trim(), to = (v ?? '').trim();
                    return from.isNotEmpty &&
                            to.isNotEmpty &&
                            _date(from) == null &&
                            from.compareTo(to) > 0
                        ? 'End date must be on or after start date.'
                        : null;
                  },
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: _apply,
                  child: const Text('Apply filters'),
                ),
                TextButton(
                  onPressed: () {
                    if (_same)
                      Navigator.pop(context, const P2pHistoryFilters());
                  },
                  child: const Text('Reset filters'),
                ),
              ],
            ),
          ),
  );
}
