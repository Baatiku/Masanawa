import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';

/// A low-data, non-animated content placeholder. No network work or timers.
/// Unlike an indeterminate spinner, the layout resembles the conversation list
/// and remains usable when the system requests reduced motion.
class MasanawaListSkeleton extends StatelessWidget {
  const MasanawaListSkeleton({
    super.key,
    this.itemCount = 5,
    this.shrinkWrap = false,
    this.semanticLabel = 'Loading content',
  }) : assert(itemCount > 0);

  final int itemCount;
  final bool shrinkWrap;
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final barColor = colors.structuralBorder;
    return Semantics(
      label: semanticLabel,
      liveRegion: true,
      child: ExcludeSemantics(
        child: ListView.separated(
          shrinkWrap: shrinkWrap,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          separatorBuilder: (_, __) => Divider(
            height: 1,
            indent: 78,
            color: colors.structuralBorder,
          ),
          itemBuilder: (_, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                CircleAvatar(radius: 26, backgroundColor: colors.surfaceMuted),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FractionallySizedBox(
                        alignment: AlignmentDirectional.centerStart,
                        widthFactor: index.isEven ? .58 : .72,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: barColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const SizedBox(height: 14, width: double.infinity),
                        ),
                      ),
                      const SizedBox(height: 12),
                      FractionallySizedBox(
                        alignment: AlignmentDirectional.centerStart,
                        widthFactor: index.isEven ? .82 : .67,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: colors.surfaceMuted,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const SizedBox(height: 12, width: double.infinity),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
