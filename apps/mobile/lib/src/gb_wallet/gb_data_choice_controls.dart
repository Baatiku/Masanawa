import 'package:flutter/material.dart';

import 'gb_data_catalogue.dart';

/// Network is required. There is deliberately no all-networks choice because
/// an offer is not a safe purchase until its actual operator is explicit.
class GbDataNetworkChoices extends StatelessWidget {
  const GbDataNetworkChoices({super.key, required this.network,
    required this.onChanged, this.enabled = true});
  final String? network;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 6,
    runSpacing: 4,
    children: [
      for (final value in gbDataNetworks)
        ChoiceChip(
          key: ValueKey('data-network-$value'),
          label: Text(switch (value) {
            'AIRTEL' => 'Airtel',
            'GLO' => 'Glo',
            '9MOBILE' => '9mobile',
            _ => value,
          }),
          selected: network == value,
          onSelected: !enabled ? null : (_) => onChanged(value),
        ),
    ],
  );
}

/// These labels are mapped from verified validityDays, never from free-form
/// provider titles. Only the three owner-approved periods are exposed.
class GbDataValidityChoices extends StatelessWidget {
  const GbDataValidityChoices({super.key, required this.period,
    required this.onChanged, this.enabled = true});
  final GbDataValidityPeriod? period;
  final ValueChanged<GbDataValidityPeriod?> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 6,
    runSpacing: 4,
    children: [
      for (final choice in <GbDataValidityPeriod?>[
        GbDataValidityPeriod.daily, GbDataValidityPeriod.weekly,
        GbDataValidityPeriod.monthly,
      ])
        ChoiceChip(
          key: ValueKey('data-validity-${choice?.name ?? 'all'}'),
          label: Text(switch (choice) {
            null => 'All durations',
            GbDataValidityPeriod.daily => 'Daily',
            GbDataValidityPeriod.weekly => 'Weekly',
            GbDataValidityPeriod.monthly => 'Monthly',
            GbDataValidityPeriod.other => 'Other',
          }),
          selected: choice == period,
          onSelected: !enabled ? null : (_) => onChanged(choice),
        ),
    ],
  );
}
