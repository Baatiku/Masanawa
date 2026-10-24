import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/request_id.dart';
import '../../human_chat/human_chat.dart';
import '../../state/session_state.dart';
import 'incoming_share.dart';

/// Android inbound share destination and explicit send. Other product targets
/// stay unavailable until their actual scoped composer/permission contracts
/// can accept this payload; this screen never invents a Room/Status write.
class ShareIntakeScreen extends ConsumerStatefulWidget {
  const ShareIntakeScreen({super.key});

  @override
  ConsumerState<ShareIntakeScreen> createState() => _ShareIntakeScreenState();
}

class _ShareIntakeScreenState extends ConsumerState<ShareIntakeScreen> {
  final _service = IncomingShareService.instance;
  final _search = TextEditingController();
  final _text = TextEditingController();
  String? _token, _threadId, _error;
  final _removed = <int>{};
  final _uploaded = <int, String>{};
  bool _busy = false, _queued = false, _confirmed = false;
  static final _allPeople = jsonEncode(['all', '']);

  @override
  void initState() {
    super.initState();
    _syncDraft();
    _service.addListener(_onShareChanged);
  }

  void _syncDraft() {
    final next = _service.pending;
    if (_token == next?.token) return;
    _token = next?.token;
    _text.text = next?.text ?? '';
    _threadId = null;
    _removed.clear();
    _uploaded.clear();
    _queued = false;
    _confirmed = false;
    _error = null;
  }

  void _onShareChanged() {
    if (!mounted) return;
    if (!_busy) setState(_syncDraft);
  }

  bool _current(String token, String owner, int epoch) {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn &&
        session.user.id == owner &&
        ref.read(sessionProvider.notifier).authorizationEpoch == epoch &&
        _service.authorized(owner, epoch, token);
  }

  Future<void> _cancel() async {
    if (_busy) return;
    await _service.clear();
    if (mounted) context.go('/home?tab=chats');
  }

  Future<void> _send() async {
    final session = ref.read(sessionProvider);
    final draft = _service.pending;
    final thread = _threadId;
    if (_busy || _queued || draft == null || draft.warning != null ||
        thread == null || session is! SessionSignedIn) return;
    final owner = session.user.id;
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    final token = draft.token;
    if (!_current(token, owner, epoch)) return;
    final indices = [for (var i = 0; i < draft.items.length; i++)
      if (!_removed.contains(i)) i];
    if (_text.text.trim().isEmpty && indices.isEmpty) return;
    setState(() { _busy = true; _error = null; });
    final transport = ref.read(humanCommunicationTransportProvider);
    HumanThreadController? controller;
    try {
      // The backend, not inbox metadata, decides whether this participant is
      // currently permitted to send (blocked, hidden or declined peers).
      final conversation = await transport.request('GET', '/conversations/$thread');
      if (!_current(token, owner, epoch)) return;
      if (conversation['state'] == 'declined' ||
          (conversation['state'] == 'pending' && conversation['initiator'] != true)) {
        throw StateError('This conversation cannot receive a share.');
      }
      for (final index in indices) {
        if (_uploaded.containsKey(index)) continue;
        final item = draft.items[index];
        final encoded = await _service.read(token, index);
        if (!_current(token, owner, epoch)) return;
        final uploaded = await transport.request(
          'POST', '/conversations/$thread/media',
          data: {
            'requestId': createRequestId(),
            'kind': item.kind,
            'mimeType': item.mime,
            'name': item.name,
            'dataBase64': encoded,
          },
        );
        if (!_current(token, owner, epoch)) return;
        final id = uploaded['id'];
        if (id is! String || id.isEmpty) throw StateError('Upload was not confirmed.');
        _uploaded[index] = id;
      }
      if (!_current(token, owner, epoch)) return;
      controller = HumanThreadController(
        transport, HumanJournal(owner, thread), thread,
      );
      await controller.start();
      if (!_current(token, owner, epoch)) return;
      final accepted = await controller.enqueue(
        text: _text.text,
        attachments: [for (final index in indices) _uploaded[index]!],
      );
      if (!_current(token, owner, epoch)) return;
      if (!accepted) throw StateError('Could not preserve this message for retry.');
      final confirmed = controller.pending.isEmpty && controller.error == null;
      setState(() { _queued = true; _confirmed = confirmed; });
      // The original request ID now belongs to the encrypted chat outbox.
      // A network-uncertain send is never re-created by the share target.
      await _service.clear();
    } catch (_) {
      if (_current(token, owner, epoch)) {
        setState(() {
          _error = 'Share not sent. Check the file permission, connection, '
              'conversation access and 8 MB limit, then retry.';
        });
      }
    } finally {
      controller?.dispose();
      if (mounted) setState(() {
        _busy = false;
        if (_service.pending != null && _service.pending?.token != _token) {
          _syncDraft();
        }
      });
    }
  }

