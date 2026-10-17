import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';

/// Financial forms and reviews use normal routes: Back preserves the caller's
/// draft, and only an explicit confirmation returns an affirmative result.
Future<T?> openWalletPage<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  String title = 'Wallet',
}) {
  ProviderContainer? container;
  try { container = ProviderScope.containerOf(context, listen: false); } catch (_) { /* Standalone previews have no session. */ }
  final initial = container?.read(sessionProvider);
  final expected = initial is SessionSignedIn ? initial.user.id : null;
  return Navigator.of(context).push<T>(MaterialPageRoute<T>(
    settings: RouteSettings(name: '/wallet/${title.toLowerCase().replaceAll(' ', '-')}'),
    builder: (routeContext) => Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(child: expected == null ? builder(routeContext) : Consumer(builder: (context, ref, _) {
        final current = ref.watch(sessionProvider);
        return current is SessionSignedIn && current.user.id == expected
          ? builder(context) : const Center(child: Text('Sign in again to continue'));
      })),
    ),
  ));
}

class WalletReviewContent extends StatelessWidget {
  const WalletReviewContent({super.key, this.title, this.content,
    this.actions, this.scrollable = true});
  final Widget? title, content;
  final List<Widget>? actions;
  final bool scrollable;
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      if (title != null) DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.headlineSmall,
        child: title!),
      const SizedBox(height: 24),
      if (content != null) content!,
      const SizedBox(height: 28),
      if (actions != null) ...actions!.map((child) => Padding(
        padding: const EdgeInsets.only(bottom: 10), child: child)),
    ],
  );
}

class WalletChoiceContent extends StatelessWidget {
  const WalletChoiceContent({super.key, this.title, this.children});
  final Widget? title;
  final List<Widget>? children;
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20), children: [
      if (title != null) DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.titleLarge, child: title!),
      const SizedBox(height: 16), ...?children,
    ],
  );
}
