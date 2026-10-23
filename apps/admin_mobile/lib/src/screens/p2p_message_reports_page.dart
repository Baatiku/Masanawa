import 'dart:async';

import 'package:flutter/material.dart';

/// Operator-only queue. Gateway validates the existing admin session each time.
class P2pMessageReportsPage extends StatefulWidget {
  const P2pMessageReportsPage({
    super.key,
    required this.load,
    required this.review,
    this.currentSession,
  });
  final String? Function()? currentSession;
  final Future<Map<String, dynamic>> Function() load;
  final Future<void> Function(
    String id,
    String decision,
    String reason,
    int version,
  )
  review;
  @override
  State<P2pMessageReportsPage> createState() => _P2pMessageReportsPageState();
}

class _P2pMessageReportsPageState extends State<P2pMessageReportsPage> {
  late Future<Map<String, dynamic>> _queue = _load();
  Future<Map<String, dynamic>> _load() async {
    try {
      return await widget.load();
    } catch (_) {
      return {'loadError': true};
    }
  }

  bool _busy = false;
  bool _revoked = false;
  String? _session;
  Timer? _fence;
  bool get _same =>
      !_revoked &&
      (widget.currentSession == null || widget.currentSession!() == _session);
  @override
  void initState() {
    super.initState();
    _session = widget.currentSession?.call();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same && mounted) {
        _fence?.cancel();
        setState(() {
          _revoked = true;
          _queue = Future.value({'items': <dynamic>[]});
        });
      }
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    super.dispose();
  }

  void _refresh() {
    final next = _load();
    setState(() {
      _queue = next;
    });
  }

  Future<void> _review(Map report, String decision) async {
    var reason = '';
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, update) => AlertDialog(
          title: Text(
            decision == 'remove'
                ? 'Remove reported message?'
                : 'Dismiss report?',
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'This changes discussion visibility only. Original text stays in restricted support evidence. Escrow is unchanged.',
                ),
                TextField(
                  maxLength: 2000,
                  minLines: 2,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'Private review reason (10–2000 characters)',
                  ),
                  onChanged: (v) => update(() => reason = v.trim()),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: reason.runes.length < 10
                  ? null
                  : () => Navigator.pop(ctx, true),
              child: const Text('Confirm review'),
            ),
          ],
        ),
      ),
    );
    if (confirmed != true || !mounted || !_same) return;
    setState(() => _busy = true);
    try {
      await widget.review(
        report['report_id'] as String,
        decision,
        reason,
        report['version'] as int,
      );
      if (mounted && _same) _refresh();
    } catch (_) {
      if (mounted) {
        // A lost response can mean accepted. Reload persisted state before another decision.
        _refresh();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Review outcome unknown or stale. Reload the queue before retrying.',
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Reported P2P messages'),
      actions: [
        IconButton(
          tooltip: 'Refresh reports',
          onPressed: _busy || !_same ? null : _refresh,
          icon: const Icon(Icons.refresh),
        ),
      ],
    ),
    body: !_same
        ? const Center(child: Text('Reports unavailable for this session.'))
        : FutureBuilder<Map<String, dynamic>>(
            future: _queue,
            builder: (context, s) {
              // Never render the old privileged snapshot during refresh or after auth failure.
              if (s.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (s.hasError || s.data?['loadError'] == true) {
                return Center(
                  child: TextButton(
                    onPressed: _refresh,
                    child: const Text('Reports unavailable. Retry'),
                  ),
                );
              }
              final items = (s.data?['items'] as List?) ?? [];
              if (items.isEmpty) {
                return const Center(child: Text('No open message reports'));
              }
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text(
                    'Private staff evidence. Messages and screenshots are not payment verification.',
                  ),
                  for (final raw in items)
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order ${(raw as Map)['order_id']}'),
                            Text('Category: ${raw['category']}'),
                            SelectableText('${raw['body']}'),
                            if (raw['removed_at'] != null)
                              const Text('Already hidden from participants'),
                            Text('Report: ${raw['details']}'),
                            Text('Received: ${raw['created_at']}'),
                            Wrap(
                              spacing: 8,
                              children: [
                                OutlinedButton(
                                  onPressed: _busy
                                      ? null
                                      : () => _review(raw, 'dismiss'),
                                  child: const Text('Dismiss'),
                                ),
                                FilledButton(
                                  onPressed: _busy
                                      ? null
                                      : () => _review(raw, 'remove'),
                                  child: const Text('Remove message'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (s.data?['hasMore'] == true)
                    const Text(
                      'More reports remain. Review these and refresh to continue.',
                    ),
                ],
              );
            },
          ),
  );
}
