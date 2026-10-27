import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/app_localizations.dart';
import '../screens/calls/masana_only_calls_screen.dart';
import '../screens/chat/chat_list_screen.dart';
import '../gb_wallet/data_redemption_screen.dart';
import '../screens/status/status_screen.dart';
import '../gb_wallet/gb_wallet_screen.dart';
import '../screens/twin/shell_tab.dart';
import '../ui/components/masanawa_main_header.dart';
import '../theme/masanawa_theme.dart';
import '../state/session_state.dart';

/// Canonical five-tab root shell: Home (Status feed) · Chats · Wallet · Calls · Data.
///
/// This replaces the retired Home · Agents · Wallet · Talk shell. Each tab
/// owns its screen; tabs only switch, they never fetch.
class FiveTabShell extends ConsumerStatefulWidget {
  const FiveTabShell({super.key, this.initialIndex = 0});
  final int initialIndex;

  @override
  ConsumerState<FiveTabShell> createState() => _FiveTabShellState();
}

class _FiveTabShellState extends ConsumerState<FiveTabShell> {
  late int _index;
  late final Set<int> _visitedTabs;
  PageStorageBucket _pageStorageBucket = PageStorageBucket();
  String? _storageOwner;


  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex.clamp(0, 4).toInt();
    _visitedTabs = <int>{_index};
  }

  @override
  void didUpdateWidget(covariant FiveTabShell oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialIndex != widget.initialIndex) {
      _index = widget.initialIndex.clamp(0, 4).toInt();
      _visitedTabs.add(_index);
    }
  }

  void _selectTab(int index) {
    if (index == _index) return;
    setState(() {
      _index = index;
      _visitedTabs.add(index);
    });
    context.go(MasanawaRootTab.values[index].location);
  }

  Widget _page(int index) => switch (index) {
    0 => const StatusScreen(),
    1 => const ChatListScreen(),
    2 => const GbWalletScreen(),
    3 => const MasanaOnlyCallsScreen(),
    _ => const DataRedemptionScreen(),
  };

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    final session = ref.watch(sessionProvider);
    final accountKey = session is SessionSignedIn ? session.user.id : 'signed-out';
    if (_storageOwner != accountKey) {
      // PageStorage is not persisted for the next person who signs in on the
      // same handset. Keyed children alone cannot clear an old bucket.
      _storageOwner = accountKey;
      _pageStorageBucket = PageStorageBucket();
      _index = widget.initialIndex.clamp(0, 4).toInt();
      _visitedTabs..clear()..add(_index);
    }

    return Scaffold(
      appBar: _index == 2 || _index == 4
          ? masanawaMainHeader(context, actions: [
              // Status has no scoped post search yet; the old /search route
              // opens the Masana directory and must not masquerade as Status search.
              IconButton(
                tooltip: 'Notification activity',
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: accountKey == 'signed-out'
                    ? null : () => context.push('/notifications'),
              ),
            ])
          : null,
      body: PageStorage(
        bucket: _pageStorageBucket,
        child: IndexedStack(
          index: _index,
          children: List.generate(
            5,
            (index) => _visitedTabs.contains(index)
                ? KeyedSubtree(
                    key: ValueKey<String>('shell-$accountKey-$index'),
                    child: _page(index),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
      bottomNavigationBar: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: context.masanawa.structuralBorder),
          ),
        ),
        child: NavigationBar(
          animationDuration: MediaQuery.disableAnimationsOf(context)
              ? Duration.zero
              : const Duration(milliseconds: 250),
          selectedIndex: _index,
          onDestinationSelected: _selectTab,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: const Icon(Icons.home),
              label: strings.home,
            ),
            NavigationDestination(
              icon: const Icon(Icons.chat_bubble_outline),
              selectedIcon: const Icon(Icons.chat_bubble),
              label: strings.chats,
            ),
            NavigationDestination(
              icon: const Icon(Icons.account_balance_wallet_outlined),
              selectedIcon: const Icon(Icons.account_balance_wallet),
              label: strings.wallet,
            ),
            NavigationDestination(
              icon: const Icon(Icons.call_outlined),
              selectedIcon: const Icon(Icons.call),
              label: strings.calls,
            ),
            NavigationDestination(
              icon: const Icon(Icons.sim_card_outlined),
              selectedIcon: const Icon(Icons.sim_card),
              label: 'Data',
            ),
          ],
        ),
      ),
    );
  }
}
