import 'wallet_flow_page.dart';
import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

String? parseMsnwMicro(String value) {
    final trimmed = value.trim();
    if (!RegExp(r'^[0-9]{1,18}(\.[0-9]{1,6})?$').hasMatch(trimmed)) return null;
    final parts = trimmed.split('.');
    final atomic = BigInt.parse(parts[0]) * BigInt.from(1000000) +
      BigInt.parse(parts.length == 2 ? parts[1].padRight(6, '0') : '0');
    return atomic > BigInt.zero ? atomic.toString() : null;
  }

/// Platform-custodied MSNW only. External self-custodied on-chain tokens and
/// fiat funding awaiting backing are never counted as available Send funds.
class MsnwCustodySendSheet extends StatefulWidget {
  const MsnwCustodySendSheet({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.expectedUserId,
    required this.currentUserId,
    required this.accessToken,
    required this.onCompleted,
  });
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  final VoidCallback onCompleted;
  @override
  State<MsnwCustodySendSheet> createState() => _MsnwCustodySendSheetState();
}

class _MsnwCustodySendSheetState extends State<MsnwCustodySendSheet> {
  final recipient = TextEditingController();
  final quantity = TextEditingController();
  final random = Random.secure();
  Map<String, dynamic>? preview;
  Map<String, dynamic>? receipt;
  String? key;
  String? error;
  bool busy = false;

  @override
  void initState() {
    super.initState();
    recipient.addListener(invalidate);
    quantity.addListener(invalidate);
  }
  @override
  void dispose() {
    recipient.removeListener(invalidate);
    quantity.removeListener(invalidate);
    recipient.dispose();
    quantity.dispose();
    super.dispose();
  }
  void invalidate() {
    if (mounted) setState(() {
      preview = null; receipt = null; key = null; error = null;
    });
  }
  String operationKey() =>
    base64UrlEncode(List<int>.generate(24, (_) => random.nextInt(256)))
      .replaceAll('=', '');
  Options headers(String token) => Options(
    headers: {'Authorization': 'Bearer $token'},
    followRedirects: false, receiveTimeout: const Duration(seconds: 15),
  );
  bool sameSession(String token) =>
    mounted && widget.currentUserId() == widget.expectedUserId &&
    widget.accessToken()?.trim() == token;

  Future<void> check() async {
    if (busy || widget.currentUserId() != widget.expectedUserId) return;
    final atomic = parseMsnwMicro(quantity.text);
    if (atomic == null || recipient.text.trim().isEmpty) {
      setState(() => error = 'Enter a recipient email or +234 phone and a positive '
        'MSNW amount with up to six decimal places.');
      return;
    }
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) return;
    setState(() { busy = true; error = null; });
    try {
      final result = await widget.dio.post<dynamic>(
        widget.baseUrl.replaceFirst(RegExp(r'/$'), '') +
          '/v1/wallet/msnw/send/preview',
        data: {'recipient': recipient.text.trim(), 'amountMicro': atomic},
        options: headers(token),
      );
      if (!sameSession(token)) return;
      final raw = result.data;
      if (raw is! Map || raw['asset'] != 'MSNW' ||
          raw['recipientUserId'] is! String ||
          raw['recipientName'] is! String ||
          raw['amountMicro'] != atomic || raw['feeMicro'] != '0') {
        throw const FormatException('Invalid MSNW transfer preview');
      }
      setState(() {
        preview = raw.cast<String, dynamic>();
        key = operationKey();
      });
    } catch (_) {
      if (sameSession(token)) setState(() => error =
        'Cannot quote this transfer. Confirm the recipient and available '
        'custodied MSNW balance before retrying.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Future<void> send() async {
    final current = preview, idempotencyKey = key;
    final token = widget.accessToken()?.trim();
    if (busy || current == null || idempotencyKey == null ||
        token == null || token.isEmpty || !sameSession(token)) return;
    final confirmed = await openWalletPage<bool>(
      context: context, title: 'Review transfer',
      builder: (ctx) => WalletReviewContent(
        title: const Text('Confirm MSNW transfer'),
        content: Text('Send ' + quantity.text.trim() + ' MSNW to ' +
          (current['recipientName'] as String) +
          '? Check the recipient carefully. Completed transfers cannot be reversed.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Confirm & send')),
        ],
      ),
    );
    if (confirmed != true || !sameSession(token)) return;
    setState(() { busy = true; error = null; });
    try {
      final result = await widget.dio.post<dynamic>(
        widget.baseUrl.replaceFirst(RegExp(r'/$'), '') +
          '/v1/wallet/msnw/send',
        data: {
          'recipient': recipient.text.trim(),
          'recipientUserId': current['recipientUserId'],
          'amountMicro': current['amountMicro'],
          'idempotencyKey': idempotencyKey,
        },
        options: headers(token),
      );
      if (!sameSession(token)) return;
      final raw = result.data;
      if (raw is! Map || raw['asset'] != 'MSNW' ||
          raw['state'] != 'completed' || raw['operationId'] is! String ||
          raw['amountMicro'] != current['amountMicro']) {
        throw const FormatException('Invalid MSNW receipt');
      }
      setState(() { receipt = raw.cast<String, dynamic>(); preview = null; });
      widget.onCompleted();
    } catch (_) {
      if (sameSession(token)) setState(() => error =
        'Transfer status could not be confirmed. Retry the SAME transfer '
        'without editing it; your idempotency key protects against double spending.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => SafeArea(child: SingleChildScrollView(
    padding: EdgeInsets.fromLTRB(20, 12, 20,
      20 + MediaQuery.viewInsetsOf(context).bottom),
    child: Column(mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Send MSNW', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        const Text('Send MSNW to another Masanawa user.'),
        const SizedBox(height: 10),
        TextField(controller: recipient, enabled: !busy && receipt == null,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Recipient email or +234 phone')),
        TextField(controller: quantity, enabled: !busy && receipt == null,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(labelText: 'Amount (MSNW)')),
        if (error != null) Padding(padding: const EdgeInsets.only(top: 8),
          child: Text(error!,
            style: TextStyle(color: Theme.of(context).colorScheme.error))),
        if (busy) const LinearProgressIndicator(),
        if (preview != null && receipt == null) ...[
          ListTile(title: Text(preview!['recipientName'] as String),
            subtitle: Text('Recipient ID: ' +
              (preview!['recipientUserId'] as String))),
          const Text('Network transfers or platform conversion fees are '
            'not included. In-platform Send fee: 0 MSNW.'),
          FilledButton(onPressed: busy ? null : send,
            child: const Text('Review and confirm')),
        ] else if (receipt == null)
          FilledButton(onPressed: busy ? null : check,
            child: const Text('Check recipient and available balance')),
        if (receipt != null) ...[
          const SizedBox(height: 12),
          const Text('Transfer completed',
            style: TextStyle(fontWeight: FontWeight.bold)),
          SelectableText('Receipt: ' + (receipt!['operationId'] as String)),
          Text('MSNW sent: ' + quantity.text.trim()),
          FilledButton(onPressed: () => Navigator.pop(context),
            child: const Text('Done')),
        ],
      ],
    ),
  ));
}

