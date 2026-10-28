import 'package:flutter/material.dart';

enum StatusPostBodyMode { feed, detail, saved }

/// One readable body projection for feed, detail and Saved. Long feed text can
/// be expanded in place without treating See more as a post-navigation tap.
/// No body is cached across a changed account or post identity.
class StatusPostBody extends StatefulWidget {
  const StatusPostBody({
    super.key,
    required this.accountKey,
    required this.postId,
    required this.body,
    this.mode = StatusPostBodyMode.feed,
  });

  final String accountKey, postId, body;
  final StatusPostBodyMode mode;

  @override
  State<StatusPostBody> createState() => _StatusPostBodyState();
}

class _StatusPostBodyState extends State<StatusPostBody> {
  bool expanded = false;

  @override
  void didUpdateWidget(covariant StatusPostBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountKey != widget.accountKey ||
        oldWidget.postId != widget.postId ||
        oldWidget.body != widget.body ||
        oldWidget.mode != widget.mode) {
      expanded = false;
    }
  }

  String t(String en, String ha) =>
      Localizations.localeOf(context).languageCode == 'ha' ? ha : en;

  @override
  Widget build(BuildContext context) {
    if (widget.body.isEmpty) return const SizedBox.shrink();
    final style = Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.4);
    if (widget.mode == StatusPostBodyMode.detail) {
      return Text(widget.body, style: style);
    }
    if (widget.mode == StatusPostBodyMode.saved) {
      return Text(widget.body, maxLines: 4,
          overflow: TextOverflow.ellipsis, style: style);
    }

    return LayoutBuilder(builder: (context, constraints) {
      final measurement = TextPainter(
        text: TextSpan(text: widget.body, style: style),
        textDirection: Directionality.of(context),
        textScaler: MediaQuery.textScalerOf(context),
        maxLines: 5,
      )..layout(maxWidth: constraints.maxWidth);
      final truncated = measurement.didExceedMaxLines;
      measurement.dispose();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.body, style: style,
              maxLines: expanded ? null : 5,
              overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis),
          if (truncated)
            TextButton(
              onPressed: () => setState(() => expanded = !expanded),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                minimumSize: const Size(0, 48),
              ),
              child: Text(expanded
                  ? t('See less', 'Nuna kadan')
                  : t('See more', 'Nuna kari')),
            ),
        ],
      );
    });
  }
}
