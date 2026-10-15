import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Verified fiat payments awaiting treasury settlement, NEVER MSNW holdings.
class MsnwVerifiedFundingActivity extends StatefulWidget {
  const MsnwVerifiedFundingActivity({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.sessionIdentity,
    required this.currentUserId,
    required this.accessToken,
  });

  final Dio dio;
  final String baseUrl;
  final String sessionIdentity;
  final String? Function() currentUserId;
  final String? Function() accessToken;

  @override
  State<MsnwVerifiedFundingActivity> createState() => _MsnwVerifiedFundingActivityState();
}

class _MsnwVerifiedFundingActivityState extends State<MsnwVerifiedFundingActivity> {
  List<Map<String, dynamic>>? _entries;
  bool _loading = false;
  String? _error;
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(covariant MsnwVerifiedFundingActivity oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sessionIdentity != widget.sessionIdentity) {
      _generation++;
      _entries = null;
      _error = null;
      _load();
    }
  }

  Future<void> _load() async {
    if (!mounted) return;
    final generation = ++_generation;
    if (widget.currentUserId() != widget.sessionIdentity) {
      setState(() {
        _entries = null;
        _loading = false;
        _error = 'Sign in to view your funding history.';
      });
      return;
    }
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) {
      setState(() {
        _entries = null;
        _loading = false;
        _error = 'Sign in to view your funding history.';
      });
      return;
    }
    setState(() {
      _entries = null; _loading = true; _error = null;
    });
    try {
      final response = await widget.dio.get<dynamic>(
        '${widget.baseUrl.replaceFirst(RegExp(r"/$"), "")}'
        '/v1/wallet/msnw/funding/verified',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 12),
        ),
      );
      if (!mounted || generation != _generation ||
          widget.currentUserId() != widget.sessionIdentity ||
          widget.accessToken()?.trim() != token) return;
      final value = response.data;
      if (value is! Map || value['items'] is! List) {
        throw const FormatException('Invalid funding journal');
      }
      final rawItems = value['items'] as List;
      if (rawItems.length > 30) throw const FormatException('Invalid journal size');
      final entries = <Map<String, dynamic>>[];
      for (final item in rawItems) {
        if (item is! Map) throw const FormatException('Invalid journal entry');
        final row = item.cast<String, dynamic>();
        if (row['reference'] is! String ||
            row['amountKobo'] is! String ||
            !RegExp(r'^[1-9][0-9]*$').hasMatch(row['amountKobo'] as String) ||
            row['paidAt'] is! String ||
            DateTime.tryParse(row['paidAt'] as String) == null ||
            row['state'] != 'fiat_verified_backing_pending' ||
            (row['obligationState'] != null &&
              row['obligationState'] != 'backing_pending' &&
              row['obligationState'] != 'registration_pending')) {
          throw const FormatException('Invalid funding state');
        }
        entries.add(row);
      }
      setState(() { _entries = entries; _loading = false; });
    } catch (_) {
      if (!mounted || generation != _generation ||
          widget.currentUserId() != widget.sessionIdentity) return;
      setState(() {
        _entries = null;
        _loading = false;
        _error = 'Funding activity unavailable. Retry to refresh.';
      });
    }
  }

  String _ngn(String kobo) {
    final amount = BigInt.parse(kobo);
    final whole = amount ~/ BigInt.from(100);
    final fractional = (amount % BigInt.from(100)).toString().padLeft(2, '0');
    return '₦$whole.$fractional';
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LinearProgressIndicator(minHeight: 2);
    if (_error != null) {
      return ListTile(
        title: Text(_error!),
        trailing: TextButton(onPressed: _load, child: const Text('Retry')),
      );
    }
    final items = _entries;
    if (items == null) return const ListTile(title: Text('Funding history unavailable'));
    if (items.isEmpty) {
      return const ListTile(title: Text('No verified bank funding yet'));
    }
    return Column(
      children: [
        for (final row in items.take(8))
          ListTile(
            leading: const Icon(Icons.account_balance),
            title: Text('Verified bank transfer · ${_ngn(row['amountKobo'] as String)}'),
            subtitle: Text(row['obligationState'] == 'registration_pending'
              ? 'Settlement journal reconciliation pending · Ref: ${row['reference']}'
              : 'MSNW backing pending · Ref: ${row['reference']}'),
            trailing: const Icon(Icons.schedule),
          ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(onPressed: _load, child: const Text('Refresh')),
        ),
      ],
    );
  }
}