/// Authenticated balance and transaction history of the internal custody
/// account. Never confuses externally owned on-chain wallet funds with MSNW
/// backed by the platform's reconciled custody reserve.
class MsnwCustodyActivity extends StatefulWidget {
  const MsnwCustodyActivity({
    super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId,
    required this.accessToken,
  });
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  @override
  State<MsnwCustodyActivity> createState() => _MsnwCustodyActivityState();
}
class _MsnwCustodyActivityState extends State<MsnwCustodyActivity> {
  Map<String,dynamic>? balance;
  List<Map<String,dynamic>> entries = const [];
  String? error;
  bool busy = false;
  @override
  void initState() { super.initState(); refresh(); }
  Future<void> refresh() async {
    final token = widget.accessToken()?.trim();
    if (busy || token == null || token.isEmpty ||
        widget.currentUserId() != widget.expectedUserId) return;
    setState(() { busy = true; error = null; });
    try {
      final root = widget.baseUrl.replaceFirst(RegExp(r'/$'), '');
      final opts = Options(headers: {'Authorization': 'Bearer $token'},
        followRedirects: false, receiveTimeout: const Duration(seconds: 12));
      final results = await Future.wait([
        widget.dio.get<dynamic>(root + '/v1/wallet/msnw/custody', options: opts),
        widget.dio.get<dynamic>(root + '/v1/wallet/msnw/transactions', options: opts),
      ]);
      if (!mounted || widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token) return;
      final first = results[0].data, second = results[1].data;
      if (first is! Map || first['asset'] != 'MSNW' ||
          first['scope'] != 'platform_custody' ||
          first['availableMicro'] is! String ||
          first['reservedMicro'] is! String ||
          second is! Map || second['items'] is! List) {
        throw const FormatException('Invalid custody response');
      }
      final list = second['items'] as List;
      if (list.length > 100 || list.any((e) => e is! Map ||
          e['asset'] != 'MSNW' || e['operationId'] is! String ||
          e['amountMicro'] is! String ||
          !const ['sent','received'].contains(e['direction']))) {
        throw const FormatException('Invalid transaction history');
      }
      setState(() {
        balance = first.cast<String,dynamic>();
        entries = list.map((e) => (e as Map).cast<String,dynamic>()).toList();
      });
    } catch (_) {
      if (mounted) setState(() => error = 'MSNW custody history unavailable.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }
  String display(String raw) {
    final whole = BigInt.parse(raw);
    final units = whole ~/ BigInt.from(1000000);
    final fraction = (whole % BigInt.from(1000000)).toString().padLeft(6,'0');
    return units.toString() + '.' + fraction + ' MSNW';
  }
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (busy) const LinearProgressIndicator(),
      if (error != null) ListTile(
        title: Text(error!),
        trailing: TextButton(onPressed: refresh,child: const Text('Retry'))),
      if (balance != null) ListTile(
        leading: const Icon(Icons.savings_outlined),
        title: Text('Custodied available: ' +
          display(balance!['availableMicro'] as String)),
        subtitle: Text('Reserved: ' + display(balance!['reservedMicro'] as String))),
      if (entries.isEmpty && !busy)
        const ListTile(title: Text('No completed MSNW custody transfers yet')),
      for (final entry in entries.take(10))
        ListTile(
          leading: Icon(entry['direction'] == 'sent'
            ? Icons.north_east : Icons.south_west),
          title: Text((entry['direction'] == 'sent' ? 'Sent ' : 'Received ') +
            display(entry['amountMicro'] as String)),
          subtitle: Text('Receipt: ' + (entry['operationId'] as String)),
        ),
      Align(alignment: Alignment.centerRight,
        child: TextButton(onPressed: busy ? null : refresh,
          child: const Text('Refresh custody activity'))),
    ],
  );
}

