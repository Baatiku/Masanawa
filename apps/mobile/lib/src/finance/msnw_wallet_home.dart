import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../theme/masanawa_theme.dart';

String formatWalletAtomic(String raw, {int decimals = 6}) {
  if (!RegExp(r'^[0-9]{1,80}$').hasMatch(raw)) {
    throw const FormatException('Invalid exact wallet amount');
  }
  final padded = raw.padLeft(decimals + 1, '0');
  final whole = BigInt.parse(padded.substring(0, padded.length - decimals)).toString();
  final fraction = padded.substring(padded.length - decimals).replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? whole : '$whole.$fraction';
}

class MsnwCustodyBalance {
  const MsnwCustodyBalance(this.available, this.reserved);
  final String available, reserved;
  factory MsnwCustodyBalance.fromJson(dynamic value) {
    if (value is! Map || value['asset'] != 'MSNW' ||
        value['scope'] != 'platform_custody' ||
        value['availableMicro'] is! String || value['reservedMicro'] is! String) {
      throw const FormatException('Unverified custody balance');
    }
    final available = value['availableMicro'] as String;
    final reserved = value['reservedMicro'] as String;
    formatWalletAtomic(available); formatWalletAtomic(reserved);
    return MsnwCustodyBalance(available, reserved);
  }
}

/// A single account's canonical spendable custody balance. Self-custodied
/// on-chain tokens and pending fiat are intentionally not added to this value.
class MsnwWalletBalanceCard extends StatefulWidget {
  const MsnwWalletBalanceCard({super.key, required this.dio,
    required this.baseUrl, required this.accountId, required this.currentUserId,
    required this.accessToken, required this.onFund, this.refreshKey = 0});
  final Dio dio;
  final String baseUrl;
  final String? accountId;
  final String? Function() currentUserId, accessToken;
  final VoidCallback onFund;
  final int refreshKey;
  @override State<MsnwWalletBalanceCard> createState() => _BalanceState();
}
class _BalanceState extends State<MsnwWalletBalanceCard> {
  MsnwCustodyBalance? balance;
  String? error;
  DateTime? refreshed;
  bool busy = false, hidden = false;
  int generation = 0;
  @override void initState() { super.initState(); load(); }
  @override void didUpdateWidget(covariant MsnwWalletBalanceCard old) {
    super.didUpdateWidget(old);
    if (old.accountId != widget.accountId || old.refreshKey != widget.refreshKey) {
      if (old.accountId != widget.accountId) hidden = false;
      load();
    }
  }
  Future<void> load() async {
    final run = ++generation, account = widget.accountId;
    final token = widget.accessToken()?.trim();
    setState(() { busy = true; balance = null; refreshed = null; error = null; });
    if (account == null || widget.currentUserId() != account || token == null || token.isEmpty) {
      setState(() { busy = false; error = 'Sign in to view your balance'; });
      return;
    }
    bool same() => mounted && run == generation && widget.accountId == account &&
      widget.currentUserId() == account && widget.accessToken()?.trim() == token;
    try {
      final response = await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/msnw/custody',
        options: Options(headers: {'Authorization': 'Bearer $token', 'Cache-Control': 'no-store'},
          followRedirects: false, receiveTimeout: const Duration(seconds: 12)));
      final value = MsnwCustodyBalance.fromJson(response.data);
      if (!same()) return;
      setState(() { balance = value; refreshed = DateTime.now(); busy = false; });
    } catch (_) {
      if (!same()) return;
      setState(() { busy = false; error = 'Couldn’t refresh balance'; });
    } finally {
      if (mounted && run == generation && widget.accountId == account &&
          widget.currentUserId() == account && widget.accessToken()?.trim() != token) {
        setState(() { busy = false; balance = null; error = 'Session refreshed. Please retry'; });
      }
    }
  }
  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    final visible = widget.accountId != null && widget.currentUserId() == widget.accountId;
    final value = visible ? balance : null;
    return Container(
      key: const ValueKey('wallet-balance-card'),
      decoration: BoxDecoration(color: u.brandStrong, borderRadius: BorderRadius.circular(24)),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      child: IconTheme(data: const IconThemeData(color: Colors.white), child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            const Expanded(child: Text('Available balance', style: TextStyle(fontWeight: FontWeight.w600))),
            IconButton(tooltip: hidden ? 'Show balance' : 'Hide balance',
              onPressed: () => setState(() => hidden = !hidden),
              icon: Icon(hidden ? Icons.visibility_off_outlined : Icons.visibility_outlined)),
            IconButton(tooltip: 'Refresh balance', onPressed: busy ? null : load,
              icon: const Icon(Icons.refresh)),
          ]),
          if (busy) const Padding(padding: EdgeInsets.only(bottom: 12),
            child: LinearProgressIndicator(minHeight: 2, color: Colors.white, backgroundColor: Colors.white24)),
          Text(hidden ? '••••••' : value == null ? '— MSNW' : '${formatWalletAtomic(value.available)} MSNW',
            key: const ValueKey('wallet-available-amount'),
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
          const SizedBox(height: 6),
          if (value != null && !hidden && BigInt.parse(value.reserved) > BigInt.zero)
            Text('${formatWalletAtomic(value.reserved)} MSNW reserved', style: const TextStyle(color: Colors.white70)),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(child: Text(hidden ? 'Balance hidden' : value == null ? (error ?? 'Updating…') :
              BigInt.parse(value.available) == BigInt.zero ? 'Add money to get started' :
              'Updated ${TimeOfDay.fromDateTime(refreshed!).format(context)}',
              style: const TextStyle(color: Colors.white70, fontSize: 12))),
            if (error != null && widget.accountId != null)
              TextButton(onPressed: busy ? null : load,
                style: TextButton.styleFrom(foregroundColor: Colors.white), child: const Text('Retry')),
            const SizedBox(width: 8),
            FilledButton.icon(onPressed: widget.accountId == null ? null : widget.onFund,
              style: FilledButton.styleFrom(backgroundColor: Colors.white, foregroundColor: u.brandStrong),
              icon: const Icon(Icons.add, size: 18), label: const Text('Fund')),
          ]),
        ]),
      )),
    );
  }
}

class WalletActionRow extends StatelessWidget {
  const WalletActionRow({super.key, required this.onSend, required this.onConvert,
    required this.onReceive, required this.onP2p});
  final VoidCallback? onSend, onConvert, onReceive, onP2p;
  @override Widget build(BuildContext context) {
    final u = context.masanawa;
    Widget action(String label, IconData icon, VoidCallback? tap) => Expanded(
      child: Column(children: [
        IconButton.filledTonal(tooltip: label, onPressed: tap,
          style: IconButton.styleFrom(minimumSize: const Size(56,56),
            backgroundColor: u.brand.withValues(alpha: .09), foregroundColor: u.textPrimary),
          icon: Icon(icon)),
        const SizedBox(height: 6), Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ]));
    return Row(children: [action('Send', Icons.north_east, onSend),
      action('Convert', Icons.swap_horiz, onConvert),
      action('Receive', Icons.south_west, onReceive),
      action('P2P', Icons.people_alt_outlined, onP2p)]);
  }
}
