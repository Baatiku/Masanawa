import 'package:flutter/material.dart';
import '../../agents/agent_directory.dart';

/// Identity context belongs below the name, separate from provenance and actions.
class PersonaAffiliations extends StatelessWidget {
  const PersonaAffiliations({
    super.key,
    required this.agent,
    required this.onSource,
  });
  final AgentDirectoryEntry agent;
  final ValueChanged<String> onSource;
  @override
  Widget build(BuildContext context) {
    final official = agent.publicOfficial;
    final party = official?.current == true ? official?.party : null;
    if (party == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8,
        runSpacing: 8,
        children: [
          if (agent.countryCode == 'NG')
            const Chip(
              avatar: Text('🇳🇬', semanticsLabel: 'Nigerian flag'),
              label: Text('Nigeria'),
            ),
          Tooltip(
            message:
                'Reported party: ${party.name}. Checked ${party.checkedAt}. This does not imply endorsement.',
            child: ActionChip(
              avatar: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  party.emblemUrl,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) =>
                      const Icon(Icons.flag_outlined, size: 20),
                ),
              ),
              label: Text(party.code),
              onPressed: () => onSource(party.sourceUrl),
            ),
          ),
        ],
      ),
    );
  }
}
