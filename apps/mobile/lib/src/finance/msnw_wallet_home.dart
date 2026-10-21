import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/masanawa_theme.dart';

String formatWalletAtomic(String raw, {int decimals = 6}) {
  if (!RegExp(r'^[0-9]{1,80}$').hasMatch(raw)) {
    throw const FormatException('Invalid exact wallet amount');
  }
  final padded = raw.padLeft(decimals + 1, '0');
  final whole = BigInt.parse(
    padded.substring(0, padded.length - decimals),
  ).toString();
  final fraction = padded
      .substring(padded.length - decimals)
      .replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? whole : '$whole.$fraction';
}

class MsnwCustodyBalance {
  const MsnwCustodyBalance(this.available, this.reserved);
  final String available, reserved;
  factory MsnwCustodyBalance.fromJson(dynamic value) {
    if (value is! Map ||
        value['asset'] != 'MSNW' ||
        value['scope'] != 'platform_custody' ||
        value['availableMicro'] is! String ||
        value['reservedMicro'] is! String) {
      throw const FormatException('Unverified custody balance');
    }
    final available = value['availableMicro'] as String;
    final reserved = value['reservedMicro'] as String;
    formatWalletAtomic(available);
    formatWalletAtomic(reserved);
    return MsnwCustodyBalance(available, reserved);
  }
}

/// A single account's canonical spendable custody balance. Self-custodied
/// on-chain tokens and pending fiat are intentionally not added to this value.
class MsnwWalletBalanceCard extends StatefulWidget {
  const MsnwWalletBalanceCard({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.accountId,
    required this.currentUserId,
    required this.accessToken,
    required this.onFund,
    this.refreshKey = 0,
    this.onBalance,
    this.onVisibilityChanged,
  });
  final Dio dio;
  final String baseUrl;
  final String? accountId;
  final String? Function() currentUserId, accessToken;
  final VoidCallback onFund;
  final int refreshKey;
  final ValueChanged<MsnwCustodyBalance?>? onBalance;
  final ValueChanged<bool>? onVisibilityChanged;
  @override
  State<MsnwWalletBalanceCard> createState() => _BalanceState();
}

class _BalanceState extends State<MsnwWalletBalanceCard> {
  MsnwCustodyBalance? balance;
  String? error;
  DateTime? refreshed;
  bool busy = false, hidden = false;
  int generation = 0;
  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void didUpdateWidget(covariant MsnwWalletBalanceCard old) {
    super.didUpdateWidget(old);
    if (old.accountId != widget.accountId ||
        old.refreshKey != widget.refreshKey) {
      if (old.accountId != widget.accountId) hidden = false;
      load();
    }
  }

