import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models.dart';
import 'transport.dart';

/// A submission receipt, not evidence that moderation accepted or reviewed it.
class HumanReport {
  const HumanReport(this.reportId, this.messageId, this.reason, this.submittedAt);
  final String reportId;
  final String messageId;
  final String reason;
  final DateTime submittedAt;

  factory HumanReport.fromJson(Map<String, dynamic> json) {
    final id = json['reportId'], message = json['messageId'];
    final reason = json['reason'], at = json['submittedAt'];
    if (id is! String || id.isEmpty || message is! String || message.isEmpty ||
        reason is! String || reason.isEmpty || reason.length > 2000 ||
        at is! String || DateTime.tryParse(at) == null ||
        json['status'] != 'submitted') {
      throw const FormatException('Invalid report receipt');
    }
    return HumanReport(id, message, reason, DateTime.parse(at));
  }
}

class HumanReportPage {
  const HumanReportPage(this.items, this.nextCursor);
  final List<HumanReport> items;
  final String? nextCursor;

  factory HumanReportPage.fromJson(HumanJson data) {
    final raw = data['items'], cursor = data['nextCursor'];
    if (data['paginationVersion'] != 1 || raw is! List ||
        (cursor != null && (cursor is! String || cursor.isEmpty))) {
      throw const FormatException('Invalid report history');
    }
    final items = <HumanReport>[];
    final seen = <String>{};
    for (final value in raw) {
      if (value is! Map) throw const FormatException('Invalid report history');
      final item = HumanReport.fromJson(Map<String, dynamic>.from(value));
      if (!seen.add(item.reportId)) {
        throw const FormatException('Duplicate report receipt');
      }
      items.add(item);
    }
    if (cursor != null && (items.isEmpty || items.last.reportId != cursor)) {
      throw const FormatException('Invalid report continuation');
    }
    return HumanReportPage(List.unmodifiable(items), cursor as String?);
  }
}

/// Secondary screen under Communication privacy. Does not persist report reasons
/// in a device cache. Every server page is scoped to the active signed-in user.
class HumanReportHistoryScreen extends ConsumerStatefulWidget {
  const HumanReportHistoryScreen({super.key, this.fetchPage});

  /// Injected only in widget tests; production always uses the bound transport.
  final Future<HumanJson> Function(String? before)? fetchPage;

  @override
  ConsumerState<HumanReportHistoryScreen> createState() => _HumanReportHistoryState();
}

class _HumanReportHistoryState extends ConsumerState<HumanReportHistoryScreen> {
  String? _owner, _nextCursor, _error;
  HumanCommunicationTransport? _transport;
  List<HumanReport> _items = const [];
  bool _busy = false, _loaded = false;
  int _generation = 0;

  @override
  void dispose() {
    ++_generation;
    _items = const [];
    super.dispose();
  }

  void _bind() {
    final account = ref.watch(humanAccountProvider);
    final transport = widget.fetchPage == null
        ? ref.watch(humanCommunicationTransportProvider)
        : null;
    if (_owner == account && (widget.fetchPage != null || identical(_transport, transport))) return;
    _owner = account;
    _transport = transport;
    _items = const [];
    _nextCursor = null;
    _error = null;
    _busy = false;
    _loaded = false;
    final version = ++_generation;
    if (account != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _generation == version) unawaited(_load(reset: true));
      });
    }
  }

  Future<void> _load({required bool reset}) async {
    if (_busy || _owner == null) return;
    final version = ++_generation;
    final owner = _owner, transport = _transport;
    final before = reset ? null : _nextCursor;
    if (!reset && before == null) return;
    setState(() { _busy = true; _error = null; });
    try {
      final raw = await (widget.fetchPage != null
          ? widget.fetchPage!(before)
          : transport!.request('GET', '/reports',
              query: {'limit': 30, if (before != null) 'before': before}));
      final page = HumanReportPage.fromJson(raw);
      if (!mounted || version != _generation || owner != _owner ||
          (widget.fetchPage == null && (transport != _transport || !transport!.active))) return;
      if (page.nextCursor != null && page.nextCursor == before) {
        throw const FormatException('Repeated report continuation');
      }
      final existing = reset ? <HumanReport>[] : List<HumanReport>.from(_items);
      final ids = existing.map((r) => r.reportId).toSet();
      for (final item in page.items) {
        if (ids.add(item.reportId)) existing.add(item);
      }
      setState(() {
        _items = existing;
        _nextCursor = page.nextCursor;
        _loaded = true;
      });
    } catch (_) {
      if (mounted && version == _generation && owner == _owner) {
        setState(() { _error = 'Could not load report history. Reconnect and retry.'; _loaded = true; });
      }
    } finally {
      if (mounted && version == _generation && owner == _owner) {
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _bind();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My message reports'),
        actions: [
          IconButton(
            key: const Key('human-reports-refresh'),
            tooltip: 'Refresh reports',
            onPressed: _busy || _owner == null ? null : () => _load(reset: true),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: _owner == null
          ? const Center(child: Text('Sign in to view your reports.'))
          : !_loaded && _error == null
          ? const Center(child: CircularProgressIndicator())
          : _items.isEmpty && _error != null
          ? Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(_error!, textAlign: TextAlign.center),
              TextButton(key: const Key('human-reports-retry'),
                onPressed: _busy ? null : () => _load(reset: true),
                child: const Text('Retry')),
            ]))
          : _items.isEmpty
          ? const Center(child: Text('No message reports submitted yet.'))
          : ListView(
              key: const Key('human-reports-list'),
              padding: const EdgeInsets.all(12),
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('These are your submitted reports. Submission does not mean that a moderator has reviewed or resolved the issue.'),
                ),
                for (final item in _items)
                  Card(child: ListTile(
                    title: Text(item.reason, maxLines: 3, overflow: TextOverflow.ellipsis),
                    subtitle: Text('Submitted · ${item.submittedAt.toLocal()}\nReview outcome not available'),
                    isThreeLine: true,
                  )),
                if (_error != null) Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(_error!, textAlign: TextAlign.center),
                ),
                if (_nextCursor != null || _error != null)
                  Center(child: OutlinedButton(
                    key: const Key('human-reports-older'),
                    onPressed: _busy ? null : () => _load(reset: _nextCursor == null),
                    child: Text(_busy ? 'Loading…' : _error != null ? 'Retry' : 'Load older'),
                  )),
                if (_busy) const Center(child: CircularProgressIndicator()),
              ],
            ),
    );
  }
}
