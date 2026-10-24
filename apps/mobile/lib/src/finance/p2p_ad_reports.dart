import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String p2pAdReportState(Object? state) => switch (state) {
  'open' => 'Received',
  'dismissed' => 'Reviewed and dismissed',
  'referred' => 'Referred for support review',
  _ => 'Check report status',
};

class P2pAdReportPage extends StatefulWidget {
  const P2pAdReportPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.recover,
    required this.submit,
  });
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function() recover;
  final Future<Map<String, dynamic>> Function(String category, String details)
  submit;
  @override
  State<P2pAdReportPage> createState() => _P2pAdReportPageState();
}

class _P2pAdReportPageState extends State<P2pAdReportPage> {
  final _form = GlobalKey<FormState>();
  String _category = 'fraud', _details = '';
  bool _loading = true, _busy = false, _gone = false, _uncertain = false;
  bool _checked = false, _unavailable = false;
  String? _error;
  Map<String, dynamic>? _receipt;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
    _check();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same && mounted) {
        _fence?.cancel();
        setState(() {
          _gone = true;
          _receipt = null;
          _details = '';
          _error = null;
        });
      }
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  Map<String, dynamic> _valid(Map<String, dynamic> data) {
    if (data['report_id'] is! String ||
        !['open', 'dismissed', 'referred'].contains(data['state']) ||
        DateTime.tryParse('${data['created_at']}') == null)
      throw const FormatException();
    return data;
  }

  void _restrict() {
    if (!mounted) return;
    _fence?.cancel();
    setState(() {
      _gone = true;
      _receipt = null;
      _details = '';
      _error = null;
    });
  }

  Future<void> _check() async {
    if (!_same) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final data = await widget.recover().timeout(const Duration(seconds: 20));
      if (mounted && _same)
        setState(() {
          _receipt = _valid(data);
          _checked = true;
        });
    } on DioException catch (error) {
      if (mounted && _same) {
        if ([401, 403].contains(error.response?.statusCode)) {
          _restrict();
        } else if (error.response?.statusCode == 404) {
          setState(() => _checked = true);
        } else {
          setState(() {
            _checked = false;
            _error = 'Report status is unavailable. Retry before sending.';
          });
        }
      }
    } catch (_) {
      if (mounted && _same)
        setState(() {
          _checked = false;
          _error = 'Report status is unavailable. Retry before sending.';
        });
    } finally {
      if (mounted && _same) setState(() => _loading = false);
    }
  }

  Future<void> _send() async {
    if (_busy ||
        !_checked ||
        _loading ||
        !_same ||
        (!_uncertain && !_form.currentState!.validate()))
      return;
    final category = _category,
        details = _details.trim(),
        owner = widget.expectedUserId;
    bool authorized() => mounted && _same && widget.expectedUserId == owner;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      if (_uncertain) {
        try {
          final saved = await widget.recover().timeout(
            const Duration(seconds: 20),
          );
          if (authorized()) setState(() => _receipt = _valid(saved));
          return;
        } on DioException catch (error) {
          if (error.response?.statusCode != 404) rethrow;
          if (!authorized()) return;
        }
      }
      final saved = await widget
          .submit(category, details)
          .timeout(const Duration(seconds: 20));
      if (authorized()) setState(() => _receipt = _valid(saved));
    } catch (error) {
      if (authorized()) {
        if (error is DioException &&
            [401, 403].contains(error.response?.statusCode)) {
          _restrict();
        } else {
          setState(() {
            final status = error is DioException
                ? error.response?.statusCode
                : null;
            _unavailable = status == 404;
            _uncertain = status == null || status >= 500;
            _error = _unavailable
                ? 'This ad is no longer available for a new report. Check for any earlier submission.'
                : status == 429
                ? 'Report limit reached. Check your reports or try again later.'
                : status == 422
                ? 'Check your report details and try again.'
                : 'The result is not confirmed. Check or retry this original report.';
          });
        }
      }
    } finally {
      if (authorized()) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Report P2P ad')),
    body: _gone
        ? const Center(child: Text('Access changed. Reopen P2P.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Reports are private to support. Leave out account numbers, passwords, codes and private payment evidence. For an accepted payment problem, use the order dispute.',
              ),
              const SizedBox(height: 12),
              if (_loading || _busy) const LinearProgressIndicator(),
              if (_error != null) Text(_error!),
              if (_receipt != null) ...[
                const Text('Report reference'),
                SelectableText('${_receipt!['report_id']}'),
                Text(p2pAdReportState(_receipt!['state'])),
                TextButton(
                  onPressed: () => Clipboard.setData(
                    ClipboardData(text: '${_receipt!['report_id']}'),
                  ),
                  child: const Text('Copy report reference'),
                ),
                OutlinedButton(
                  onPressed: _loading || _busy ? null : _check,
                  child: const Text('Refresh report status'),
                ),
              ] else if (!_loading) ...[
                if (_error != null && !_uncertain)
                  OutlinedButton(
                    onPressed: _check,
                    child: const Text('Check report status'),
                  ),
                if (!_unavailable)
                  Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        for (final item in const {
                          'fraud': 'Scam or impersonation',
                          'misleading': 'Misleading ad',
                          'offensive': 'Offensive content',
                          'other': 'Other',
                        }.entries)
                          RadioListTile<String>(
                            title: Text(item.value),
                            value: item.key,
                            groupValue: _category,
                            onChanged: _busy || _uncertain
                                ? null
                                : (v) => setState(() => _category = v!),
                          ),
                        TextFormField(
                          initialValue: _details,
                          enabled: !_busy && !_uncertain,
                          decoration: const InputDecoration(
                            labelText: 'Private report details',
                          ),
                          minLines: 3,
                          maxLines: 6,
                          maxLength: 2000,
                          onChanged: (v) => _details = v,
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
                        const SizedBox(height: 12),
                        FilledButton(
                          onPressed: _busy || !_checked ? null : _send,
                          child: Text(
                            _uncertain
                                ? 'Check or retry original report'
                                : 'Submit private report',
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ],
          ),
  );
}

class P2pMyAdReportsPage extends StatefulWidget {
  const P2pMyAdReportsPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.load,
  });
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function(String? cursor) load;
  @override
  State<P2pMyAdReportsPage> createState() => _P2pMyAdReportsPageState();
}

