import 'package:flutter/material.dart';
import 'feed_api.dart';

/// One menu for Home, detail and Saved, with no optimistic moderation success.
class StatusPostSafetyMenu extends StatefulWidget {
  const StatusPostSafetyMenu({
    super.key,
    required this.postId,
    required this.accountKey,
    required this.api,
    required this.isCurrent,
    required this.onHidden,
  });
  final String postId, accountKey;
  final FeedSafetyApi? api;
  final bool Function() isCurrent;
  final VoidCallback onHidden;
  @override
  State<StatusPostSafetyMenu> createState() => _StatusPostSafetyMenuState();
}

class _StatusPostSafetyMenuState extends State<StatusPostSafetyMenu> {
  bool pending = false;
  int epoch = 0;
  @override
  void didUpdateWidget(covariant StatusPostSafetyMenu old) {
    super.didUpdateWidget(old);
    if (old.accountKey != widget.accountKey ||
        old.postId != widget.postId ||
        old.api != widget.api) {
      epoch++;
      pending = false;
    }
  }

  String t(String en, String ha) =>
      Localizations.localeOf(context).languageCode == 'ha' ? ha : en;
  Future<void> perform(String action) async {
    final scope = epoch, account = widget.accountKey, api = widget.api;
    bool current() =>
        mounted &&
        scope == epoch &&
        widget.accountKey == account &&
        widget.isCurrent();
    if (api == null || pending || !current()) return;
    String? reason;
    if (action == 'report') {
      reason = await showDialog<String>(
        context: context,
        builder: (ctx) => SimpleDialog(
          title: Text(t('Report this post', 'Kai rahoton wannan labari')),
          children: [
            for (final entry in const {
              'inaccurate': [
                'Inaccurate information',
                'Bayanin da bai dace ba',
              ],
              'spam': ['Spam', 'Saƙonnin banza'],
              'harassment': ['Harassment', 'Cin zarafi'],
              'hate': ['Hate', 'Ƙiyayya'],
              'violence': ['Violence', 'Tashin hankali'],
              'fraud': ['Fraud', 'Zamba'],
              'impersonation': ['Impersonation', 'Kwaikwayon wani'],
              'privacy': ['Privacy', 'Sirri'],
              'other': ['Other', 'Wani dalili'],
            }.entries)
              SimpleDialogOption(
                onPressed: () => Navigator.pop(ctx, entry.key),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(t(entry.value[0], entry.value[1])),
                ),
              ),
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(t('Cancel', 'Soke')),
            ),
          ],
        ),
      );
      if (reason == null || !current()) return;
    }
    setState(() => pending = true);
    try {
      if (action == 'hide') {
        await api.hidePost(widget.postId, true, current);
        if (current()) widget.onHidden();
      } else {
        final id = await api.reportPost(widget.postId, reason!, current);
        if (mounted && current()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${t('Report received', 'An karɓi rahoto')} · $id'),
            ),
          );
        }
      }
    } catch (_) {
      if (mounted && current()) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              t(
                'Action could not be confirmed. Please retry.',
                'Ba a tabbatar da aikin ba. Sake gwadawa.',
              ),
            ),
          ),
        );
      }
    } finally {
      if (current()) setState(() => pending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.api == null || widget.accountKey.isEmpty) {
      return const SizedBox.shrink();
    }
    return PopupMenuButton<String>(
      enabled: !pending,
      tooltip: t('Post options', 'Zaɓuɓɓukan labari'),
      icon: pending
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.more_horiz),
      onSelected: perform,
      itemBuilder: (_) => [
        PopupMenuItem(
          value: 'hide',
          child: Text(t('Hide this post', 'Ɓoye wannan labari')),
        ),
        PopupMenuItem(
          value: 'report',
          child: Text(t('Report this post', 'Kai rahoton wannan labari')),
        ),
      ],
    );
  }
}
