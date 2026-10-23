import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Availability of verified methods, never an editor for bank instructions.
class P2pMethodsPage extends StatefulWidget {
  const P2pMethodsPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.load,
    required this.disable,
    this.rename,
    this.prefer,
    this.archive,
  });
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function() load;
  final Future<void> Function(String methodId) disable;
  final Future<void> Function(String methodId, String? label)? rename;
  final Future<void> Function(String methodId)? prefer, archive;
  @override
  State<P2pMethodsPage> createState() => _P2pMethodsPageState();
}

class _P2pMethodsPageState extends State<P2pMethodsPage> {
  List<Map<String, dynamic>> _items = [];
  bool _loading = false, _busy = false, _gone = false;
  String? _error;
  int _generation = 0;
  Timer? _fence;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  @override
  void initState() {
    super.initState();
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
    if (!mounted || _gone) return;
    _fence?.cancel();
    _generation++;
    setState(() {
      _gone = true;
      _items = [];
      _error = null;
      _loading = false;
      _busy = false;
    });
  }

  Future<void> _load() async {
    if (!_same) {
      _clear();
      return;
    }
    final generation = ++_generation;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final result = await widget.load().timeout(const Duration(seconds: 20));
      if (!mounted || !_same || generation != _generation) return;
      final raw = result['items'];
      if (raw is! List) throw const FormatException();
      final items = <Map<String, dynamic>>[];
      for (final value in raw) {
        if (value is! Map ||
            value['method_id'] is! String ||
            value['bank_name'] is! String ||
            !RegExp(r'^[0-9]{4}$').hasMatch('${value['account_last_four']}') ||
            DateTime.tryParse('${value['verified_at']}') == null ||
            (value['disabled_at'] != null &&
                DateTime.tryParse('${value['disabled_at']}') == null))
          throw const FormatException();
        items.add(Map<String, dynamic>.from(value));
      }
      setState(() => _items = items);
    } catch (error) {
      if (mounted && _same && generation == _generation)
        setState(() {
          if (error is DioException &&
              [401, 403].contains(error.response?.statusCode))
            _items = [];
          _error =
              'Bank methods could not be checked. Retry before making changes.';
        });
    } finally {
      if (mounted && _same && generation == _generation)
        setState(() => _loading = false);
    }
  }

  Future<void> _disable(Map<String, dynamic> method) async {
    if (_busy || _loading || !_same) return;
    final owner = widget.expectedUserId;
    bool authorized() => mounted && _same && widget.expectedUserId == owner;
    setState(() => _busy = true);
    try {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Deactivate this bank method?'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${method['bank_name']} · ••••${method['account_last_four']}',
                ),
                const SizedBox(height: 12),
                const Text(
                  'New trades and ads cannot use this method. Existing orders keep their original bank instructions and deadlines. Deactivation does not cancel an order or move funds. Verify the bank again to use it in future.',
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Keep active'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Deactivate'),
            ),
          ],
        ),
      );
      if (confirmed != true || !authorized()) return;
      // A lost result retries the same convergent method URI, never a new identity.
      await widget
          .disable('${method['method_id']}')
          .timeout(const Duration(seconds: 20));
      if (!authorized()) return;
      await _load();
    } catch (error) {
      if (authorized())
        setState(() {
          if (error is DioException &&
              [401, 403].contains(error.response?.statusCode))
            _items = [];
          _error =
              'Deactivation is not confirmed. Check bank methods, or retry the same method.';
        });
    } finally {
      if (authorized()) setState(() => _busy = false);
    }
  }

  Future<void> _update(Map<String, dynamic> method, String operation) async {
    if (_busy || _loading || !_same) return;
    final owner = widget.expectedUserId;
    bool authorized() => mounted && _same && widget.expectedUserId == owner;
    var label = '${method['private_label'] ?? ''}';
    final form = GlobalKey<FormState>();
    setState(() => _busy = true);
    try {
      final naming = operation == 'label', removing = operation == 'archive';
      final title = naming
          ? 'Private bank nickname'
          : removing
          ? 'Remove unused bank method?'
          : 'Use this bank by default?';
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: naming
                ? Form(
                    key: form,
                    child: TextFormField(
                      initialValue: label,
                      maxLength: 40,
                      decoration: const InputDecoration(
                        labelText: 'Private nickname',
                        helperText: 'Only you see this. Leave empty to clear.',
                      ),
                      onChanged: (v) => label = v,
                      validator: (v) {
                        final text = v ?? '';
                        return text.trim().runes.length > 40 ||
                                RegExp(
                                  r'[\x00-\x1f\x7f\u202a-\u202e\u2066-\u2069]',
                                ).hasMatch(text)
                            ? 'Use up to 40 characters without control marks.'
                            : null;
                      },
                    ),
                  )
                : Text(
                    removing
                        ? 'Remove this unused method from your saved list. Ads and orders prevent removal. Verify your bank again to use it later.'
                        : 'Prefill this verified bank for new P2P ads. Review the bank before publishing. Existing ads and accepted orders keep their original instructions.',
                  ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                if (!naming || form.currentState!.validate())
                  Navigator.pop(ctx, true);
              },
              child: Text(
                naming
                    ? 'Save nickname'
                    : removing
                    ? 'Remove method'
                    : 'Use by default',
              ),
            ),
          ],
        ),
      );
      if (confirmed != true || !authorized()) return;
      final id = '${method['method_id']}';
      if (naming) {
        await widget.rename!(id, label.trim().isEmpty ? null : label.trim())
            .timeout(const Duration(seconds: 20));
      } else if (removing) {
        await widget.archive!(id).timeout(const Duration(seconds: 20));
      } else {
        await widget.prefer!(id).timeout(const Duration(seconds: 20));
      }
      if (authorized()) await _load();
    } catch (error) {
      if (authorized())
        setState(() {
          if (error is DioException &&
              [401, 403].contains(error.response?.statusCode))
            _items = [];
          final used =
              error is DioException &&
              error.response?.data is Map &&
              (error.response!.data as Map)['error'] == 'p2p.method_in_use';
          _error = used
              ? 'This bank method is used by an ad or order. Deactivate it instead.'
              : 'The change is not confirmed. Check bank methods before retrying.';
        });
    } finally {
      if (authorized()) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('P2P bank methods')),
    body: _gone
        ? const Center(child: Text('Account changed. Reopen P2P.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Use only your own verified bank account. Do not accept third-party payments. A verified bank method is not a merchant approval or a guarantee that someone has paid.',
              ),
              const SizedBox(height: 12),
              if (_loading) const LinearProgressIndicator(),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(_error!),
                ),
              OutlinedButton.icon(
                onPressed: _loading || _busy ? null : _load,
                icon: const Icon(Icons.refresh),
                label: const Text('Check bank methods'),
              ),
              if (!_loading && _error == null && _items.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'No verified bank methods. Return to My offers to verify your own bank.',
                  ),
                ),
              for (final method in _items)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '${method['bank_name']}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text('Account ending ${method['account_last_four']}'),
                        if (method['private_label'] is String)
                          Text('Nickname: ${method['private_label']}'),
                        if (method['preferred'] == true)
                          const Text('Default for new P2P ads'),
                        Text(
                          method['disabled_at'] == null
                              ? 'Verified bank method · Active'
                              : 'Deactivated · Existing order instructions retained',
                        ),
                        if (widget.rename != null)
                          TextButton(
                            onPressed: _busy || _loading || _error != null
                                ? null
                                : () => _update(method, 'label'),
                            child: const Text('Edit private nickname'),
                          ),
                        if (widget.prefer != null &&
                            method['disabled_at'] == null &&
                            method['preferred'] != true)
                          TextButton(
                            onPressed: _busy || _loading || _error != null
                                ? null
                                : () => _update(method, 'prefer'),
                            child: const Text('Use by default'),
                          ),
                        if (widget.archive != null &&
                            method['can_archive'] == true)
                          TextButton(
                            onPressed: _busy || _loading || _error != null
                                ? null
                                : () => _update(method, 'archive'),
                            child: const Text('Remove unused method'),
                          ),
                        if (method['disabled_at'] == null)
                          TextButton(
                            onPressed: _busy || _loading || _error != null
                                ? null
                                : () => _disable(method),
                            child: const Text('Deactivate bank method'),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
  );
}
