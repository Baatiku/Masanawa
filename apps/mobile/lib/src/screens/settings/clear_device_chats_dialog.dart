import 'package:flutter/material.dart';

/// Confirms a device-scoped chat cleanup; never suggests that a server-side
/// history, financial record, or account deletion has occurred.
class ClearDeviceChatsDialog extends StatefulWidget {
  const ClearDeviceChatsDialog({super.key, required this.onConfirm});

  final Future<void> Function() onConfirm;

  @override
  State<ClearDeviceChatsDialog> createState() =>
      _ClearDeviceChatsDialogState();
}

class _ClearDeviceChatsDialogState extends State<ClearDeviceChatsDialog> {
  bool _clearing = false;
  String? _error;

  Future<void> _confirm() async {
    if (_clearing) return;
    setState(() {
      _clearing = true;
      _error = null;
    });
    try {
      await widget.onConfirm();
      if (mounted) Navigator.of(context).pop(true);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _clearing = false;
        _error = 'Could not finish clearing downloaded media. '
            'Try again. Your messages and drafts are kept.';
      });
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('Clear downloaded chat media?'),
    content: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'This removes downloaded media from closed chats. Messages, drafts, '
            'retryable uploads, original recordings and financial receipts '
            'are kept. Available media can be downloaded again; expired '
            'server media may no longer be available.',
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(
              _error!,
              key: const Key('clear-device-chats-error'),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          if (_clearing) ...[
            const SizedBox(height: 12),
            const LinearProgressIndicator(),
          ],
        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: _clearing ? null : () => Navigator.of(context).pop(false),
        child: const Text('Keep media'),
      ),
      FilledButton(
        key: const Key('confirm-clear-device-chats'),
        onPressed: _clearing ? null : _confirm,
        child: const Text('Clear downloaded media'),
      ),
    ],
  );
}