  Future<void> load() async {
    final run = ++generation, account = widget.accountId;
    final token = widget.accessToken()?.trim();
    setState(() {
      busy = true;
      balance = null;
      refreshed = null;
      error = null;
    });
    if (account == null ||
        widget.currentUserId() != account ||
        token == null ||
        token.isEmpty) {
      setState(() {
        busy = false;
        error = 'Sign in to view your balance';
      });
      return;
    }
    bool same() =>
        mounted &&
        run == generation &&
        widget.accountId == account &&
        widget.currentUserId() == account &&
        widget.accessToken()?.trim() == token;
    try {
      final response = await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/msnw/custody',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Cache-Control': 'no-store',
          },
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 12),
        ),
      );
      final value = MsnwCustodyBalance.fromJson(response.data);
      if (!same()) return;
      setState(() {
        balance = value;
        refreshed = DateTime.now();
        busy = false;
      });
      widget.onBalance?.call(value);
    } catch (_) {
      if (!same()) return;
      setState(() {
        busy = false;
        error = 'Couldn’t refresh balance';
      });
      widget.onBalance?.call(null);
    } finally {
      if (mounted &&
          run == generation &&
          widget.accountId == account &&
          widget.currentUserId() == account &&
          widget.accessToken()?.trim() != token) {
        setState(() {
          busy = false;
          balance = null;
          error = 'Session refreshed. Please retry';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final ink =
        ThemeData.estimateBrightnessForColor(u.brand) == Brightness.light
        ? Colors.black
        : Colors.white;
    final visible =
        widget.accountId != null && widget.currentUserId() == widget.accountId;
    final value = visible ? balance : null;
    return Container(
      key: const ValueKey('wallet-balance-card'),
      decoration: BoxDecoration(
        color: u.brand,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      child: IconTheme(
        data: IconThemeData(color: ink),
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: ink),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Available balance',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                    tooltip: hidden ? 'Show balance' : 'Hide balance',
                    onPressed: () {setState(() => hidden = !hidden);widget.onVisibilityChanged?.call(hidden);},
                    icon: Icon(
                      hidden
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  IconButton(
                    tooltip: 'Refresh balance',
                    onPressed: busy ? null : load,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
              if (busy)
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: LinearProgressIndicator(
                    minHeight: 2,
                    color: ink,
                    backgroundColor: ink.withValues(alpha: .12),
                  ),
                ),
              Text(
                hidden
                    ? '••••••'
                    : value == null
                    ? '— MSNW'
                    : '${formatWalletAtomic(value.available)} MSNW',
                key: const ValueKey('wallet-available-amount'),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              if (value != null &&
                  !hidden &&
                  BigInt.parse(value.reserved) > BigInt.zero)
                Text(
                  '${formatWalletAtomic(value.reserved)} MSNW reserved',
                  style: TextStyle(color: ink.withValues(alpha: .75)),
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      hidden
                          ? 'Balance hidden'
                          : value == null
                          ? (error ?? 'Updating…')
                          : BigInt.parse(value.available) == BigInt.zero
                          ? (BigInt.parse(value.reserved)>BigInt.zero?'Funds reserved':'No funds yet')
                          : 'Updated ${TimeOfDay.fromDateTime(refreshed!).format(context)}',
                      style: TextStyle(
                        color: ink.withValues(alpha: .75),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  if (error != null && widget.accountId != null)
                    TextButton(
                      onPressed: busy ? null : load,
                      style: TextButton.styleFrom(foregroundColor: ink),
                      child: const Text('Retry'),
                    ),
                  const SizedBox(width: 8),
                  FilledButton.icon(
                    onPressed: widget.accountId == null ? null : widget.onFund,
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: ink,
                    ),
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Fund'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletActionRow extends StatelessWidget {
  const WalletActionRow({
    super.key,
    required this.onSend,
    required this.onConvert,
    required this.onReceive,
    required this.onP2p,
  });
  final VoidCallback? onSend, onConvert, onReceive, onP2p;
  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    Widget action(String label, IconData icon, VoidCallback? tap) => Expanded(
      child: Tooltip(
        message: label,
        child: InkWell(
          onTap: tap,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: u.brand.withValues(alpha: .09),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  icon,
                  color: tap == null ? u.textMuted : u.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: tap == null ? u.textMuted : u.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return LayoutBuilder(builder: (context, constraints) {
      // Keep the four actions together. Large accessibility text may scroll
      // horizontally instead of changing the order into a second row.
      final scale = MediaQuery.textScalerOf(context).scale(1);
      final minimum = scale > 1.35 ? 112.0 : 64.0;
      final width = constraints.maxWidth < minimum * 4
          ? minimum * 4 : constraints.maxWidth;
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(width: width, child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            action('Send', Icons.north_east, onSend),
            action('Convert', Icons.swap_horiz, onConvert),
            action('Receive', Icons.south_west, onReceive),
            action('P2P', Icons.people_alt_outlined, onP2p),
          ],
        )),
      );
    });
  }
}

/// Internal account identifier, independent of phone and external chain address.
class MsnwAccountBadge extends StatefulWidget {
  const MsnwAccountBadge({super.key, required this.dio, required this.baseUrl,
    required this.accountId, required this.currentUserId, required this.accessToken});
  final Dio dio;
  final String baseUrl;
  final String? accountId;
  final String? Function() currentUserId, accessToken;
  @override
  State<MsnwAccountBadge> createState() => _AccountBadgeState();
}
class _AccountBadgeState extends State<MsnwAccountBadge> {
  String? number, error;
  bool loading = true;
  int generation = 0;
  @override
  void initState() { super.initState(); load(); }
  @override
  void didUpdateWidget(covariant MsnwAccountBadge oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountId != widget.accountId) load();
  }
  Future<void> load() async {
    final run = ++generation, account = widget.accountId;
    final token = widget.accessToken()?.trim();
    setState(() { number = null; error = null; loading = true; });
    if (account == null || account != widget.currentUserId() || token == null || token.isEmpty) {
      setState(() { loading = false; error = 'Sign in to view your account number'; });
      return;
    }
    bool same() => mounted && run == generation && widget.accountId == account &&
      widget.currentUserId() == account && widget.accessToken()?.trim() == token;
    try {
      final response = await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/account',
        options: Options(headers: {'Authorization': 'Bearer $token'},
          followRedirects: false, receiveTimeout: const Duration(seconds: 12)));
      if (!same()) return;
      final raw = response.data;
      if (raw is! Map || raw['accountNumber'] is! String ||
          !RegExp(r'^8[0-9]{9}$').hasMatch(raw['accountNumber'] as String)) {
        throw const FormatException('Invalid Masanawa account number');
      }
      setState(() { number = raw['accountNumber'] as String; loading = false; });
    } catch (_) {
      if (same()) setState(() { loading = false; error = 'Account number unavailable'; });
    } finally {
      if (mounted && run == generation && widget.accountId == account &&
          widget.currentUserId() == account && widget.accessToken()?.trim() != token) {
        setState(() { number = null; loading = false; error = 'Session refreshed. Please retry'; });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    final visible = widget.accountId != null && widget.currentUserId() == widget.accountId;
    if (!visible) return const SizedBox.shrink();
    final value = number;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text('Masanawa account number'),
      subtitle: loading ? const LinearProgressIndicator() : Text(value == null
        ? error ?? 'Account number unavailable'
        : '${value.substring(0,4)} ${value.substring(4,7)} ${value.substring(7)}',
        textDirection: value == null ? null : TextDirection.ltr),
      trailing: value == null
        ? IconButton(tooltip: 'Retry account number', onPressed: loading ? null : load,
            icon: const Icon(Icons.refresh))
        : IconButton(tooltip: 'Copy Masanawa account number', icon: const Icon(Icons.copy),
            onPressed: () async {
              if (!visible || widget.currentUserId() != widget.accountId) return;
              await Clipboard.setData(ClipboardData(text: value));
              if (context.mounted && widget.currentUserId() == widget.accountId) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account number copied')));
              }
            }),
    );
  }
}
