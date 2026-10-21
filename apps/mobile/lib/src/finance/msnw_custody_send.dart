import 'wallet_flow_page.dart';
import '../core/wallet_payment_request.dart';
import 'wallet_recipient_book.dart';
import 'msnw_wallet_home.dart' show formatWalletAtomic;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

String? parseMsnwMicro(String value) => parseMsnwRequestAmount(value);

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
    this.paymentRequest,
  });
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  final VoidCallback onCompleted;
  final WalletPaymentRequest? paymentRequest;
  @override
  State<MsnwCustodySendSheet> createState() => _MsnwCustodySendSheetState();
}

class _MsnwCustodySendSheetState extends State<MsnwCustodySendSheet> {
  final recipient = TextEditingController();
  final quantity = TextEditingController();
  final random = Random.secure();
  final storage = const FlutterSecureStorage();
  List<Map<String,String>> savedRecipients=[];
  String? expectedSavedRecipientId;
  String? verifiedRecipientAccount, verifiedRecipientId, verifiedRecipientName;
  WalletRecipientBook get recipientBook=>WalletRecipientBook(widget.expectedUserId);
  Future<void> loadRecipients()async{
    final token=widget.accessToken()?.trim();if(token==null||!sameSession(token))return;
    try{final rows=await recipientBook.read();if(sameSession(token))setState(()=>savedRecipients=rows);}catch(_){if(sameSession(token))setState(()=>error='Saved recipients could not be loaded.');}
  }
  Future<void> saveRecipient()async{
    final token=widget.accessToken()?.trim();
    if(token==null||!sameSession(token)||receipt==null||verifiedRecipientAccount==null||verifiedRecipientId!=receipt!['recipientUserId'])return;
    try{await recipientBook.save(userId:verifiedRecipientId!,accountNumber:verifiedRecipientAccount!,name:verifiedRecipientName??'Recipient');if(sameSession(token))await loadRecipients();}
    catch(_){if(sameSession(token))setState(()=>error='Recipient could not be saved.');}
  }
  Map<String, dynamic>? pending;
  String get pendingStorageKey => 'msnw.send.pending.v1.${widget.expectedUserId}';
  Map<String, dynamic>? preview;
  Map<String, dynamic>? receipt;
  String? key;
  String? error;
  bool busy = false;
  Timer? lookupTimer;
  int lookupGeneration = 0;
  bool lookingUp = false;
  Map<String, dynamic>? recipientCard;
  String? lookupError;

  void recipientChanged() {
    expectedSavedRecipientId=null;
    verifiedRecipientAccount=null;verifiedRecipientId=null;verifiedRecipientName=null;
    invalidate();
    lookupTimer?.cancel();
    final run = ++lookupGeneration;
    setState(() { recipientCard = null; lookupError = null; lookingUp = false; });
    final value = recipient.text.trim();
    if (!RegExp(r'^8[0-9]{9}$|^8[0-9]{3} [0-9]{3} [0-9]{3}$|^@[a-zA-Z0-9_][a-zA-Z0-9._-]{1,39}$|^[^\s@]+@[^\s@]+\.[^\s@]+$|^\+[1-9][0-9]{6,14}$').hasMatch(value)) return;
    lookupTimer = Timer(const Duration(milliseconds: 300), () => lookupRecipient(value, run));
  }

