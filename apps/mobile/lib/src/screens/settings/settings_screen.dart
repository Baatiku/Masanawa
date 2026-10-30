import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/mobile_push.dart';
import '../../state/ai_chat_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/current_account_avatar.dart';
import 'account_data_screen.dart';
import 'account_deletion_dialog.dart';
import 'account_security_screen.dart';
import 'notification_preferences_screen.dart';
import 'post_report_review_screen.dart';
import 'username_screen.dart';

/// The only account/Profile destination. Editing is a subordinate form, not
/// another competing profile dashboard. No diagnostic/demo/legacy finance menu.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key, this.embedded = false});
  final bool embedded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    final user = session is SessionSignedIn ? session.user : null;
    final colors = context.masanawa;

    void open(Widget child) => Navigator.of(context).push<void>(
      MaterialPageRoute<void>(builder: (_) => child));

    Widget item(String label, IconData icon, VoidCallback? action,
        {bool destructive = false}) => ListTile(
      minTileHeight: 52,
      leading: Icon(icon, color: destructive ? colors.emergency : colors.brand),
      title: Text(label, style: destructive
          ? TextStyle(color: colors.emergency) : null),
      trailing: destructive ? null : const Icon(Icons.chevron_right_rounded, size: 19),
      onTap: action,
    );

    Widget section(List<Widget> children) => Card(
      elevation: 0,
      color: colors.surfaceCard,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: colors.structuralBorder)),
      child: Column(children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0) const Divider(height: 1),
          children[i],
        ],
      ]),
    );

    return Scaffold(
      backgroundColor: colors.surfaceBg,
      appBar: embedded ? null : AppBar(title: const Text('Profile')),
      body: ListView(
        key: const PageStorageKey('masanawa-account-profile'),
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
        children: [
          Center(child: Column(children: [
            const CurrentAccountAvatar(size: 80),
            const SizedBox(height: 10),
            Text(user?.name ?? 'Masanawa',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            Text(user?.phone ?? user?.email ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: colors.textMuted)),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              key: const ValueKey('profile-edit-entry'),
              onPressed: user == null ? null : () => context.push('/profile'),
              icon: const Icon(Icons.edit_outlined, size: 17),
              label: const Text('Edit profile'),
            ),
          ])),
          const SizedBox(height: 22),
          section([
            item('Username', Icons.alternate_email_rounded,
              user == null ? null : () => open(const UsernameScreen())),
            item('Account security', Icons.security_outlined,
              user == null ? null : () => open(const AccountSecurityScreen())),
            item('Privacy and account data', Icons.privacy_tip_outlined,
              user == null ? null : () => open(const AccountDataScreen())),
            item('Notifications', Icons.notifications_none_rounded,
              user == null ? null : () => open(const NotificationPreferencesScreen())),
          ]),
          // Capability checked by the entry itself; never show an ordinary
          // user an operational queue merely because of a cached role.
          const PostReportAdminEntry(),
          section([
            item('About Masanawa', Icons.info_outline_rounded, () => showAboutDialog(
              context: context,
              applicationName: 'Masanawa',
              children: const [Text('AI persona conversations, calls and MB wallet.')],
            )),
            item('Delete account', Icons.person_remove_outlined,
              user == null ? null : () => open(const AccountDeletionDialog()),
              destructive: true),
            item('Log out', Icons.logout_rounded, user == null ? null : () async {
              await MobilePushService.instance.unregister();
              await ref.read(aiChatProvider.notifier).clearSecureShellState();
              await ref.read(aiChatProvider.notifier).clearAll();
              await ref.read(sessionProvider.notifier).logout();
              if (context.mounted) context.go('/phone-login');
            }, destructive: true),
          ]),
        ],
      ),
    );
  }
}
