import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../human_chat/human_chat.dart';
import '../../core/private_screen_shield.dart';
import '../../state/session_state.dart';
import 'notification_reply.dart';

/// A foreground Android notification's inline text input is an untrusted
/// DRAFT. This protected route is the only place it may become a message.
class HumanNotificationReplyScreen extends ConsumerStatefulWidget {
  const HumanNotificationReplyScreen({super.key});

  @override
  ConsumerState<HumanNotificationReplyScreen> createState() =>
      _HumanNotificationReplyScreenState();
}

class _HumanNotificationReplyScreenState
    extends ConsumerState<HumanNotificationReplyScreen> {
  final _inbox = HumanNotificationReplyInbox.instance;
  final _text = TextEditingController();
  final _unlock = const HumanReplyDeviceUnlock();
  final _receipts = HumanReplyReceiptStore();
  String? _token;
  bool _sending = false, _queued = false, _confirmed = false;
  String? _error, _conversationId;

  @override
  void initState() {
    super.initState();
    _sync();
    _inbox.addListener(_changed);
  }

  void _sync() {
    final pending = _inbox.pending;
    if (_token == pending?.token) return;
    _token = pending?.token;
    _text.text = pending?.text ?? '';
    _conversationId = pending?.hint.conversationId;
    _error = null;
    _queued = false;
    _confirmed = false;
  }

  void _changed() {
    if (mounted && !_sending) setState(_sync);
  }

  bool _authorized(PendingHumanNotificationReply original) {
    final s = ref.read(sessionProvider);
    return mounted && s is SessionSignedIn &&
        s.user.id == original.hint.owner &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            original.hint.epoch &&
        _inbox.authorized(original);
  }

  Future<void> _cancel() async {
    if (_sending) return;
    _inbox.clear();
    if (mounted) context.go('/home?tab=chats');
  }

  Future<void> _send() async {
    final original = _inbox.pending;
    if (_sending || _queued || original == null ||
        !_authorized(original) || _text.text.trim().isEmpty ||
        _text.text.length > 500) return;

    final text = _text.text;
    setState(() { _sending = true; _error = null; });
    final transport = ref.read(humanCommunicationTransportProvider);
    HumanThreadController? controller;
    try {
      if (!await _unlock.isUnlocked()) {
        throw StateError('Unlock the device before confirming a reply.');
      }
      if (!_authorized(original)) return;
      final thread = original.hint.conversationId;
      final conversation = await transport.request('GET', '/conversations/$thread');
      if (!_authorized(original)) return;
      if (conversation['state'] == 'declined' ||
          (conversation['state'] == 'pending' && conversation['initiator'] != true)) {
        throw StateError('The recipient is no longer available.');
      }
      final requestId = await _receipts.reserve(hint: original.hint, text: text);
      if (!_authorized(original)) return;
      if (!await _unlock.isUnlocked()) {
        throw StateError('Unlock the phone before sending.');
      }
      controller = HumanThreadController(
        transport,
        HumanJournal(original.hint.owner, thread),
        thread,
      );
      await controller.start();
      if (!_authorized(original)) return;
      if (!await _unlock.isUnlocked()) {
        throw StateError('Unlock the phone before sending.');
      }
      final accepted = await controller.enqueue(
        text: text,
        requestId: requestId,
      );
      if (!_authorized(original)) return;
      if (!accepted) throw StateError('The encrypted chat queue is unavailable.');
      final confirmed = controller.pending.isEmpty && controller.error == null;
      setState(() { _queued = true; _confirmed = confirmed; });
      _inbox.clear();
    } catch (_) {
      if (_authorized(original)) {
        setState(() => _error =
            'Reply not sent. Unlock your phone and confirm the conversation '
            'and connection. If this notification was already used, open Chats.');
      }
    } finally {
      controller?.dispose();
      if (mounted) setState(() {
        _sending = false;
        if (_inbox.pending != null && _inbox.pending?.token != _token) _sync();
      });
    }
  }

  @override
  void dispose() {
    _inbox.removeListener(_changed);
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    final original = _inbox.pending;
    final authorized = original != null && s is SessionSignedIn &&
        s.user.id == original.hint.owner &&
        ref.read(sessionProvider.notifier).authorizationEpoch == original.hint.epoch &&
        _inbox.authorized(original);
    return PrivateScreenShield(child: Scaffold(
      appBar: AppBar(
        title: const Text('Review reply'),
        leading: IconButton(
          tooltip: 'Cancel reply', icon: const Icon(Icons.close),
          onPressed: _sending ? null : _cancel,
        ),
      ),
      body: SafeArea(child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_queued) ...[
            Icon(_confirmed ? Icons.check_circle : Icons.schedule, size: 44,
                color: Theme.of(context).colorScheme.primary),
            Text(_confirmed ? 'Reply confirmed' :
                'Reply saved in Chats for delivery or original-ID retry',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go('/human/chat/$_conversationId'),
              child: const Text('Open conversation'),
            ),
          ] else if (!authorized) ...[
            const Text('This notification reply is no longer authorized for the current account. No reply was sent.'),
            TextButton(onPressed: _cancel, child: const Text('Back to Chats')),
          ] else ...[
            Text('Unlock and review before sending',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            const Text('Text entered in the notification is only a draft. '
                'Masanawa checks your session and conversation again. '
                'Payments and other account actions cannot be sent here.'),
            const SizedBox(height: 16),
            TextField(
              controller: _text, enabled: !_sending,
              decoration: const InputDecoration(
                labelText: 'Reply text', border: OutlineInputBorder(),
              ),
              minLines: 2, maxLines: 5, maxLength: 500,
              onChanged: (_) => setState(() {}),
            ),
            if (_error != null)
              Text(_error!, style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              )),
            if (_sending) const Center(child: CircularProgressIndicator()),
            FilledButton.icon(
              onPressed: _sending || _text.text.trim().isEmpty ? null : _send,
              icon: const Icon(Icons.send),
              label: const Text('Confirm and send'),
            ),
            TextButton(
              onPressed: _sending ? null : _cancel,
              child: const Text('Cancel without sending'),
            ),
          ],
        ],
      )),
    ));
  }
}
