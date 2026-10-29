import 'package:flutter/material.dart';
import '../../tokens/feature_colors.dart';
import 'package:intl/intl.dart';
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
    final accent = theme.brightness == Brightness.dark
        ? theme.colorScheme.primary
        : MasanawaFeatureColors.deepEmerald;
    final official = agent.publicOfficial;
    final simulation = agent.publicOfficialSimulation;
    final biography = official?.biography ?? agent.about;
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
    final facts = <({IconData icon, String label, String value})>[
      if (official?.dateOfBirth case final String birth)
        (
          icon: Icons.calendar_month_outlined,
          label: 'Date of birth',
          value: DateFormat.yMMMd(
            Localizations.localeOf(context).toString(),
          ).format(DateTime.parse(birth)),
        ),
      if (official?.stateOfOrigin != null ||
          official?.cityOfOrigin != null ||
          official?.birthPlace != null)
        (
          icon: Icons.location_on_outlined,
          label: official?.stateOfOrigin != null
              ? 'State of origin'
              : official?.cityOfOrigin != null
              ? 'City of origin'
              : 'Birthplace',
          value:
              [
                official?.cityOfOrigin,
                official?.stateOfOrigin,
              ].whereType<String>().join(', ').isNotEmpty
              ? [
                  official?.cityOfOrigin,
                  official?.stateOfOrigin,
                ].whereType<String>().join(', ')
              : official!.birthPlace!,
        ),
      (
        icon: Icons.work_outline,
        label: simulation ? 'Public role' : 'Focus',
        value: official?.office ?? agent.roleLabel,
      ),
      if (agent.countryName case final String country when country.isNotEmpty)
        (icon: Icons.flag_outlined, label: 'Country', value: country),
    ];
    if (facts.length.isOdd && official != null) {
      facts.add((
        icon: Icons.fact_check_outlined,
        label: 'Biography reviewed',
        value: MaterialLocalizations.of(
          context,
        ).formatMediumDate(official.reviewedAt.toLocal()),
      ));
    }
    Widget fact(({IconData icon, String label, String value}) item) =>
        Container(
          key: ValueKey('quick-fact-${item.label}'),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: accent.withValues(alpha: .045),
            border: Border.all(color: accent.withValues(alpha: .08)),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: accent.withValues(alpha: .08),
                child: Icon(item.icon, size: 22, color: accent),
              ),
              const SizedBox(height: 10),
              Text(
                item.label,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(height: 5),
              Text(
                item.value,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        section(
          'Quick facts',
          Column(
            children: [
              for (var i = 0; i < facts.length; i += 2)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: fact(facts[i])),
                        const SizedBox(width: 12),
                        Expanded(
                          child: i + 1 < facts.length
                              ? fact(facts[i + 1])
                              : const SizedBox.shrink(),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        section(
          'Biography',
          biography.trim().isEmpty
              ? Text(
                  'A published biography is not available yet.',
                  style: theme.textTheme.bodyLarge,
                )
              : SelectableText(
                  biography,
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
