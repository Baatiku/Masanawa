import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'feed_api.dart';

/// Shared by Home, detail and Saved through the canonical author header.
class OfficialPostSourceLink extends StatelessWidget {
  const OfficialPostSourceLink({super.key, required this.source});
  final OfficialPostSource source;
  @override
  Widget build(BuildContext context) {
    final ha = Localizations.localeOf(context).languageCode == 'ha';
    final platform = source.platform == 'x' ? 'X' : 'Facebook';
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        alignment: AlignmentDirectional.centerStart,
      ),
      icon: const Icon(Icons.open_in_new, size: 14),
      label: Text(
        ha ? 'Asalin rubutu a $platform' : 'Original post on $platform',
        maxLines: 2,
      ),
      onPressed: () async {
        var opened = false;
        try {
          opened = await launchUrl(
            source.url,
            mode: LaunchMode.externalApplication,
          );
        } catch (_) {
          /* Show a recoverable message below. */
        }
        if (!opened && context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                ha
                    ? 'Ba a iya buɗe asalin rubutu ba.'
                    : 'Could not open the original post.',
              ),
            ),
          );
        }
      },
    );
  }
}