  Future<void> lookupRecipient(String value, int run) async {
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty || !sameSession(token)) return;
    setState(() { lookingUp = true; lookupError = null; });
    try {
      final response = await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/lookup',
        queryParameters: {'query': value}, options: headers(token));
      if (!sameSession(token) || run != lookupGeneration) return;
      final raw = response.data;
      if (raw is! Map || raw['found'] != true || raw['userId'] is! String || raw['displayName'] is! String) {
        throw const FormatException('Invalid recipient');
      }
      if(expectedSavedRecipientId!=null&&raw['userId']!=expectedSavedRecipientId)throw const FormatException('Saved identity changed');
      setState(() {
        recipientCard=raw.cast<String,dynamic>();
        verifiedRecipientAccount=raw['accountNumber'] is String?raw['accountNumber']:null;
        verifiedRecipientId=raw['userId'];verifiedRecipientName=raw['displayName'];
      });
    } catch (_) {
      if (sameSession(token) && run == lookupGeneration) setState(() =>
        lookupError = 'Recipient unavailable. Check the account number or handle and retry.');
    } finally {
      if (mounted && run == lookupGeneration) setState(() => lookingUp = false);
    }
  }

  Future<void> pasteRecipient() async {
    final token = widget.accessToken()?.trim();
    if (token == null || !sameSession(token) || busy) return;
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (!sameSession(token) || busy) return;
    final value = data?.text?.trim();
    if (value != null && value.length <= 320) recipient.text = value;
  }


  @override
  void initState() {
    super.initState();
    recipient.addListener(recipientChanged);
    quantity.addListener(invalidate);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(!mounted)return;
      final request=widget.paymentRequest;
      if(request!=null&&request.expiresAt.isAfter(DateTime.now().toUtc())){
        recipient.text=request.accountNumber;
        expectedSavedRecipientId=request.userId;
        if(request.amountAtomic!=null)quantity.text=formatWalletAtomic(request.amountAtomic!);
      }
      restorePending();loadRecipients();
    });
  }
  @override
  void dispose() {
    lookupTimer?.cancel();
    recipient.removeListener(recipientChanged);
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
      setState(() => error = 'Enter a Masanawa account number or @handle and a positive '
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
      if(expectedSavedRecipientId!=null && (raw is! Map || raw['recipientUserId']!=expectedSavedRecipientId))throw const FormatException('Saved identity changed');
      if (raw is! Map || raw['asset'] != 'MSNW' ||
          raw['recipientUserId'] is! String ||
          raw['recipientName'] is! String ||
          raw['amountMicro'] != atomic || raw['feeMicro'] != '0' ||
          (raw['recentTransfer'] != null && (raw['recentTransfer'] is! Map ||
            raw['recentTransfer']['operationId'] is! String || raw['recentTransfer']['createdAt'] is! String ||
            raw['recentTransfer']['state'] != 'completed'))) {
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

  // Store the *original* authorized request before network I/O, encrypted and
  // fenced by account. Never mint a new key for an uncertain outcome.
  bool validPending(Map<String, dynamic> value) =>
      value['recipient'] is String &&
      value['recipientUserId'] is String &&
      value['amountMicro'] is String &&
      RegExp(r'^[1-9][0-9]{0,23}$').hasMatch(value['amountMicro'] as String) &&
      value['idempotencyKey'] is String &&
      RegExp(r'^[A-Za-z0-9:_-]{16,128}$')
          .hasMatch(value['idempotencyKey'] as String) &&
      (value['repeatOf'] == null || value['repeatOf'] is String &&
        RegExp(r'^[0-9a-fA-F-]{36}$').hasMatch(value['repeatOf'] as String));

  Future<void> restorePending() async {
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty || !sameSession(token)) return;
    try {
      final raw = await storage.read(key: pendingStorageKey);
      if (!sameSession(token) || raw == null) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map) throw const FormatException('Invalid saved transfer');
      final value = decoded.cast<String, dynamic>();
      if (!validPending(value)) throw const FormatException('Invalid saved transfer');
      setState(() => pending = value);
      await recoverPending();
    } catch (_) {
      if (sameSession(token)) setState(() => error =
          'A previous transfer could not be recovered. Check custody history '
          'before making another transfer.');
    }
  }

  Future<void> recoverPending() async {
    final original = pending;
    final token = widget.accessToken()?.trim();
    if (busy || original == null || !validPending(original) ||
        token == null || token.isEmpty || !sameSession(token)) return;
    setState(() { busy = true; error = null; });
    try {
      final result = await widget.dio.get<dynamic>(
        widget.baseUrl.replaceFirst(RegExp(r'/$'), '') +
            '/v1/wallet/msnw/send/status/' +
            Uri.encodeComponent(original['idempotencyKey'] as String),
        options: headers(token),
      );
      if (!sameSession(token)) return;
      final raw = result.data;
      if (raw is! Map || raw['asset'] != 'MSNW' ||
          raw['state'] != 'completed' || raw['operationId'] is! String ||
          raw['recipientUserId'] != original['recipientUserId'] ||
          raw['amountMicro'] != original['amountMicro']) {
        throw const FormatException('Transfer status mismatched the original request');
      }
      try { await storage.delete(key: pendingStorageKey); } catch (_) {
        // A later authenticated lookup can safely rediscover this receipt.
      }
      if (!sameSession(token)) return;
      setState(() { receipt = raw.cast<String, dynamic>();
        pending = null; preview = null; key = null; });
      widget.onCompleted();
    } on DioException catch (e) {
      if (sameSession(token)) setState(() => error =
          e.response?.statusCode == 404
              ? 'No completed transfer found yet. Only retry the original '
                  'request below; do not start another transfer.'
              : 'Transfer status unavailable. Check again or retry the '
                  'original request; it keeps the same protected reference.');
    } catch (_) {
      if (sameSession(token)) setState(() => error =
          'Transfer details could not be confirmed. Do not start a new '
          'transfer; contact support with the original request reference.');
    } finally {
      if (sameSession(token)) setState(() => busy = false);
    }
  }

  Future<void> retryPending() async {
    final original = pending;
    final token = widget.accessToken()?.trim();
    if (busy || original == null || !validPending(original) ||
        token == null || token.isEmpty || !sameSession(token)) return;
    final approved = await openWalletPage<bool>(
      context: context, title: 'Recover transfer',
      builder: (ctx) => WalletReviewContent(
        title: const Text('Retry the original request?'),
        content: Text('This checks or completes the SAME MSNW transfer to ' +
          (original['recipient'] as String) + '. It does not create a new '
          'request or authorize a different amount.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Retry original')),
        ],
      ),
    );
    if (approved == true && sameSession(token)) await submitOriginal(original, token);
  }

  Future<void> submitOriginal(Map<String, dynamic> original, String token) async {
    if (busy || !sameSession(token)) return;
    setState(() { busy = true; error = null; });
    try {
      final result = await widget.dio.post<dynamic>(
        widget.baseUrl.replaceFirst(RegExp(r'/$'), '') +
            '/v1/wallet/msnw/send',
        data: original, options: headers(token),
      );
      if (!sameSession(token)) return;
      final raw = result.data;
      if (raw is! Map || raw['asset'] != 'MSNW' ||
          raw['state'] != 'completed' || raw['operationId'] is! String ||
          raw['recipientUserId'] != original['recipientUserId'] ||
          raw['amountMicro'] != original['amountMicro']) {
        throw const FormatException('Invalid MSNW receipt');
      }
      try { await storage.delete(key: pendingStorageKey); } catch (_) {
        // Retaining an encrypted request only triggers a safe status lookup.
      }
      if (!sameSession(token)) return;
      setState(() { receipt = raw.cast<String, dynamic>(); preview = null;
        pending = null; key = null; });
      widget.onCompleted();
    } on DioException catch (e) {
      final data = e.response?.data;
      if (e.response?.statusCode == 409 && data is Map &&
          data['error'] == 'msnw.repeat_confirmation_required') {
        // A canonical rejection rolled back this request; it is not an unknown debit.
        try { await storage.delete(key: pendingStorageKey); } catch (_) {}
        if (sameSession(token)) setState(() {
          pending = null; preview = null; key = null;
          error = 'A matching transfer completed recently. Check the recipient again and review the warning before intentionally sending again.';
        });
      } else if (sameSession(token)) {
        setState(() => error = 'Transfer outcome is uncertain. Check its status or retry the original request with the same reference. Never start a new one.');
      }
    } catch (_) {
      if (sameSession(token)) setState(() => error =
          'Transfer outcome is uncertain. Check its status or retry the '
          'original request with the same reference. Never start a new one.');
    } finally {
      if (sameSession(token)) setState(() => busy = false);
    }
  }

  Future<void> send() async {
    final current = preview, idempotencyKey = key;
    final token = widget.accessToken()?.trim();
    if (busy || pending != null || current == null || idempotencyKey == null ||
        token == null || token.isEmpty || !sameSession(token)) return;
    final recent = current['recentTransfer'];
    final repeating = recent is Map && recent['operationId'] is String;
    final approved = await openWalletPage<bool>(
      context: context, title: 'Review transfer',
      builder: (ctx) => WalletReviewContent(
        title: const Text('Confirm MSNW transfer'),
        content: Text((repeating ? 'A matching transfer completed in the last five minutes (' + '${recent['createdAt']}' + '). Cancel if you meant to retry that transfer. Sending again creates a separate payment.\n\n' : '') + 'Send ' + quantity.text.trim() + ' MSNW to ' +
          (current['recipientName'] as String) +
          '? Check the recipient carefully. Completed transfers cannot be reversed.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true),
              child: Text(repeating ? 'Send again intentionally' : 'Confirm & send')),
        ],
      ),
    );
    if (approved != true || !sameSession(token) || preview != current ||
        key != idempotencyKey) return;
    final original = <String, dynamic>{
      'recipient': recipient.text.trim(),
      'recipientUserId': current['recipientUserId'],
      'amountMicro': current['amountMicro'],
      'idempotencyKey': idempotencyKey,
      if (repeating) 'repeatOf': recent['operationId'],
    };
    if (!validPending(original)) return;
    try {
      await storage.write(key: pendingStorageKey, value: jsonEncode(original));
    } catch (_) {
      if (sameSession(token)) setState(() => error =
          'Secure recovery storage is unavailable. No transfer was sent.');
      return;
    }
    if (!sameSession(token)) return;
    setState(() => pending = original);
    await submitOriginal(original, token);
  }

  @override
  Widget build(BuildContext context) => SafeArea(child: SingleChildScrollView(
    padding: EdgeInsets.fromLTRB(20, 12, 20,
      20 + MediaQuery.viewInsetsOf(context).bottom),
    child: Column(mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WalletFlowHeader(title:'Send MSNW',
          subtitle:'Send to another Masanawa account. Check the recipient and exact amount before confirming.',
          icon:Icons.north_east_rounded),
        if (receipt == null && pending == null) ...[
          if(savedRecipients.isNotEmpty) WalletFormSection(title:'Saved recipients',children:[
            for(final item in savedRecipients)ListTile(title:Text(item['name']!),subtitle:Text(item['accountNumber']!),
              onTap:busy?null:(){recipient.text=item['accountNumber']!;expectedSavedRecipientId=item['userId'];},
              trailing:IconButton(tooltip:'Remove saved recipient',icon:const Icon(Icons.delete_outline),onPressed:busy?null:()async{
                final token=widget.accessToken()?.trim();if(token==null||!sameSession(token))return;
                try{await recipientBook.remove(item['userId']!);if(sameSession(token))await loadRecipients();}catch(_){if(sameSession(token))setState(()=>error='Recipient could not be removed.');}
              })),
          ]),
          WalletFormSection(title:'1. Recipient',children:[
            TextField(controller: recipient, enabled: !busy, maxLength: 320,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon:Icon(Icons.person_outline),
                labelText:'Masanawa account number or @handle',
                helperText:'10-digit account number starting with 8. Email and international phone also supported.',
                helperMaxLines:3)),
            Align(alignment: AlignmentDirectional.centerEnd,
              child: TextButton.icon(onPressed: busy ? null : pasteRecipient,
                icon: const Icon(Icons.content_paste), label: const Text('Paste recipient'))),
            if (lookingUp) const LinearProgressIndicator(),
            if (lookupError != null) ...[
              Text(lookupError!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              TextButton(onPressed: lookingUp || busy ? null : () =>
                lookupRecipient(recipient.text.trim(), ++lookupGeneration), child: const Text('Retry lookup')),
            ],
            if (recipientCard != null) ListTile(
              leading: const Icon(Icons.person_outline),
              title: Text(recipientCard!['displayName'] as String),
              subtitle: Text(recipientCard!['handle'] is String
                ? '@${recipientCard!['handle']}' : 'Masanawa recipient'),
            ),
          ]),
          WalletFormSection(title:'2. Amount',children:[
            TextField(controller: quantity, enabled: !busy,
              keyboardType:const TextInputType.numberWithOptions(decimal:true),
              decoration:const InputDecoration(labelText:'Amount (MSNW)',
                suffixText:'MSNW',hintText:'0.00')),
          ]),
        ],
        if (error != null) Padding(padding: const EdgeInsets.only(top: 8),
          child: Text(error!,
            style: TextStyle(color: Theme.of(context).colorScheme.error))),
        if (busy) const LinearProgressIndicator(),
        if (pending != null && receipt == null) ...[
          const SizedBox(height: 12),
          const Text('Previous transfer needs confirmation',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('To: ${pending!['recipient']}'),
          Text('Amount: ${formatWalletAtomic(pending!['amountMicro'] as String)} MSNW'),
          const SizedBox(height:8),
          SelectableText('Request: ' +
              (pending!['idempotencyKey'] as String)),
          Wrap(spacing: 8, runSpacing: 8, children: [
            OutlinedButton(onPressed: busy ? null : recoverPending,
                child: const Text('Check status')),
            FilledButton(onPressed: busy ? null : retryPending,
                child: const Text('Retry original')),
          ]),
        ] else if (preview != null && receipt == null) ...[
          ListTile(title: Text(preview!['recipientName'] as String),
            subtitle: const Text('Recipient confirmed for this transfer')),
          if (preview!['recentTransfer'] != null)
            const ListTile(leading: Icon(Icons.warning_amber_rounded),
              title: Text('Matching transfer completed recently'),
              subtitle: Text('Review the previous transfer before sending again.')),

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
          Text('MSNW sent: ' + formatWalletAtomic(receipt!['amountMicro'] as String)),
          if(verifiedRecipientAccount!=null)OutlinedButton.icon(onPressed:saveRecipient,icon:const Icon(Icons.person_add_alt),label:const Text('Save recipient')),
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
