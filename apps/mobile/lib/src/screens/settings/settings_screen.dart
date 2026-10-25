import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/request_id.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../account_preferences/notification_switch_controller.dart';
import '../../core/mobile_push.dart';
import '../../core/mobile_diagnostics.dart';
import '../../core/providers.dart';
import '../../state/agent_directory_state.dart';
import '../../state/ai_chat_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../tokens/masanawa_tokens.dart';
import 'account_deletion_dialog.dart';
import 'account_data_screen.dart';
import 'account_security_screen.dart';
import 'notification_preferences_screen.dart';
import 'clear_device_chats_dialog.dart';

/// Account and app preferences for the current Masanawa consumer product.
/// Account deletion must be handled by an authenticated durable server workflow;
/// clearing local chats or logging out is not account deletion.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late final NotificationSwitchController _notificationController;
  String? _notificationAccountId;
  int _supportMutationEpoch = 0;
  String? _savingDefaultAgentId;
  bool _sendingDiagnostics = false;

  @override
  void initState() {
    super.initState();
    _notificationController = NotificationSwitchController(
      readEnabled: MobilePushService.instance.notificationEnabled,
      requestPermission: MobilePushService.instance.requestPermission,
      unregister: MobilePushService.instance.unregister,
      // Preserve canonical push reattachment from the newer Settings source.
      // A granted OS permission does not guarantee server-side delivery.
      onEnabled: () async {
        await ref.read(agentDirectoryProvider.notifier).refresh();
      },
    )..addListener(_notificationChanged);
  }

  void _notificationChanged() {
    if (mounted) setState(() {});
  }

  void _bindNotificationAccount(String? accountId) {
    if (_notificationAccountId == accountId) return;
    _notificationAccountId = accountId;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _notificationAccountId != accountId) return;
      unawaited(_notificationController.bind(accountId));
    });
  }

  Future<void> _setNotifications(bool requested) async {
    final ownerId = _notificationAccountId;
    final changed = await _notificationController.change(requested);
    if (!mounted || _notificationAccountId != ownerId) return;
    if (!changed && _notificationController.error != null) {
      _showFeedback(_notificationController.error!);
    }
  }

  @override
  void dispose() {
    _notificationController.removeListener(_notificationChanged);
    _notificationController.dispose();
    super.dispose();
  }

  void _showFeedback(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _chooseSupportAgent({
    required String accountId,
    required String characterId,
    required String displayName,
  }) async {
    if (_savingDefaultAgentId != null) return;
    final ticket = ++_supportMutationEpoch;
    setState(() => _savingDefaultAgentId = characterId);
    try {
      await ref
          .read(agentDirectoryTransportProvider)
          .setDefaultPlatformAgent(characterId);
      await ref.read(agentDirectoryProvider.notifier).refresh();
      if (!mounted) return;
      final current = ref.read(sessionProvider);
      if (current is! SessionSignedIn || current.user.id != accountId) return;
      final confirmed = ref
          .read(agentDirectoryProvider)
          .agents
          .any(
            (agent) =>
                agent.characterId == characterId && agent.defaultPlatformAgent,
          );
      _showFeedback(
        confirmed
            ? '$displayName is your default Masanawa agent.'
            : 'The change could not be confirmed. Refresh and try again.',
      );
    } catch (_) {
      if (!mounted) return;
      final current = ref.read(sessionProvider);
      if (current is SessionSignedIn && current.user.id == accountId) {
        _showFeedback('Could not update your default agent. Please try again.');
      }
    } finally {
      if (mounted && ticket == _supportMutationEpoch) {
        setState(() => _savingDefaultAgentId = null);
      }
    }
  }

  Future<void> _shareDiagnostics() async {
    try {
      final report = await MasanawaDiagnostics.instance.exportSanitizedReport();
      if (!mounted) return;
      await SharePlus.instance.share(
        ShareParams(
          text: report,
          subject: 'Masanawa anonymous diagnostic report',
        ),
      );
    } catch (_) {
      _showFeedback('Diagnostics are unavailable right now.');
    }
  }

  Future<void> _sendDiagnostics() async {
    if (_sendingDiagnostics) return;
    final initial = ref.read(sessionProvider);
    if (initial is! SessionSignedIn) return;
    final owner = initial.user.id;
    bool sameOwner() =>
        mounted &&
        switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id == owner,
          _ => false,
        };
    setState(() => _sendingDiagnostics = true);
    try {
      final report = await MasanawaDiagnostics.instance.exportSanitizedReport();
      if (!mounted || !sameOwner()) return;
      final approved = await Navigator.of(context).push<bool>(
        MaterialPageRoute(
          builder: (ctx) => Scaffold(
            appBar: AppBar(title: const Text('Review app diagnostics')),
            body: SafeArea(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  const Text(
                    'Send this anonymous summary to Masanawa support. It contains error categories, app source locations and build details. No messages, tokens, account details or raw exception text are sent.',
                  ),
                  const SizedBox(height: 20),
                  SelectableText(report),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: () => Navigator.pop(ctx, true),
                    child: const Text('Send report'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(ctx, false),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      if (!mounted || approved != true || !sameOwner()) return;
      final reference = await ref
          .read(apiClientProvider)
          .sendSupportDiagnostics(
            MasanawaDiagnostics.supportPayload(report, createRequestId()),
          );
      if (!mounted || !sameOwner()) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Report sent. Support reference: $reference'),
          duration: const Duration(seconds: 15),
          action: SnackBarAction(
            label: 'Copy',
            onPressed: () => Clipboard.setData(ClipboardData(text: reference)),
          ),
        ),
      );
    } catch (_) {
      if (sameOwner()) {
        _showFeedback(
          'Could not send diagnostics. Your local report is retained; try again when connected.',
        );
      }
    } finally {
      if (mounted) setState(() => _sendingDiagnostics = false);
    }
  }

  Future<void> _clearDiagnostics() async {
    try {
      await MasanawaDiagnostics.instance.clear();
      _showFeedback('Local diagnostics cleared.');
    } catch (_) {
      _showFeedback('Could not clear diagnostics on this device.');
    }
  }

  Future<void> _confirmClearChats() async {
    final current = ref.read(sessionProvider);
    if (current is! SessionSignedIn) return;
    final ownerId = current.user.id;
    final cleared = await showDialog<bool>(
      context: context,
      builder: (_) => ClearDeviceChatsDialog(
        onConfirm: () async {
          final now = ref.read(sessionProvider);
          if (now is! SessionSignedIn || now.user.id != ownerId) {
            throw StateError('Account changed before local cleanup');
          }
          await ref.read(aiChatProvider.notifier).clearDownloadedMediaCache();
        },
      ),
    );
    if (!mounted || cleared != true) return;
    final now = ref.read(sessionProvider);
    if (now is SessionSignedIn && now.user.id == ownerId) {
      _showFeedback('Downloaded chat media cache was cleared.');
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SessionState>(sessionProvider, (before, after) {
      final oldOwner = before is SessionSignedIn ? before.user.id : null;
      final newOwner = after is SessionSignedIn ? after.user.id : null;
      if (oldOwner == newOwner || !mounted) return;
      ++_supportMutationEpoch;
      _bindNotificationAccount(newOwner);
      setState(() => _savingDefaultAgentId = null);
    });
    final u = context.masanawa;
    final session = ref.watch(sessionProvider);
    final user = session is SessionSignedIn ? session.user : null;
    _bindNotificationAccount(user?.id);
    final name = user?.name ?? 'Citizen';
    final contact = user?.phone ?? user?.email ?? 'No contact saved';
    final directory = ref.watch(agentDirectoryProvider);
    final supportAgents = directory.agents
        .where((agent) => agent.supportAgent)
        .toList(growable: false);

    String? selectedSupportAgentId;
    for (final agent in supportAgents) {
      if (agent.defaultPlatformAgent) {
        selectedSupportAgentId = agent.characterId;
        break;
      }
    }

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        backgroundColor: u.surfaceCard,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () =>
              context.canPop() ? context.pop() : context.go('/home'),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: u.textPrimary,
            fontSize: MasanawaTokens.fontSize['xl'],
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Semantics(
            button: true,
            label: 'Edit your profile',
            child: InkWell(
              onTap: () => context.push('/profile'),
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: u.surfaceCard,
                  borderRadius: BorderRadius.circular(
                    MasanawaTokens.radius['2xl']!,
                  ),
                  border: Border.all(color: u.structuralBorder),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: u.brand.withValues(alpha: 0.15),
                      child: Text(
                        name.isNotEmpty ? name[0].toUpperCase() : 'U',
                        style: TextStyle(
                          color: u.brand,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: u.textPrimary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            contact,
                            style: TextStyle(color: u.textMuted, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (supportAgents.isNotEmpty) ...[
            const SizedBox(height: 16),
            _Card(
              children: [
                ListTile(
                  leading: Icon(Icons.support_agent_outlined, color: u.brand),
                  title: const Text('Default Masanawa agent'),
                  subtitle: const Text(
                    'Choose who handles support and platform guidance',
                  ),
                ),
                const Divider(height: 1),
                RadioGroup<String>(
                  groupValue: selectedSupportAgentId,
                  onChanged: (value) {
                    if (value == null ||
                        user == null ||
                        _savingDefaultAgentId != null) {
                      return;
                    }
                    for (final agent in supportAgents) {
                      if (agent.characterId != value ||
                          agent.defaultPlatformAgent) {
                        continue;
                      }
                      unawaited(
                        _chooseSupportAgent(
                          accountId: user.id,
                          characterId: value,
                          displayName: agent.displayName,
                        ),
                      );
                      break;
                    }
                  },
                  child: Column(
                    children: [
                      for (
                        var index = 0;
                        index < supportAgents.length;
                        index++
                      ) ...[
                        Builder(
                          builder: (context) {
                            final agent = supportAgents[index];
                            return RadioListTile<String>(
                              value: agent.characterId,
                              enabled:
                                  user != null && _savingDefaultAgentId == null,
                              secondary: CircleAvatar(
                                backgroundColor: u.brand.withValues(
                                  alpha: 0.12,
                                ),
                                child: Text(
                                  agent.initial,
                                  style: TextStyle(color: u.brand),
                                ),
                              ),
                              title: Text(agent.displayName),
                              subtitle: Text(agent.roleLabel),
                            );
                          },
                        ),
                        if (index != supportAgents.length - 1)
                          const Divider(height: 1),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          _Card(
            children: [
              ListTile(
                leading: Icon(Icons.privacy_tip_outlined, color: u.brand),
                title: const Text('Privacy'),
                subtitle: const Text(
                  'Messages, calls, presence and blocked people',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push('/privacy'),
              ),
              SwitchListTile(
                key: const Key('settings-notifications-toggle'),
                secondary: Icon(Icons.notifications_outlined, color: u.brand),
                title: const Text('Notifications'),
                subtitle: Text(
                  !MobilePushService.instance.configured
                      ? 'Not available in this build'
                      : _notificationController.loading ||
                            _notificationController.saving
                      ? 'Checking notification permission…'
                      : _notificationController.error ?? 'Device permission; delivery also requires a connection',
                ),
                value:
                    MobilePushService.instance.configured &&
                    _notificationController.accountId ==
                        _notificationAccountId &&
                    _notificationController.enabled,
                onChanged:
                    !MobilePushService.instance.configured ||
                        user == null ||
                        _notificationController.accountId !=
                            _notificationAccountId ||
                        !_notificationController.canChange
                    ? null
                    : (value) => unawaited(_setNotifications(value)),
              ),
              ListTile(
                key: const Key('settings-notification-preferences'),
                leading: Icon(Icons.tune_outlined, color: u.brand),
                title: const Text('Notification preferences & activity'),
                subtitle: const Text(
                  'Masana chats, calls, Status, Wallet, Data and quiet hours',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: user == null
                    ? null
                    : () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const NotificationPreferencesScreen(),
                        ),
                      ),
              ),
              if (_notificationController.error != null &&
                  MobilePushService.instance.configured)
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton.icon(
                    onPressed: _notificationController.canRefresh
                        ? () => unawaited(_notificationController.refresh())
                        : null,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry permission check'),
                  ),
                ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-send-diagnostics'),
                leading: Icon(Icons.support_agent_outlined, color: u.brand),
                title: Text(
                  _sendingDiagnostics
                      ? 'Preparing diagnostics…'
                      : 'Send diagnostics to support',
                ),
                subtitle: const Text(
                  'Review an anonymous summary before sending. Receive a support reference.',
                ),
                onTap: user == null || _sendingDiagnostics
                    ? null
                    : () => unawaited(_sendDiagnostics()),
              ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-share-diagnostics'),
                leading: Icon(Icons.bug_report_outlined, color: u.brand),
                title: const Text('Share app diagnostics'),
                subtitle: const Text(
                  'Review and choose whether to share anonymous crash and ANR summaries. No messages or account details.',
                ),
                onTap: () => unawaited(_shareDiagnostics()),
              ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-clear-diagnostics'),
                leading: Icon(Icons.delete_sweep_outlined, color: u.brand),
                title: const Text('Clear app diagnostics'),
                subtitle: const Text(
                  'Remove only diagnostic records stored on this device',
                ),
                onTap: () => unawaited(_clearDiagnostics()),
              ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-clear-device-chats'),
                leading: Icon(Icons.delete_outline, color: u.brand),
                title: const Text('Clear downloaded chat media'),
                subtitle: const Text(
                  'Keep messages, drafts, retryable uploads and receipts',
                ),
                onTap: user == null
                    ? null
                    : () => unawaited(_confirmClearChats()),
              ),
              const Divider(height: 1),
              ListTile(
                leading: Icon(Icons.info_outline, color: u.brand),
                title: const Text('About Masanawa'),
                subtitle: const Text('Chats, Status, Wallet, Calls and Data'),
                onTap: () => showAboutDialog(
                  context: context,
                  applicationName: 'Masanawa',
                  children: const [
                    Text(
                      'Chat and make audio calls with Masana, follow their Status updates, manage MB in Wallet, and redeem mobile data.',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _Card(
            children: [
              ListTile(
                key: const Key('settings-account-security'),
                leading: Icon(Icons.security_outlined, color: u.brand),
                title: const Text('Account security'),
                subtitle: const Text(
                  'Devices, sign-out everywhere and recent sign-ins',
                ),
                onTap: user == null
                    ? null
                    : () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const AccountSecurityScreen(),
                        ),
                      ),
              ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-my-data'),
                leading: Icon(Icons.manage_accounts_outlined, color: u.brand),
                title: const Text('Account and my data'),
                subtitle: const Text(
                  'Profile completion, account status and exports',
                ),
                onTap: user == null
                    ? null
                    : () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const AccountDataScreen(),
                        ),
                      ),
              ),
              const Divider(height: 1),
              ListTile(
                key: const Key('settings-delete-account'),
                leading: Icon(Icons.person_remove_outlined, color: u.emergency),
                title: Text(
                  'Delete account',
                  style: TextStyle(color: u.emergency),
                ),
                subtitle: const Text('Account and data deletion options'),
                onTap: user == null
                    ? null
                    : () => Navigator.of(context).push<void>(
                        MaterialPageRoute<void>(
                          settings: const RouteSettings(
                            name: '/settings/account-deletion',
                          ),
                          builder: (_) => const AccountDeletionDialog(),
                        ),
                      ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _Card(
            children: [
              ListTile(
                leading: Icon(Icons.logout, color: u.emergency),
                title: Text(
                  'Log out',
                  style: TextStyle(
                    color: u.emergency,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () async {
                  await MobilePushService.instance.unregister();
                  await ref
                      .read(aiChatProvider.notifier)
                      .clearSecureShellState();
                  await ref.read(aiChatProvider.notifier).clearAll();
                  await ref.read(sessionProvider.notifier).logout();
                  if (context.mounted) context.go('/phone-login');
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Center(
            child: Text(
              'Masanawa · Chats · Status · Wallet · Calls · Data',
              style: TextStyle(color: u.textMuted, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Card(
      color: u.surfaceCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MasanawaTokens.radius['xl']!),
        side: BorderSide(color: u.structuralBorder),
      ),
      child: Column(children: children),
    );
  }
}
