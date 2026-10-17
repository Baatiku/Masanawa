import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';

/// Non-animated profile-shaped loading UI that respects large text and RTL.
/// The screen's AppBar is intentionally owned by the caller so Back stays live.
class MasanawaProfileSkeleton extends StatelessWidget {
  const MasanawaProfileSkeleton({super.key, this.semanticLabel = 'Loading profile'});

  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    Widget bar(double widthFactor, double height) => FractionallySizedBox(
      widthFactor: widthFactor,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors.structuralBorder,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(height: height),
      ),
    );
    return Semantics(
      label: semanticLabel,
      liveRegion: true,
      child: ExcludeSemantics(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Center(
              child: CircleAvatar(radius: 46, backgroundColor: colors.surfaceMuted),
            ),
            const SizedBox(height: 22),
            Center(child: bar(.65, 20)),
            const SizedBox(height: 16),
            Center(child: bar(.40, 14)),
            const SizedBox(height: 34),
            bar(.42, 18),
            const SizedBox(height: 14),
            bar(.95, 12),
            const SizedBox(height: 10),
            bar(.87, 12),
            const SizedBox(height: 10),
            bar(.70, 12),
          ],
        ),
      ),
    );
  }
}
