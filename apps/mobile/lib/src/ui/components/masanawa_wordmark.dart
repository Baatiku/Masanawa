import 'package:flutter/material.dart';

import '../../theme/masanawa_theme.dart';

/// The Masanawa wordmark, without a subtitle.
/// The single brand lockup used in headers and splash.
class MasanawaWordmark extends StatelessWidget {
  const MasanawaWordmark({super.key, this.light = false, this.fontSize = 24});

  /// Light-on-brand variant (green headers, splash).
  final bool light;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final main = light ? Colors.white : u.brandStrong;
    return Semantics(
      label: 'Masanawa',
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Masanawa',
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
              color: main,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
