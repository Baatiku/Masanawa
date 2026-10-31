import 'package:flutter/material.dart';

import 'gb_data_catalogue.dart';

/// Network is required. There is deliberately no all-networks choice because
/// an offer is not a safe purchase until its actual operator is explicit.
class GbDataNetworkChoices extends StatelessWidget {
  const GbDataNetworkChoices({
    super.key,
    required this.network,
    required this.onChanged,
    this.enabled = true,
  });
  final String? network;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Wrap(
    alignment: WrapAlignment.center,
    spacing: 6,
    runSpacing: 4,
    children: [
      for (final value in gbDataNetworks)
        ChoiceChip(
          key: ValueKey('data-network-$value'),
          avatar: GbNetworkLogo(value, size: 22),
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
  const GbDataValidityChoices({
    super.key,
    required this.period,
    required this.onChanged,
    this.enabled = true,
  });
  final GbDataValidityPeriod? period;
  final ValueChanged<GbDataValidityPeriod?> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, size) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: size.maxWidth),
        child: SegmentedButton<GbDataValidityPeriod>(
          showSelectedIcon: false,
          segments: const [
            ButtonSegment(
              value: GbDataValidityPeriod.daily,
              label: Text('Daily'),
            ),
            ButtonSegment(
              value: GbDataValidityPeriod.weekly,
              label: Text('Weekly'),
            ),
            ButtonSegment(
              value: GbDataValidityPeriod.monthly,
              label: Text('Monthly'),
            ),
          ],
          selected: period == null ? const {} : {period!},
          emptySelectionAllowed: true,
          onSelectionChanged: !enabled
              ? null
              : (choices) {
                  if (choices.isNotEmpty) onChanged(choices.first);
                },
          style: const ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(78, 48)),
            visualDensity: VisualDensity.compact,
          ),
        ),
      ),
    ),
  );
}

/// Packaged carrier identification stays available offline. Visible text is
/// always retained, including when an image fails; the mark is decorative.
class GbNetworkLogo extends StatelessWidget {
  const GbNetworkLogo(this.network, {super.key, this.size = 26});
  final String network;
  final double size;
  @override
  Widget build(BuildContext context) {
    final asset = switch (network) {
      'MTN' => 'mtn.jpeg',
      'AIRTEL' => 'airtel.jpeg',
      'GLO' => 'glo.jpg',
      '9MOBILE' => '9mobile.png',
      _ => null,
    };
    if (asset == null) return SizedBox(width: size, height: size);
    return ExcludeSemantics(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          'assets/networks/$asset',
          width: size,
          height: size,
          fit: BoxFit.contain,
          errorBuilder: (_, _, _) => Icon(Icons.sim_card_outlined, size: size),
        ),
      ),
    );
  }
}
