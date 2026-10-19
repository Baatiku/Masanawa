import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';

/// Format six-decimal MSNW exactly, with no floating-point rounding.
String formatCreatorMsnwAtomic(String value) {
  if (!RegExp(r'^(0|[1-9][0-9]*)$').hasMatch(value)) return 'Unavailable';
  final amount = BigInt.tryParse(value);
  if (amount == null) return 'Unavailable';
  final whole = amount ~/ BigInt.from(1000000);
  final fraction = (amount % BigInt.from(1000000))
      .toString().padLeft(6, '0').replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? '$whole MSNW' : '$whole.$fraction MSNW';
}

/// Account-private statement of allocations already settled to the Wallet.
class CreatorEarningsScreen extends ConsumerStatefulWidget {
  const CreatorEarningsScreen({required this.characterId, required this.displayName, super.key});
  final String characterId;
  final String displayName;
  @override
  ConsumerState<CreatorEarningsScreen> createState() => _CreatorEarningsState();
}
class _CreatorEarningsState extends ConsumerState<CreatorEarningsScreen> {
  String? _owner, _error, _cursor;
  int _version = 0;
  bool _loading = false;
  Map<String, dynamic>? _summary;
  List<Map<String, dynamic>> _items = [];
  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return mounted && session is SessionSignedIn && session.user.id == _owner;
  }
  @override void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    _owner = session is SessionSignedIn ? session.user.id : null;
    _load();
  }
  Future<void> _load({bool more = false}) async {
    if (!_sameAccount || _loading || (more && _cursor == null)) return;
    final version = ++_version;
    setState(() { _loading = true; _error = null; });
    try {
      final response = await ref.read(apiClientProvider).dio.get<Map<String, dynamic>>(
        '/v1/creator/masana/' + Uri.encodeComponent(widget.characterId) + '/earnings',
        queryParameters: more ? {'cursor': _cursor} : null,
      );
      final data = response.data;
      if (data == null || data['asset'] != 'MSNW' ||
          data['atomicDecimals'] != 6 || data['items'] is! List ||
          data['settledAtomic'] is! String || data['pendingAtomic'] is! String ||
          data['reversedAtomic'] is! String ||
          (data['nextCursor'] != null && data['nextCursor'] is! String)) {
        throw const FormatException('Invalid earnings statement');
      }
      final items = (data['items'] as List).map((item) {
        if (item is! Map<String, dynamic> ||
            item['allocationId'] is! String || item['amountAtomic'] is! String ||
            item['state'] is! String || item['createdAt'] is! String) {
          throw const FormatException('Invalid earnings entry');
        }
        return item;
      }).toList();
      if (!_sameAccount || version != _version) return;
      setState(() {
        _summary = data;
        _items = more ? [..._items, ...items] : items;
        _cursor = data['nextCursor'] as String?;
      });
    } catch (_) {
      if (_sameAccount && version == _version) {
        setState(() => _error = 'Earnings are unavailable. Check your connection and retry.');
      }
    } finally {
      if (_sameAccount && version == _version) setState(() => _loading = false);
    }
  }

  @override Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) {
      return Scaffold(appBar: AppBar(title: const Text('Creator earnings')),
        body: const Center(child: Text('Sign in to view your earnings.')));
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Creator earnings')),
      body: RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          children: [
            Text(widget.displayName, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            const Text('Settled allocations are credited to your MSNW Wallet. '
                'Pending amounts cannot be spent. This is a statement, not a second balance.'),
            const SizedBox(height: 16),
            if (_loading && _summary == null)
              const Center(child: Padding(padding: EdgeInsets.all(28),
                child: CircularProgressIndicator())),
            if (_summary != null) ...[
              _amountTile('Settled to Wallet', _summary!['settledAtomic']?.toString()),
              _amountTile('Pending', _summary!['pendingAtomic']?.toString()),
              _amountTile('Reversed', _summary!['reversedAtomic']?.toString()),
              const Divider(height: 28),
              Text('Allocations', style: Theme.of(context).textTheme.titleMedium),
              if (_items.isEmpty)
                const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text('No creator earnings yet.')),
              for (final item in _items)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.receipt_long_outlined),
                  title: Text(formatCreatorMsnwAtomic(item['amountAtomic']?.toString() ?? '')),
                  subtitle: Text(item['state'].toString() + ' · ' + item['createdAt'].toString(),
                    maxLines: 2, overflow: TextOverflow.ellipsis),
                  trailing: item['state'] == 'settled'
                      ? const Icon(Icons.check_circle_outline) : null,
                ),
              if (_cursor != null)
                Center(child: OutlinedButton(
                  onPressed: _loading ? null : () => _load(more: true),
                  child: const Text('Load more'),
                )),
            ],
            if (_error != null) ...[
              const SizedBox(height: 16),
              Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              OutlinedButton.icon(
                onPressed: _loading ? null : () => _load(more: _summary != null && _cursor != null),
                icon: const Icon(Icons.refresh), label: const Text('Retry'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _amountTile(String label, String? atomic) => ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(label),
    trailing: Text(formatCreatorMsnwAtomic(atomic ?? ''),
      style: Theme.of(context).textTheme.titleSmall),
  );
}
