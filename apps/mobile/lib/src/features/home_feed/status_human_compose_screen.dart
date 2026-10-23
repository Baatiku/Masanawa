import 'dart:math';

import 'package:flutter/material.dart';

import 'feed_api.dart';

/// One public-text Status composer. Media and restricted audiences are not
/// offered until their authenticated server-side visibility paths exist.
class StatusHumanComposeScreen extends StatefulWidget {
  const StatusHumanComposeScreen({
    super.key,
    required this.accountKey,
    required this.publisher,
    required this.isAccountCurrent,
  });

  final String accountKey;
  final HumanStatusPublisher publisher;
  final bool Function() isAccountCurrent;

  @override
  State<StatusHumanComposeScreen> createState() => _StatusHumanComposeState();
}

class _StatusHumanComposeState extends State<StatusHumanComposeScreen>
    with RestorationMixin {
  final RestorableTextEditingController _body =
      RestorableTextEditingController();
  final RestorableStringN _pendingKey = RestorableStringN(null);
  final RestorableStringN _pendingBody = RestorableStringN(null);
  final Random _random = Random.secure();
  bool _submitting = false;
  String? _error;

  @override
  String? get restorationId => 'status-human-compose-' + widget.accountKey;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_body, 'body');
    registerForRestoration(_pendingKey, 'pending-key');
    registerForRestoration(_pendingBody, 'pending-body');
  }

  @override
  void dispose() {
    _body.dispose();
    _pendingKey.dispose();
    _pendingBody.dispose();
    super.dispose();
  }

  String get _text => _body.value.text.trim();
  bool get _canSubmit =>
      !_submitting &&
      _text.isNotEmpty &&
      _text.length <= 2000 &&
      widget.isAccountCurrent();

  Future<void> _preview() async {
    if (_text.isEmpty) return;
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Public Status preview'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Audience: Public — anyone with access to Status.'),
              const SizedBox(height: 12),
              Text(_text),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Edit'),
          ),
        ],
      ),
    );
  }

  Future<void> _discardPending() async {
    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Discard uncertain request?'),
        content: const Text(
          'The previous publish may still complete. Discarding only clears '
          'this local draft; it cannot undo a request already received.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Keep draft'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Discard request'),
          ),
        ],
      ),
    );
    if (!mounted || discard != true) return;
    _pendingKey.value = null;
    _pendingBody.value = null;
    setState(() => _error = null);
  }

  Future<void> _publish() async {
    if (!_canSubmit) return;
    final body = _text;
    if (_pendingBody.value != null && _pendingBody.value != body) {
      setState(
        () => _error =
            'A previous publish may still be processing. Restore its text to '
            'retry the same request, or explicitly discard it.',
      );
      return;
    }
    _pendingBody.value ??= body;
    _pendingKey.value ??=
        'human-status-' +
        DateTime.now().microsecondsSinceEpoch.toString() +
        '-' +
        _random.nextInt(0x7fffffff).toRadixString(16);
    final key = _pendingKey.value!;
    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      final post = await widget.publisher.publishHumanText(body, key);
      if (!mounted || !widget.isAccountCurrent()) return;
      if (!post.isHuman || post.authorId != widget.accountKey) {
        throw StateError('Unexpected Status author projection');
      }
      Navigator.of(context).pop(true);
    } catch (_) {
      if (!mounted || !widget.isAccountCurrent()) return;
      setState(
        () => _error =
            'Publication not confirmed. Retry uses the original request '
            'without creating a second post.',
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isAccountCurrent()) {
      return const Scaffold(
        body: Center(
          child: Text('Your account changed. Reopen Status to continue.'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Write a Status')),
      body: SafeArea(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person_outline)),
              title: Text('Post as yourself'),
              subtitle: Text('Public · Visible to everyone'),
            ),
            if (_error != null)
              MaterialBanner(
                content: Text(_error!),
                actions: [
                  if (_pendingKey.value != null)
                    TextButton(
                      onPressed: _submitting ? null : _discardPending,
                      child: const Text('Discard uncertain request'),
                    ),
                ],
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  controller: _body.value,
                  onChanged: (_) => setState(() {}),
                  maxLines: null,
                  expands: true,
                  maxLength: 2000,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    hintText: 'What would you like to share?',
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                  ),
                ),
              ),
            ),
            if (_submitting) const LinearProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: _submitting || _text.isEmpty ? null : _preview,
                    child: const Text('Preview'),
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: _canSubmit ? _publish : null,
                    icon: const Icon(Icons.publish_outlined),
                    label: Text(
                      _pendingKey.value == null ? 'Publish' : 'Retry publish',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