class _P2pMyAdReportsPageState extends State<P2pMyAdReportsPage> {
  final _items = <String, Map<String, dynamic>>{};
  bool _loading = false, _gone = false, _failedOlder = false;
  String? _cursor, _error;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
    _load();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same && mounted) {
        _fence?.cancel();
        setState(() {
          _gone = true;
          _items.clear();
          _cursor = null;
          _error = null;
        });
      }
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  Future<void> _load({bool older = false}) async {
    if (_loading || !_same || (older && _cursor == null)) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final data = await widget
          .load(older ? _cursor : null)
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
            !['open', 'dismissed', 'referred'].contains(row['state']))
          throw const FormatException();
        items['${row['report_id']}'] = Map<String, dynamic>.from(row);
      }
      setState(() {
        if (!older) _items.clear();
        _items.addAll(items);
        _cursor = data['nextCursor'] as String?;
      });
    } catch (error) {
      if (mounted && _same)
        setState(() {
          _failedOlder = older;
          if (error is DioException &&
              [401, 403].contains(error.response?.statusCode)) {
            _gone = true;
            _items.clear();
            _cursor = null;
            _fence?.cancel();
          }
          _error = 'Reports could not be checked. Retry.';
        });
    } finally {
      if (mounted && _same) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('My ad reports')),
    body: _gone
        ? const Center(child: Text('Access changed. Reopen P2P.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              OutlinedButton(
                onPressed: _loading ? null : () => _load(),
                child: const Text('Refresh reports'),
              ),
              if (_loading) const LinearProgressIndicator(),
              if (_error != null) ...[
                Text(_error!),
                TextButton(
                  onPressed: _loading ? null : () => _load(older: _failedOlder),
                  child: const Text('Retry'),
                ),
              ],
              if (!_loading && _error == null && _items.isEmpty)
                const Text('No ad reports submitted.'),
              for (final item in _items.values)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(p2pAdReportState(item['state'])),
                        SelectableText('${item['report_id']}'),
                        Text('${item['category']}'),
                        Text('${item['created_at']}'),
                        TextButton(
                          onPressed: () => Clipboard.setData(
                            ClipboardData(text: '${item['report_id']}'),
                          ),
                          child: const Text('Copy report reference'),
                        ),
                      ],
                    ),
                  ),
                ),
              if (_cursor != null)
                TextButton(
                  onPressed: _loading ? null : () => _load(older: true),
                  child: const Text('Load older reports'),
                ),
            ],
          ),
  );
}
