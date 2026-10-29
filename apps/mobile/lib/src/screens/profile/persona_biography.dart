import 'package:flutter/material.dart';
import '../../agents/agent_directory.dart';

/// Displays only published directory facts. Missing dates, parties and career
/// milestones are never inferred from a name, office or model knowledge.
class PersonaBiography extends StatelessWidget {
  const PersonaBiography({
    super.key,
    required this.agent,
    required this.onQuestion,
    required this.onSource,
  });

  final AgentDirectoryEntry agent;
  final ValueChanged<String> onQuestion;
  final ValueChanged<String> onSource;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final official = agent.publicOfficial;
    final simulation = agent.publicOfficialSimulation;
    Widget section(String title, Widget child) => Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
    Widget fact(IconData icon, String label, String value) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: theme.colorScheme.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: theme.textTheme.labelMedium),
                const SizedBox(height: 2),
                Text(value, style: theme.textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        section(
          'At a glance',
          DecoratedBox(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  fact(
                    Icons.account_balance_outlined,
                    simulation ? 'Public role' : 'Focus',
                    official?.office ?? agent.roleLabel,
                  ),
                  if (agent.countryName case final String country
                      when country.isNotEmpty)
                    fact(Icons.public_outlined, 'Country', country),
                  if (official != null)
                    fact(
                      Icons.fact_check_outlined,
                      'Biography reviewed',
                      MaterialLocalizations.of(
                        context,
                      ).formatFullDate(official.reviewedAt.toLocal()),
                    ),
                ],
              ),
            ),
          ),
        ),
        section(
          'Biography',
          agent.about.trim().isEmpty
              ? Text(
                  'A published biography is not available yet.',
                  style: theme.textTheme.bodyLarge,
                )
              : SelectableText(
                  agent.about,
                  style: theme.textTheme.bodyLarge?.copyWith(height: 1.65),
                ),
        ),
        if (agent.conversationStarters.isNotEmpty)
          section(
            'Start a conversation',
            Column(
              children: [
                for (final question in agent.conversationStarters)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 52),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        alignment: AlignmentDirectional.centerStart,
                      ),
                      onPressed: () => onQuestion(question),
                      child: Row(
                        children: [
                          Expanded(child: Text(question)),
                          const SizedBox(width: 12),
                          const Icon(Icons.arrow_forward, size: 18),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        if (simulation)
          section(
            'About this AI persona',
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: theme.colorScheme.outlineVariant),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'An independent AI simulation, not the official or their office. '
                    'Chat and calls explore documented public history and views; '
                    'answers are not new statements or commitments from this person.',
                  ),
                  if (official != null) ...[
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: () => onSource(official.sourceUrl),
                      icon: const Icon(Icons.open_in_new, size: 18),
                      label: const Text('Read biography source'),
                    ),
                  ] else ...[
                    const SizedBox(height: 12),
                    const Text(
                      'A current source review is unavailable. A verification badge is not shown.',
                    ),
                  ],
                ],
              ),
            ),
          ),
      ],
    );
  }
}
