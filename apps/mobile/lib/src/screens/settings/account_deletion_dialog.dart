import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/account_deletion_models.dart';
import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';
import '../../ui/components/masanawa_list_skeleton.dart';

/// Deletion request intake, not an immediate destructive action.
/// All status transitions come from the authenticated Gateway.
class AccountDeletionDialog extends ConsumerStatefulWidget {
  const AccountDeletionDialog({super.key});

  @override
  ConsumerState<AccountDeletionDialog> createState() =>
      _AccountDeletionDialogState();
}

class _AccountDeletionDialogState extends ConsumerState<AccountDeletionDialog> {
  final _code = TextEditingController();
  AccountDeletionRequestView? _request;
  String? _error;
  bool _loading = true;
  bool _working = false;
  bool _codeSent = false;
  bool _statusLoaded = false;
  String? _owner;

  bool get _authorized {
    if (!mounted || _owner == null) return false;
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn && state.user.id == _owner;
  }

  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
    if (_owner != null) unawaited(_load());
  }

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    if (!_authorized) return;
    setState(() { _loading = true; _error = null; });
    try {
      final request = await ref.read(apiClientProvider).accountDeletionStatus();
      if (!_authorized) return;
      setState(() {
        _request = request;
        _statusLoaded = true;
        _error = null;
        _loading = false;
      });
    } catch (error) {
      if (!_authorized) return;
      setState(() {
        _error = _friendlyError(error);
        _loading = false;
      });
    }
  }

  Future<void> _sendRequest() async {
    if (!_authorized || _working || !_statusLoaded) return;
    setState(() {
      _working = true;
      _error = null;
    });
    try {
      final sent = await ref.read(apiClientProvider).requestAccountDeletion();
      if (!_authorized) return;
      setState(() {
        _request = sent.request;
        _codeSent = sent.verificationSent;
        _error = sent.verificationSent
            ? null
            : 'Your request is recorded, but we could not send a verification code. '
                'You can try again when verification becomes available.';
      });
    } catch (error) {
      // The request may have persisted even if code delivery failed.
      // Refresh the canonical status rather than assuming the request failed.
      if (!_authorized) return;
      setState(() {
        _error = _friendlyError(error);
        // A timeout can happen after persistence; require a canonical status
        // read before the user can submit another deletion request.
        _statusLoaded = false;
      });
      try {
        final request = await ref.read(apiClientProvider).accountDeletionStatus();
        if (_authorized) setState(() {
          _request = request;
          _statusLoaded = true;
        });
      } catch (_) {
        // Preserve the original failure; do not invent a final status.
      }
    } finally {
      if (_authorized) setState(() => _working = false);
    }
  }

  Future<void> _verify() async {
    if (!_authorized || _working) return;
    final code = _code.text.trim();
    if (!RegExp(r'^\d{6}$').hasMatch(code)) {
      setState(() => _error = 'Enter the 6-digit verification code.');
      return;
    }
    setState(() {
      _working = true;
      _error = null;
    });
    try {
      final updated =
          await ref.read(apiClientProvider).verifyAccountDeletion(code);
      if (!_authorized) return;
      _code.clear();
      setState(() {
        _request = updated;
        _codeSent = false;
      });
    } catch (error) {
      if (_authorized) setState(() => _error = _friendlyError(error));
    } finally {
      if (_authorized) setState(() => _working = false);
    }
  }

  String _friendlyError(Object error) {
    if (error is ApiException) {
      switch (error.code) {
        case 'ACCOUNT_DELETION_CODE_RATE_LIMITED':
          return 'A code was sent recently. Please wait before requesting another.';
        case 'ACCOUNT_DELETION_CODE_LOCKED':
          return 'Too many incorrect codes. Request a new code after the waiting period.';
        case 'ACCOUNT_DELETION_CODE_EXPIRED':
          return 'This code has expired. Request a new code.';
        case 'ACCOUNT_DELETION_CODE_INVALID':
          return 'The code did not match. Check the message and try again.';
        case 'ACCOUNT_DELETION_DELIVERY_UNAVAILABLE':
          return 'Your request may have been recorded, but we could not send a code. Please try again.';
        case 'ACCOUNT_DELETION_ALREADY_VERIFIED':
        case 'ACCOUNT_DELETION_STATE_CONFLICT':
          return 'This request changed. Refresh its status before continuing.';
        case 'UNAUTHORIZED':
          return 'Your session has expired. Sign in again to continue.';
      }
    }
    return 'Could not reach account services. Check your connection and try again.';
  }

  @override
  Widget build(BuildContext context) {
    final active = ref.watch(sessionProvider);
    if (active is! SessionSignedIn || active.user.id != _owner) {
      return Scaffold(
        appBar: AppBar(title: const Text('Delete account')),
        body: const Center(child: Text(
          'This session changed. Sign in to manage account deletion.',
          textAlign: TextAlign.center,
        )),
      );
    }
    final request = _request;
    final needsCode = (request?.needsVerification ?? false) ||
        (request?.phase == 'failed' && _codeSent);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Delete account')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          children: [
              Text('Account deletion and data requests',
                  style: theme.textTheme.titleLarge),
              const SizedBox(height: 12),
              if (_loading) const MasanawaListSkeleton(
                shrinkWrap: true, itemCount: 3,
                semanticLabel: 'Loading account deletion status',
              ),
              if (!_loading && _statusLoaded && request == null) ...[
                const Text(
                  'You can request deletion of your Masanawa account and '
                  'associated personal data. We will verify your identity '
                  'before processing the request.',
                ),
                const SizedBox(height: 12),
                const Text(
                  'Pending payments, lawful financial record retention and '
                  'your comments and stored conversations may need separate handling. '
                  'This request is not immediate logout or account erasure.',
                ),
              ],
              if (!_loading && needsCode) ...[
                Text(
                  request?.phase == 'failed'
                      ? 'Your earlier request needs attention. A new code '
                        'can verify ownership again, but does not resolve '
                        'pending financial or data-cleanup work.'
                      : 'Your deletion request is saved. Verify ownership '
                        'using the code sent to your registered contact.',
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _code,
                  enabled: !_working,
                  autofocus: _codeSent,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(6),
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Verification code',
                    hintText: '6-digit code',
                  ),
                  onSubmitted: (_) {
                    if (!_working) unawaited(_verify());
                  },
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: _working ? null : _sendRequest,
                  child: const Text('Send another code'),
                ),
              ],
              if (!_loading && request != null && !needsCode) ...[
                if (request.finished)
                  const Text(
                    'Masanawa has confirmed completion of your deletion request.',
                  )
                else if (request.phase == 'failed')
                  const Text(
                    'Your request needs attention before it can be completed. '
                    'Your account has not been confirmed deleted.',
                  )
                else
                  const Text(
                    'Your deletion request is verified and recorded. '
                    'Processing and any legally required financial reconciliation '
                    'are still pending. Your account is not yet confirmed deleted.',
                  ),
                const SizedBox(height: 10),
                SelectableText(
                  'Reference: ${request.requestId}',
                  style: theme.textTheme.bodySmall,
                ),
              ],
              if (_error != null) ...[
                const SizedBox(height: 12),
                Semantics(liveRegion: true,
                  child: Text(_error!, style: TextStyle(
                    color: theme.colorScheme.error,
                  )),
                ),
              ],
          const SizedBox(height: 20),
          if (!_loading && !_statusLoaded)
            OutlinedButton.icon(
              onPressed: _working ? null : _load,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry account status'),
            ),
        if (!_loading && _statusLoaded && request == null)
          FilledButton(
            onPressed: _working ? null : _sendRequest,
            child: const Text('Request deletion'),
          ),
        if (!_loading && needsCode)
          FilledButton(
            onPressed: _working ? null : _verify,
            child: const Text('Verify request'),
          ),
        if (!_loading && request?.phase == 'failed' && !needsCode)
          FilledButton(
            onPressed: _working ? null : _sendRequest,
            child: const Text('Send new verification code'),
          ),
        if (!_working && !_loading && request != null && !needsCode)
          TextButton(
            onPressed: _load,
            child: const Text('Refresh status'),
          ),
        if (_working)
          const LinearProgressIndicator(),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: _working ? null : () => Navigator.of(context).pop(),
          child: const Text('Back to Settings'),
        ),
          ],
        ),
      ),
    );
  }
}
