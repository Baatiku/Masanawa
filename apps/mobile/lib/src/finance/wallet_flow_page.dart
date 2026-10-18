import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/session_state.dart';

/// Financial forms and reviews use normal routes: Back preserves the caller's
/// draft, and only an explicit confirmation returns an affirmative result.
Future<T?> openWalletPage<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  String title = 'Wallet',
  bool wrapScaffold = true,
}) {
  ProviderContainer? container;
  try {
    container = ProviderScope.containerOf(context, listen: false);
  } catch (_) {
    /* Standalone previews have no session. */
  }
  final initial = container?.read(sessionProvider);
  final expected = initial is SessionSignedIn ? initial.user.id : null;
  return Navigator.of(context).push<T>(
    MaterialPageRoute<T>(
      settings: RouteSettings(
        name: '/wallet/${title.toLowerCase().replaceAll(' ', '-')}',
      ),
      builder: (routeContext) {
        final content = expected == null
            ? builder(routeContext)
            : Consumer(
                builder: (context, ref, _) {
                  final current = ref.watch(sessionProvider);
                  if (current is SessionSignedIn && current.user.id == expected)
                    return builder(context);
                  const denied = Center(
                    child: Text('Sign in again to continue'),
                  );
                  return wrapScaffold
                      ? denied
                      : Scaffold(
                          appBar: AppBar(title: Text(title)),
                          body: denied,
                        );
                },
              );
        return wrapScaffold
            ? Scaffold(
                appBar: AppBar(title: Text(title)),
                body: SafeArea(child: content),
              )
            : content;
      },
    ),
  );
}

class WalletReviewContent extends StatelessWidget {
  const WalletReviewContent({
    super.key,
    this.title,
    this.content,
    this.actions,
    this.scrollable = true,
  });
  final Widget? title, content;
  final List<Widget>? actions;
  final bool scrollable;
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      if (title != null)
        DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.headlineSmall,
          child: title!,
        ),
      const SizedBox(height: 24),
      if (content != null) content!,
      const SizedBox(height: 28),
      if (actions != null)
        ...actions!.map(
          (child) =>
              Padding(padding: const EdgeInsets.only(bottom: 10), child: child),
        ),
    ],
  );
}

class WalletChoiceContent extends StatelessWidget {
  const WalletChoiceContent({super.key, this.title, this.children});
  final Widget? title;
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      if (title != null)
        DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.titleLarge,
          child: title!,
        ),
      const SizedBox(height: 16),
      ...?children,
    ],
  );
}

/// Full-screen, searchable choice field. Never opens a popup menu or sheet.
class WalletSelectionField<T> extends StatelessWidget {
  const WalletSelectionField({
    super.key,
    this.initialValue,
    this.value,
    required this.items,
    required this.onChanged,
    this.decoration = const InputDecoration(),
    this.validator,
    this.isExpanded = true,
  });
  final T? initialValue, value;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final InputDecoration decoration;
  final FormFieldValidator<T>? validator;
  final bool isExpanded;
  @override
  Widget build(BuildContext context) {
    final selected = value ?? initialValue;
    return FormField<T>(
      key: ValueKey(selected),
      initialValue: selected,
      validator: validator,
      builder: (field) {
        final matches = (items ?? []).where(
          (item) => item.value == field.value,
        );
        return InkWell(
          onTap: onChanged == null
              ? null
              : () async {
                  final result = await openWalletPage<T>(
                    context: context,
                    title: decoration.labelText ?? 'Choose',
                    builder: (_) => _WalletChoicePicker<T>(
                      items: items ?? [],
                      selected: field.value,
                    ),
                  );
                  if (!context.mounted || result == null) return;
                  field.didChange(result);
                  onChanged!(result);
                },
          child: InputDecorator(
            isEmpty: matches.isEmpty,
            decoration: decoration.copyWith(
              enabled: onChanged != null,
              errorText: field.errorText,
              suffixIcon: const Icon(Icons.chevron_right),
            ),
            child: matches.isEmpty
                ? const SizedBox(height: 24)
                : matches.first.child,
          ),
        );
      },
    );
  }
}

class _WalletChoicePicker<T> extends StatefulWidget {
  const _WalletChoicePicker({required this.items, this.selected});
  final List<DropdownMenuItem<T>> items;
  final T? selected;
  @override
  State<_WalletChoicePicker<T>> createState() => _WalletChoicePickerState<T>();
}

class _WalletChoicePickerState<T> extends State<_WalletChoicePicker<T>> {
  String query = '';
  String label(Widget child) =>
      child is Text ? child.data ?? child.textSpan?.toPlainText() ?? '' : '';
  @override
  Widget build(BuildContext context) {
    final matches = widget.items
        .where(
          (item) =>
              label(item.child).toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: (v) => setState(() => query = v),
            decoration: const InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: matches.isEmpty
              ? const Center(child: Text('No results'))
              : ListView.builder(
                  itemCount: matches.length,
                  itemBuilder: (ctx, index) {
                    final item = matches[index];
                    return ListTile(
                      title: item.child,
                      selected: item.value == widget.selected,
                      trailing: item.value == widget.selected
                          ? const Icon(Icons.check)
                          : null,
                      onTap: item.enabled
                          ? () => Navigator.pop(context, item.value)
                          : null,
                    );
                  },
                ),
        ),
      ],
    );
  }
}
