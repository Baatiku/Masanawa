import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/status_editorial_api.dart';

/// Existing Gateway-approved editorial workflow: draft -> independent review ->
/// publish now or schedule; no local-only published state.
class StatusEditorialPage extends StatefulWidget {
  const StatusEditorialPage({super.key, required this.api});
  final AdminApi api;

  @override
  State<StatusEditorialPage> createState() => _StatusEditorialPageState();
}

class _StatusEditorialPageState extends State<StatusEditorialPage> {
  late final StatusEditorialApi _editorial = StatusEditorialApi(session: widget.api);
  late Future<List<StatusEditorialPost>> _posts = _editorial.list();
  String? _filter;
  bool _busy = false;

  Future<void> _refresh() async {
    final fresh = _editorial.list(state: _filter);
    setState(() => _posts = fresh);
    await fresh;
  }

  void _notice(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  Future<void> _change(StatusEditorialPost post, String action) async {
    if (_busy) return;
    DateTime? when;
    if (action == 'schedule') {
      final today = DateTime.now();
      final date = await showDatePicker(
        context: context,
        initialDate: today.add(const Duration(days: 1)),
        firstDate: today,
        lastDate: today.add(const Duration(days: 365)),
      );
      if (date == null || !mounted) return;
      final time = await showTimePicker(
        context: context,
        initialTime: const TimeOfDay(hour: 9, minute: 0),
      );
      if (time == null || !mounted) return;
      when = DateTime(date.year, date.month, date.day, time.hour, time.minute);
      if (!when.isAfter(DateTime.now().add(const Duration(minutes: 1)))) {
        _notice('Choose a time at least two minutes in the future.');
        return;
      }
    }
    setState(() => _busy = true);
    try {
      await _editorial.transition(post, action, scheduledAt: when);
      if (!mounted) return;
      await _refresh();
      _notice(action == 'schedule' ? 'Post scheduled' : 'Editorial action saved');
    } catch (error) {
      _notice(error.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<String?> _askText({String? initial}) async {
    final controller = TextEditingController(text: initial ?? '');
    try {
      return await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(initial == null ? 'New Masana text post' : 'Edit draft'),
          content: SizedBox(
            width: 500,
            child: TextField(
              controller: controller,
              maxLength: 5000,
              maxLines: 6,
              minLines: 3,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Write the Status text',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context),
                child: const Text('Cancel')),
            FilledButton(
              onPressed: () {
                if (controller.text.trim().isEmpty) return;
                Navigator.pop(context, controller.text.trim());
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      );
    } finally {
      // Route animation may briefly retain the text field; schedule disposal
      // after its dialog route has completed.
      WidgetsBinding.instance.addPostFrameCallback((_) => controller.dispose());
    }
  }

  Future<void> _create() async {
    if (_busy) return;
    try {
      final agents = await widget.api.agents();
      if (!mounted) return;
      final candidates = agents.where((a) => a.visibleInUserApp).toList();
      if (candidates.isEmpty) {
        _notice('No visible Masana is configured. Approve a Masana first.');
        return;
      }
      final chosen = await showDialog<AgentPresentation>(
        context: context,
        builder: (context) => SimpleDialog(
          title: const Text('Publish as Masana'),
          children: candidates.map((a) => SimpleDialogOption(
            onPressed: () => Navigator.pop(context, a),
            child: Text('${a.displayName} · ${a.roleLabel}'),
          )).toList(),
        ),
      );
      if (chosen == null || !mounted) return;
      final text = await _askText();
      if (text == null || !mounted) return;
      setState(() => _busy = true);
      final key = 'status-draft-${DateTime.now().microsecondsSinceEpoch}';
      await _editorial.createTextDraft(
        authorMasanaId: chosen.characterId,
        body: text,
        idempotencyKey: key,
      );
      if (!mounted) return;
      await _refresh();
      _notice('Draft created. Submit it for independent editorial review.');
    } catch (error) {
      _notice(error.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _edit(StatusEditorialPost post) async {
    if (_busy || post.kind != 'text') return;
    final text = await _askText(initial: post.body);
    if (text == null || !mounted) return;
    setState(() => _busy = true);
    try {
      await _editorial.editTextDraft(
        post: post,
        body: text,
        idempotencyKey: 'status-edit-${post.id}-${post.revision}',
      );
      if (!mounted) return;
      await _refresh();
      _notice('Draft updated');
    } catch (error) {
      _notice(error.toString());
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Widget _actions(StatusEditorialPost post) {
    final actions = <Widget>[];
    if (post.state == 'draft') {
      if (post.kind == 'text') {
        actions.add(TextButton.icon(onPressed: _busy ? null : () => _edit(post),
          icon: const Icon(Icons.edit_outlined), label: const Text('Edit')));
      }
      actions.add(FilledButton.tonal(onPressed: _busy ? null : () => _change(post, 'submit'),
          child: const Text('Submit for review')));
    } else if (post.state == 'in_review') {
      actions.add(TextButton(onPressed: _busy ? null : () => _change(post, 'revise'),
        child: const Text('Return to draft')));
      actions.add(OutlinedButton(onPressed: _busy ? null : () => _change(post, 'schedule'),
        child: const Text('Schedule')));
      actions.add(FilledButton(onPressed: _busy ? null : () => _change(post, 'approve'),
        child: const Text('Approve & publish')));
    } else if (post.state == 'scheduled' || post.state == 'published') {
      actions.add(OutlinedButton(onPressed: _busy ? null : () => _change(post, 'take_down'),
        child: const Text('Take down')));
    }
    return Wrap(spacing: 8, runSpacing: 4, children: actions);
  }

  @override
  Widget build(BuildContext context) => Column(children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Masana Status publishing',
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 4),
        const Text('Draft, independent review and scheduling use the live Gateway. '
            'Only approved Masana and rights-cleared media can be published.'),
        const SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, crossAxisAlignment: WrapCrossAlignment.center,
          children: [
          FilledButton.icon(onPressed: _busy ? null : _create,
            icon: const Icon(Icons.add), label: const Text('New text post')),
          DropdownButton<String>(
            value: _filter ?? 'all',
            items: const [
              DropdownMenuItem(value: 'all', child: Text('All posts')),
              DropdownMenuItem(value: 'draft', child: Text('Draft')),
              DropdownMenuItem(value: 'in_review', child: Text('Review')),
              DropdownMenuItem(value: 'scheduled', child: Text('Scheduled')),
              DropdownMenuItem(value: 'published', child: Text('Published')),
              DropdownMenuItem(value: 'hidden', child: Text('Hidden')),
            ],
            onChanged: _busy ? null : (value) {
              setState(() {
                _filter = value == 'all' ? null : value;
                _posts = _editorial.list(state: _filter);
              });
            },
          ),
          IconButton(onPressed: _busy ? null : () { _refresh(); },
            tooltip: 'Refresh posts', icon: const Icon(Icons.refresh)),
          if (_busy) const SizedBox(width: 20, height: 20,
            child: CircularProgressIndicator(strokeWidth: 2)),
        ]),
      ]),
    ),
    Expanded(child: FutureBuilder<List<StatusEditorialPost>>(
      future: _posts,
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
        final posts = snapshot.data ?? const <StatusEditorialPost>[];
        if (posts.isEmpty) {
          return const Center(child: Text('No Status posts in this view.'));
        }
        return RefreshIndicator(
          onRefresh: _refresh,
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Card(child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${post.authorMasanaId} · ${post.kind} · ${post.state}',
                      style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(height: 6),
                    Text(post.body.isEmpty ? '(Media-only post)' : post.body,
                      maxLines: 5, overflow: TextOverflow.ellipsis),
                    if (post.scheduledAt != null) Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text('Scheduled: ${post.scheduledAt!.toLocal()}')),
                    const SizedBox(height: 8),
                    _actions(post),
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
