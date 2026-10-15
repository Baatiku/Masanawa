import 'package:flutter/material.dart';
import '../core/admin_api.dart';
import '../core/admin_rooms_api.dart';

/// Held fan replies only. Ordinary Room questions never wait for staff.
class AdminRoomDiscussionReviewPage extends StatefulWidget {
  const AdminRoomDiscussionReviewPage({super.key, required this.api});
  final AdminApi api;
  @override
  State<AdminRoomDiscussionReviewPage> createState() => _ReviewState();
}

class _ReviewState extends State<AdminRoomDiscussionReviewPage> {
  late final AdminRoomsApi _api = AdminRoomsApi(session: widget.api);
  late Future<List<AdminRoomDiscussionReply>> _queue = _api.heldDiscussion();
  bool _busy = false;

  Future<void> _refresh() async {
    final next = _api.heldDiscussion();
    if (mounted) setState(() => _queue = next);
    await next;
  }
  void _notice(Object message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message.toString())));
  }
  Future<void> _decide(AdminRoomDiscussionReply reply, String action) async {
    if (_busy) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(action == 'approve' ? 'Publish held reply?'
            : action == 'hide' ? 'Hide reply?' : 'Remove reply?'),
        content: const Text(
          'This changes only the selected discussion reply. '
          'Masana questions and direct Gemini answers are unaffected.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(context, true),
              child: const Text('Confirm')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    setState(() => _busy = true);
    try {
      await _api.reviewDiscussion(reply.replyId, action);
      if (!mounted) return;
      await _refresh();
      _notice('Room discussion updated.');
    } catch (e) {
      _notice(e);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
  @override Widget build(BuildContext context) => Column(children: [
    Padding(padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
      child: Row(children: [
        const Expanded(child: Text('Held discussion replies',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))),
        IconButton(tooltip: 'Refresh held replies',
          onPressed: _busy ? null : () { _refresh(); },
          icon: const Icon(Icons.refresh)),
        if (_busy) const SizedBox(width: 18, height: 18,
          child: CircularProgressIndicator(strokeWidth: 2)),
      ]),
    ),
    const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Only replies held by the server appear here. '
        'Member questions are answered by Masana without staff review.')),
    Expanded(child: FutureBuilder<List<AdminRoomDiscussionReply>>(
      future: _queue,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Padding(padding: const EdgeInsets.all(20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(snapshot.error.toString(), textAlign: TextAlign.center),
              const SizedBox(height: 8),
              OutlinedButton(onPressed: () { _refresh(); },
                child: const Text('Retry')),
            ])));
        }
        final items = snapshot.data ?? const <AdminRoomDiscussionReply>[];
        if (items.isEmpty) {
          return const Center(child: Text('No discussion replies require attention.'));
        }
        return RefreshIndicator(
          onRefresh: _refresh,
          child: ListView.builder(
            itemCount: items.length,
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
            itemBuilder: (context, index) {
              final reply = items[index];
              return Card(child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${reply.roomId} · ${reply.parentKind} · ${reply.state}',
                      style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(height: 6),
                    Text(reply.body),
                    const SizedBox(height: 4),
                    Text(reply.createdAt,
                      style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height: 10),
                    Wrap(spacing: 8, runSpacing: 8, children: [
                      FilledButton.tonal(onPressed: _busy ? null
                        : () => _decide(reply, 'approve'),
                        child: const Text('Approve reply')),
                      OutlinedButton(onPressed: _busy ? null
                        : () => _decide(reply, 'hide'),
                        child: const Text('Hide')),
                      OutlinedButton(onPressed: _busy ? null
                        : () => _decide(reply, 'remove'),
                        child: const Text('Remove')),
                    ]),
                  ],
                ),
              ));
            },
          ),
        );
      },
    )),
  ]);
}
