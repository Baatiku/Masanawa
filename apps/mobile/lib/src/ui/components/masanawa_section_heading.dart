import 'package:flutter/material.dart';

/// Centers in-content section titles independently of trailing actions.
/// Page titles and transaction-detail text keep their normal alignment.
class MasanawaSectionHeading extends StatelessWidget {
  const MasanawaSectionHeading(this.title, {super.key, this.trailing, this.style});

  final String title;
  final Widget? trailing;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final titleWidget = Text(title,
        textAlign: TextAlign.center,
        style: style ?? Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700),
      );
      if (trailing == null) return Center(child: titleWidget);
      if (constraints.maxWidth < 360 ||
          MediaQuery.textScalerOf(context).scale(1) > 1.25) {
        return Column(children: [
          Center(child: titleWidget),
          Align(alignment: AlignmentDirectional.centerEnd, child: trailing!),
        ]);
      }
      return SizedBox(height: 48, child: Stack(children: [
        Center(child: titleWidget),
        Align(alignment: AlignmentDirectional.centerEnd, child: trailing!),
      ]));
    },
  );
}