  @override
  void dispose() {
    _service.removeListener(_onShareChanged);
    _search.dispose();
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final draft = _service.pending;
    if (session is! SessionSignedIn) {
      return const Scaffold(body: Center(child: Text('Sign in to share.')));
    }
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    final authorized = draft != null && _service.authorized(
      session.user.id, epoch, draft.token,
    );
    final inbox = ref.watch(humanInboxProvider(_allPeople));
    final conversations = (inbox.valueOrNull ?? const <HumanConversation>[])
        .where((c) => c.state != 'declined' &&
            (c.state != 'pending' || c.initiator) &&
            '${c.name} ${c.handle}'.toLowerCase().contains(_search.text.toLowerCase()))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share to Masanawa'),
        leading: IconButton(
          tooltip: 'Cancel share', icon: const Icon(Icons.close),
          onPressed: _busy ? null : _cancel,
        ),
      ),
      body: SafeArea(child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_queued) ...[
            Icon(_confirmed ? Icons.check_circle : Icons.schedule,
                size: 42, color: Theme.of(context).colorScheme.primary),
            Text(_confirmed ? 'Sent to your conversation' :
                'Saved in Chats for delivery or retry',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go('/human/chat/$_threadId'),
              child: const Text('Open conversation'),
            ),
          ] else if (draft == null || !authorized) ...[
            const Text('No current Android share. Choose Share in another app again.'),
            TextButton(onPressed: _cancel, child: const Text('Back to Chats')),
          ] else ...[
            if (draft.warning != null) ...[
              Text(draft.warning!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              const Text('Return to the source app and share supported text, JPEG/PNG/WebP, MP4 or PDF (up to four 8 MB files).'),
            ] else ...[
              Text('Preview', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              TextField(
                controller: _text, enabled: !_busy,
                decoration: const InputDecoration(labelText: 'Shared text (editable)', border: OutlineInputBorder()),
                maxLines: 3, minLines: 1, maxLength: 10000,
                onChanged: (_) => setState(() {}),
              ),
              for (var index = 0; index < draft.items.length; index++)
                if (!_removed.contains(index))
                  ListTile(
                    dense: true,
                    leading: Icon(draft.items[index].kind == 'image' ? Icons.image :
                        draft.items[index].kind == 'video' ? Icons.movie : Icons.insert_drive_file),
                    title: Text(draft.items[index].name, maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    subtitle: Text('${draft.items[index].mime} · '
                        '${draft.items[index].size == null ? 'Unknown size' : '${draft.items[index].size} bytes'}'),
                    trailing: IconButton(
                      tooltip: 'Remove ${draft.items[index].name}',
                      onPressed: _busy ? null : () => setState(() => _removed.add(index)),
                      icon: const Icon(Icons.close),
                    ),
                  ),
              const SizedBox(height: 12),
              Text('Choose a human conversation',
                  style: Theme.of(context).textTheme.titleMedium),
              const Text('Masana, Room and Status destinations are not yet available from Android Share.'),
              TextField(
                controller: _search, enabled: !_busy,
                maxLength: 80,
                decoration: const InputDecoration(
                  labelText: 'Find a conversation', prefixIcon: Icon(Icons.search),
                ),
                onChanged: (_) => setState(() {}),
              ),
              if (inbox.isLoading) const Center(child: CircularProgressIndicator()),
              if (inbox.hasError)
                TextButton(
                  onPressed: () => ref.invalidate(humanInboxProvider(_allPeople)),
                  child: const Text('Could not load conversations. Retry'),
                ),
              if (!inbox.isLoading && !inbox.hasError && conversations.isEmpty)
                const Text('No eligible conversations. Start or accept a human chat in Chats first.'),
              for (final c in conversations)
                RadioListTile<String>(
                  title: Text(c.name), subtitle: Text('@${c.handle}'),
                  value: c.id, groupValue: _threadId,
                  onChanged: _busy ? null : (value) => setState(() {
                    if (_threadId != value) _uploaded.clear();
                    _threadId = value;
                  }),
                ),
            ],
            if (_error != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ),
            const SizedBox(height: 16),
            if (_busy) const Center(child: CircularProgressIndicator()),
            FilledButton.icon(
              onPressed: _busy || draft.warning != null || _threadId == null ||
                  (_text.text.trim().isEmpty && draft.items.length == _removed.length)
                  ? null : _send,
              icon: const Icon(Icons.send), label: const Text('Send to selected conversation'),
            ),
            TextButton(onPressed: _busy ? null : _cancel, child: const Text('Cancel')),
          ],
        ],
      )),
    );
  }
}
