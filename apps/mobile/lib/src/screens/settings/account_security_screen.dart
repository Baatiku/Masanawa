import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../state/session_state.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'verify_account_email_screen.dart';
import 'change_account_contact_screen.dart';

/// Server-authorized security controls. No locally invented devices or events.
class AccountSecurityScreen extends ConsumerStatefulWidget {
  const AccountSecurityScreen({super.key});

  @override
  ConsumerState<AccountSecurityScreen> createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends ConsumerState<AccountSecurityScreen> {
  List<Map<String, dynamic>> _sessions = const [];
  List<Map<String, dynamic>> _history = const [];
  bool _loading = true;
  bool _saving = false;
  bool _confirmAll = false;
  String? _confirmSession;
  String? _error;
  int _epoch = 0;
  late int _authorizationEpoch;

  int get _currentAuthorizationEpoch =>
      ref.read(sessionProvider.notifier).authorizationEpoch;
  bool _sameSession(String owner, int epoch) =>
      mounted && _account == owner && _currentAuthorizationEpoch == epoch;

  String? get _account {
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn ? state.user.id : null;
  }

  @override
  void initState() {
    super.initState();
    _authorizationEpoch = _currentAuthorizationEpoch;
    Future<void>.microtask(_load);
  }

  Future<void> _load() async {
    final ticket = ++_epoch;
    final owner = _account;
    final authEpoch = _currentAuthorizationEpoch;
    if (owner == null) {
      if (mounted && _epoch == ticket && _currentAuthorizationEpoch == authEpoch)
        setState(() { _loading = false; _error = 'Sign in to manage account security.'; });
      return;
    }
    if (mounted) setState(() { _loading = true; _error = null; });
    try {
      final api = ref.read(apiClientProvider);
      final sessions = await api.securitySessions();
      final history = await api.securityLoginHistory();
      if (!_sameSession(owner, authEpoch) || _epoch != ticket) return;
      setState(() {
        _sessions = sessions;
        _history = history;
        _loading = false;
      });
    } catch (_) {
      if (!_sameSession(owner, authEpoch) || _epoch != ticket) return;
      setState(() {
        _loading = false;
        _error = 'Could not load security details. Check your connection and retry.';
      });
    }
  }

  Future<void> _revoke(String sessionId, {required bool current}) async {
    if (_saving || _account == null) return;
    final owner = _account!;
    final authEpoch = _currentAuthorizationEpoch;
    setState(() => _saving = true);
    try {
      final api = ref.read(apiClientProvider);
      await api.revokeSecuritySession(sessionId);
      if (!_sameSession(owner, authEpoch)) return;
      if (current) {
        await ref.read(sessionProvider.notifier).logout();
        if (mounted && ref.read(sessionProvider) is SessionSignedOut)
          Navigator.of(context).pop();
      } else {
        final sessions = await api.securitySessions();
        if (!_sameSession(owner, authEpoch)) return;
        if (sessions.any((item) => item['sessionId'] == sessionId))
          throw StateError('revoked_session_still_active');
        setState(() => _confirmSession = null);
        await _load();
      }
    } catch (_) {
      if (_sameSession(owner, authEpoch)) {
        setState(() => _error = 'Could not confirm whether that device signed out. '
            'Refresh the session list before trying again.');
      }
    } finally {
      if (_sameSession(owner, authEpoch)) setState(() => _saving = false);
    }
  }

  Future<void> _logoutAll() async {
    if (_saving || _account == null) return;
    final owner = _account!;
    final authEpoch = _currentAuthorizationEpoch;
    setState(() => _saving = true);
    try {
      // If the server is unavailable, do not claim remote sessions were revoked.
      await ref.read(apiClientProvider).securityLogoutAll();
      if (!_sameSession(owner, authEpoch)) return;
      await ref.read(sessionProvider.notifier).logout();
      if (mounted && ref.read(sessionProvider) is SessionSignedOut)
        Navigator.of(context).pop();
    } catch (_) {
      if (_sameSession(owner, authEpoch)) {
        setState(() => _error = 'Could not confirm sign-out on other devices. '
            'Refresh sessions when online before trying again.');
      }
    } finally {
      if (_sameSession(owner, authEpoch)) setState(() => _saving = false);
    }
  }

  String _date(Object? value) {
    if (value is! String) return 'Time unavailable';
    final parsed = DateTime.tryParse(value);
    if (parsed == null) return 'Time unavailable';
    final local = parsed.toLocal();
    String two(int v) => v.toString().padLeft(2, '0');
    return '${local.year}-${two(local.month)}-${two(local.day)} '
        '${two(local.hour)}:${two(local.minute)}';
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SessionState>(sessionProvider, (previous, next) {
      final previousId = previous is SessionSignedIn ? previous.user.id : null;
      final nextId = next is SessionSignedIn ? next.user.id : null;
      final nextEpoch = _currentAuthorizationEpoch;
      if (previousId == nextId && _authorizationEpoch == nextEpoch) return;
      setState(() {
        _authorizationEpoch = nextEpoch;
        ++_epoch;
        _sessions = const [];
        _history = const [];
        _saving = false;
        _loading = nextId != null;
        _confirmSession = null;
        _confirmAll = false;
      });
      if (nextId != null) Future<void>.microtask(_load);
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Account security')),
      body: RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Verified contact',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
            const SizedBox(height:8),
            const Text('Add or re-verify an email address with a code. '
                'Email changes need separate account-recovery safeguards.'),
            ListTile(
              key:const Key('security-verify-email'),
              leading:const Icon(Icons.alternate_email),
              title:const Text('Verify email address'),
              subtitle:const Text('Prove you control the inbox before linking it'),
              trailing:const Icon(Icons.chevron_right),
              onTap:() => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder:(_)=>const VerifyAccountEmailScreen(),
                ),
              ),
            ),
            ListTile(
              key:const Key('security-change-email'),
              leading:const Icon(Icons.mark_email_read_outlined),
              title:const Text('Change linked email'),
              subtitle:const Text('Verify the old and new inboxes'),
              trailing:const Icon(Icons.chevron_right),
              onTap:()=>Navigator.of(context).push(
                MaterialPageRoute<void>(builder:(_)=>const ChangeAccountContactScreen(channel:'email')),
              ),
            ),
            ListTile(
              key:const Key('security-change-phone'),
              leading:const Icon(Icons.phonelink_setup_outlined),
              title:const Text('Change phone number'),
              subtitle:const Text('Verify both numbers by SMS'),
              trailing:const Icon(Icons.chevron_right),
              onTap:()=>Navigator.of(context).push(
                MaterialPageRoute<void>(builder:(_)=>const ChangeAccountContactScreen(channel:'sms')),
              ),
            ),
            const SizedBox(height:22),
            const Text('Signed-in devices', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Review active sessions and revoke any you do not recognize. '
                'Device names may be unavailable on older sessions.'),
            if (_loading) const MasanawaListSkeleton(
              itemCount: 3, shrinkWrap: true,
              semanticLabel: 'Loading account sessions',
            ),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              TextButton.icon(onPressed: _saving ? null : _load,
                icon: const Icon(Icons.refresh), label: const Text('Retry')),
            ],
            if (!_loading && _sessions.isEmpty)
              const Padding(padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('No active sessions could be displayed.')),
            for (final item in _sessions) ...[
              const Divider(),
              ListTile(
                leading: Icon(item['current'] == true ? Icons.smartphone : Icons.devices_other),
                title: Text(item['clientLabel'] is String &&
                     (item['clientLabel'] as String).isNotEmpty
                    ? '${item['clientLabel']}${item['current']==true?' · This device':''}'
                    : item['current'] == true ? 'This session' : 'Another session'),
                subtitle: Text('Last access: ${_date(item['lastAccessAt'])}\n'
                    'Started: ${_date(item['createdAt'])}'),
                isThreeLine: true,
              ),
              if (_confirmSession == item['sessionId']) ...[
                const Text('Revoke this session? Its access and refresh tokens will stop working.'),
                Wrap(spacing: 8, children: [
                  TextButton(onPressed: _saving ? null : () => setState(() => _confirmSession = null),
                    child: const Text('Cancel')),
                  FilledButton(
                    onPressed: _saving ? null : () => _revoke(item['sessionId'] as String,
                        current: item['current'] == true),
                    child: const Text('Confirm revoke'),
                  ),
                ]),
              ] else
                Align(alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: _saving ? null : () => setState(() {
                      _confirmSession = item['sessionId'] as String?;
                      _confirmAll = false;
                    }),
                    child: const Text('Sign out device'),
                  ),
                ),
            ],
            const SizedBox(height: 24),
            const Text('Emergency sign out', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text('Sign out every device, including this one. You will need to sign in again.'),
            if (_confirmAll) ...[
              const SizedBox(height: 8),
              Wrap(spacing: 8, children: [
                TextButton(onPressed: _saving ? null : () => setState(() => _confirmAll = false),
                    child: const Text('Cancel')),
                FilledButton(
                  onPressed: _saving ? null : _logoutAll,
                  child: const Text('Confirm sign out all'),
                ),
              ]),
            ] else
              Align(alignment: Alignment.centerLeft,
                child: OutlinedButton.icon(
                  onPressed: _saving ? null : () => setState(() {
                    _confirmAll = true;
                    _confirmSession = null;
                  }),
                  icon: const Icon(Icons.logout),
                  label: const Text('Sign out of all devices'),
                )),
            const SizedBox(height: 24),
            const Text('Recent account access', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            if (!_loading && _history.isEmpty)
              const Text('No recent sign-in events recorded yet.'),
            for (final event in _history)
              ListTile(
                dense: true,
                leading: const Icon(Icons.history),
                title: Text((event['action'] as String? ?? 'Account activity').replaceAll('_', ' ')),
                subtitle: Text(event['clientLabel'] is String &&
                    (event['clientLabel'] as String).isNotEmpty
                  ? '${_date(event['at'])} · ${event['clientLabel']}'
                  : _date(event['at'])),
              ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
