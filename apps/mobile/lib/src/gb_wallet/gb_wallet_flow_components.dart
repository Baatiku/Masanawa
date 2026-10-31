import 'package:flutter/material.dart';

import '../theme/masanawa_theme.dart';

/// Shared presentation only. Each financial flow remains responsible for its
/// server-bound quote, durable original key, authority and receipt readback.
class GbWalletReviewSheet extends StatelessWidget {
  const GbWalletReviewSheet({
    super.key,
    required this.title,
    required this.children,
    required this.action,
    this.onClose,
    this.busy = false,
    this.back = false,
  });

  final String title;
  final List<Widget> children;
  final Widget action;
  final VoidCallback? onClose;
  final bool busy, back;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final maxHeight = MediaQuery.sizeOf(context).height * .88;
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Container(
                width: 34,
                height: 4,
                decoration: BoxDecoration(
                  color: colors.structuralBorder,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 8, 6),
                child: Row(
                  children: [
                    if (back)
                      IconButton(
                        onPressed: busy ? null : onClose,
                        tooltip: 'Back',
                        icon: const Icon(Icons.arrow_back_rounded),
                      )
                    else
                      const SizedBox(width: 48),
                    Expanded(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    IconButton(
                      onPressed: busy ? null : onClose,
                      tooltip: 'Close review',
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: children,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: colors.structuralBorder),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
                  child: SizedBox(width: double.infinity, child: action),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GbWalletReviewLine extends StatelessWidget {
  const GbWalletReviewLine(
    this.label,
    this.value, {
    super.key,
    this.emphasize = false,
  });
  final String label, value;
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.masanawa;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colors.textMuted,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 5,
            child: Text(
              value,
              textAlign: TextAlign.end,
              textDirection: RegExp(r'^[+−₦\d]').hasMatch(value)
                  ? TextDirection.ltr
                  : null,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: emphasize ? FontWeight.w800 : FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A single contextual, optionally actionable state instead of stacked error
/// banners/toasts. Informational states do not imply that a payment succeeded.
class GbWalletInlineNotice extends StatelessWidget {
  const GbWalletInlineNotice({
    super.key,
    required this.message,
    this.actionLabel,
    this.onAction,
    this.warning = true,
  });
  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final bool warning;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 12, 10),
      decoration: BoxDecoration(
        color: colors.fieldSurface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: colors.structuralBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            warning ? Icons.info_outline_rounded : Icons.check_circle_outline,
            size: 19,
            color: warning ? colors.textMuted : colors.brandStrong,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.textPrimary,
              ),
            ),
          ),
          if (actionLabel != null && onAction != null)
            TextButton(
              onPressed: onAction,
              style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
              child: Text(actionLabel!),
            ),
        ],
      ),
    );
  }
}

class GbWalletAmountHero extends StatelessWidget {
  const GbWalletAmountHero(this.amount, {super.key, this.caption});
  final String amount;
  final String? caption;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Column(
      children: [
        Text(
          amount,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w800),
        ),
        if (caption != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              caption!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: context.masanawa.textMuted,
              ),
            ),
          ),
      ],
    ),
  );
}
