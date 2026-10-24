import 'package:dio/dio.dart';
import 'dart:async';
import 'package:flutter/material.dart';

const _categories = {
  'no_payment': 'Bank payment not received',
  'asset_not_received': 'MSNW not received',
  'wrong_amount': 'Wrong payment amount',
  'wrong_recipient': 'Wrong bank or recipient',
  'abuse': 'Abuse or scam attempt',
  'other': 'Other',
};

class P2pCaseContext extends StatefulWidget {
  const P2pCaseContext({
    super.key,
    required this.orderId,
    required this.currentSession,
    required this.load,
    required this.copyEvidence,
    this.openSupportRequests,
  });
  final Future<void> Function(BuildContext)? openSupportRequests;
  final String orderId;
  final String? Function() currentSession;
  final Future<Map<String, dynamic>> Function() load;
  final Future<void> Function(String evidenceId) copyEvidence;
  @override
  State<P2pCaseContext> createState() => _P2pCaseContextState();
}

class _P2pCaseContextState extends State<P2pCaseContext> {
  String? _session, _error;
  Map<String, dynamic>? _file;
  bool _gone = false, _loading = false, _copying = false;
  Timer? _fence;
  bool get _same =>
      !_gone && _session != null && widget.currentSession() == _session;
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
    if (!mounted || _gone) return;
    _fence?.cancel();
    setState(() {
      _gone = true;
      _file = null;
      _error = null;
    });
  }

  Future<void> _load() async {
    if (!_same) {
      _clear();
      return;
    }
    if (_loading) return;
    setState(() {
      _loading = true;
      _file = null;
      _error = null;
    });
    try {
      final file = await widget.load().timeout(const Duration(seconds: 20));
      if (!mounted || !_same) return;
      if (file['order'] is! Map ||
          (file['order'] as Map)['state'] is! String ||
          file['events'] is! List ||
          file['evidence'] is! List)
        throw const FormatException();
      for (final event in file['events'] as List) {
        if (event is! Map ||
            event['action'] is! String ||
            event['to_state'] is! String ||
            event['actor_id'] is! String)
          throw const FormatException();
      }
      for (final evidence in file['evidence'] as List) {
        if (evidence is! Map ||
            evidence['evidence_id'] is! String ||
            evidence['submitted_by'] is! String ||
            evidence['sha256'] is! String)
          throw const FormatException();
      }
      final opening = file['disputeSubmission'], late = file['latePayment'];
      if (opening != null &&
          (opening is! Map ||
              !_categories.containsKey(opening['category']) ||
              opening['details'] is! String ||
              opening['submission_id'] is! String))
        throw const FormatException();
      if (late != null && (late is! Map || late['events'] is! List))
        throw const FormatException();
      setState(() => _file = file);
    } catch (error) {
      if(error is DioException&&[401,403,404].contains(error.response?.statusCode)){_clear();return;}
      if (mounted && _same)
        setState(() => _error = 'Case file unavailable. Reopen or retry.');
    } finally {
      if (mounted && _same) setState(() => _loading = false);
    }
  }

  Future<void> _copy(String id) async {
    if (!_same || _copying) return;
    setState(() => _copying = true);
    try {
      await widget.copyEvidence(id);
    } catch (error) {
      if(error is DioException&&[401,403,404].contains(error.response?.statusCode)){_clear();return;}
      if (mounted && _same)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Evidence link unavailable. Reopen the case and retry.',
            ),
          ),
        );
    } finally {
      if (mounted && _same) setState(() => _copying = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_same)
      return const Center(
        child: Text('Admin session changed. Reopen the case.'),
      );
    final file = _file,
        opening = file?['disputeSubmission'] as Map?,
        late = file?['latePayment'] as Map?;
    final events = file?['events'] as List? ?? const [],
        evidence = file?['evidence'] as List? ?? const [];
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        Text(
          'Escrow audit · ${widget.orderId}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        OutlinedButton(
          onPressed: _loading || _copying ? null : _load,
          child: const Text('Refresh case context'),
        ),
        if (_loading) const LinearProgressIndicator(),
        if (_error != null) Text(_error!),
        if (file != null) ...[
          Text('State: ${(file['order'] as Map)['state']}'),
          if(widget.openSupportRequests!=null)OutlinedButton(onPressed:_loading||_copying?null:()=>widget.openSupportRequests!(context),child:const Text('Evidence requests and responses')),
          const Text(
            'Payment is not provider-verified. A screenshot or buyer claim alone must never authorize a release.',
          ),
          if (opening != null) ...[
            const SizedBox(height: 12),
            Text(
              'Dispute reason: ${_categories[opening['category']] ?? 'Other'}',
            ),
            SelectableText('${opening['details']}'),
            Text('Original report: ${opening['submission_id']}'),
          ],
          if (late != null) ...[
            const SizedBox(height: 12),
            Text('Late-payment appeal: ${late['state']}'),
            Text('Buyer report: ${late['buyer_reason']}'),
            if (late['operator_note'] != null)
              Text('Operator note: ${late['operator_note']}'),
            for (final event in late['events'] as List? ?? const [])
              ListTile(
                title: Text('${event['action']}'),
                subtitle: Text('${event['explanation']}'),
              ),
          ],
          const SizedBox(height: 12),
          Text('Evidence references (${evidence.length})'),
          if (evidence.isEmpty) const Text('No evidence attached.'),
          for (final entry in evidence)
            ListTile(
              leading: const Icon(Icons.attachment_outlined),
              title: Text('Evidence ${entry['evidence_id']}'),
              subtitle: Text(
                'Submitted by ${entry['submitted_by']}\nSHA-256: ${entry['sha256']}',
              ),
              trailing: IconButton(
                onPressed: _copying
                    ? null
                    : () => _copy('${entry['evidence_id']}'),
                tooltip: 'Copy 60-second private evidence link',
                icon: const Icon(Icons.copy_outlined),
              ),
            ),
          const SizedBox(height: 12),
          Text('Audit events (${events.length})'),
          if (events.isEmpty) const Text('No recorded state changes.'),
          for (final event in events)
            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: Text('${event['action']}'),
              subtitle: Text(
                '${event['from_state']} → ${event['to_state']}\nActor: ${event['actor_id']}\nReason: ${event['reason'] ?? '—'}',
              ),
            ),
        ],
      ],
    );
  }
}
