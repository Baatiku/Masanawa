import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../agents/agent_directory.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../theme/masanawa_theme.dart';

/// Uses the same authenticated directory identity as the open conversation.
class MasanaProfileScreen extends StatelessWidget {
  const MasanaProfileScreen({super.key, required this.agent});
  final AgentDirectoryEntry agent;
  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    return Scaffold(
      backgroundColor: colors.surfaceCard,
      appBar: AppBar(title: const Text('Masana profile')),
      body: ListView(padding: const EdgeInsets.all(24), children: [
        Center(child: MasanaPortraitAvatar(agent: agent, size: 112)),
        const SizedBox(height: 20),
        Text(agent.displayName, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        Text(agent.roleLabel, textAlign: TextAlign.center, style: TextStyle(color: colors.brand, fontSize: 16)),
        const SizedBox(height: 8),
        Text(agent.presenceLabel, textAlign: TextAlign.center, style: TextStyle(color: colors.textMuted)),
        const SizedBox(height: 28),
        Text('About', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        SelectableText(agent.about.isEmpty ? 'More profile information will appear here.' : agent.about),
        if (agent.roomId != null) ...[
          const SizedBox(height: 24),
          OutlinedButton.icon(icon: const Icon(Icons.groups_outlined), label: const Text('Open Room'),
            onPressed: () => context.push('/rooms/${Uri.encodeComponent(agent.roomId!)}')),
        ],
      ]),
    );
  }
}
