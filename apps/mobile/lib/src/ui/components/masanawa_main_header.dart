import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';
import 'masanawa_wordmark.dart';

/// Shared root presentation. Detail routes keep their own titles/back controls.
/// IconButton actions retain their callbacks, labels and disabled state in overflow.
AppBar masanawaMainHeader(
  BuildContext context, {
  List<Widget> actions = const [],
  PreferredSizeWidget? bottom,
}) {
  final colors = context.masanawa;
  final scaler = MediaQuery.textScalerOf(context);
  final direction = Directionality.of(context);
  final brand = TextPainter(
    text: const TextSpan(
      text: 'Masanawa',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    ),
    textScaler: scaler,
    textDirection: direction,
  )..layout();
  final titleWidth = brand.width;
  brand.dispose();
  final available = math.max(
    0,
    MediaQuery.sizeOf(context).width - titleWidth - 32,
  );
  final slots = (available / 48).floor();
  final visibleCount = actions.length <= slots
      ? actions.length
      : math.max(0, slots - 1);
  final hidden = actions.skip(visibleCount).toList(growable: false);

  return AppBar(
    backgroundColor: colors.surfaceCard,
    foregroundColor: colors.brandStrong,
    actionsIconTheme: IconThemeData(color: colors.textPrimary),
    iconTheme: IconThemeData(color: colors.textPrimary),
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: false,
    centerTitle: false,
    titleSpacing: 16,
    toolbarHeight: 56,
    title: const FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: MasanawaWordmark(),
    ),
    actions: [
      ...actions.take(visibleCount),
      if (hidden.isNotEmpty)
        PopupMenuButton<int>(
          tooltip: MaterialLocalizations.of(context).moreButtonTooltip,
          icon: Icon(Icons.more_vert, color: colors.textPrimary),
          onSelected: (index) {
            final action = hidden[index];
            if (action is IconButton) action.onPressed?.call();
          },
          itemBuilder: (context) => [
            for (var i = 0; i < hidden.length; i++)
              if (hidden[i] is IconButton)
                _iconActionItem(hidden[i] as IconButton, i)
              else
                PopupMenuItem<int>(enabled: false, child: hidden[i]),
          ],
        ),
    ],
    bottom: bottom,
  );
}

PopupMenuItem<int> _iconActionItem(IconButton action, int index) {
  return PopupMenuItem<int>(
    value: index,
    enabled: action.onPressed != null,
    child: Row(
      children: [
        ExcludeSemantics(child: action.icon),
        const SizedBox(width: 12),
        Expanded(child: Text(action.tooltip ?? '')),
      ],
    ),
  );
}
