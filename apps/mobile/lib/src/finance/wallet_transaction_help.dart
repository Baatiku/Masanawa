import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// Read-only support lookup comes before any possible case creation.
/// The Gateway has one durable case per owner/operation. A lost POST response
/// must never be mistaken for a missing case or another bill to be paid.
class WalletTransactionHelp extends StatefulWidget {
  const WalletTransactionHelp({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.operationId,
    required this.authorized,
    required this.accessToken,
  });
  final Dio dio;
  final String baseUrl, operationId;
  final bool Function() authorized;
  final String? Function() accessToken;

  @override
  State<WalletTransactionHelp> createState() => _WalletTransactionHelpState();
}

class _WalletTransactionHelpState extends State<WalletTransactionHelp> {
  static const reasons = <String>[
    'pending',
    'not_received',
    'incorrect_amount',
    'other',
  ];

  String reason = reasons.first;
  Map<String, dynamic>? ticket;
  String? error;
  bool busy = false;
  bool verifiedAbsent = false;
  bool uncertainOriginal = false;
  String? originalReason;

  int _generation = 0;
  String? _boundToken;
  late String _boundOperation, _boundBase;
  late Dio _boundDio;
  bool _rebindScheduled = false;

  String get _base => widget.baseUrl.replaceFirst(RegExp(r'/$'), '');
  String? get _liveToken => widget.accessToken()?.trim();

  bool _scopeMatches(int generation, String token) =>
      mounted &&
      widget.authorized() &&
      _generation == generation &&
      _boundDio == widget.dio &&
      _boundOperation == widget.operationId &&
      _boundBase == _base &&
      _boundToken == token &&
      _liveToken == token;

  @override
  void initState() {
    super.initState();
    _bind();
  }

  @override
  void didUpdateWidget(covariant WalletTransactionHelp oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.operationId != widget.operationId ||
        oldWidget.baseUrl != widget.baseUrl ||
        oldWidget.dio != widget.dio ||
        _boundToken != _liveToken) {
      _bind();
    }
  }

  void _bind() {
    final generation = ++_generation;
    _boundDio = widget.dio;
    _boundOperation = widget.operationId;
    _boundBase = _base;
    _boundToken = _liveToken;
    reason = reasons.first;
    ticket = null;
    error = null;
    busy = false;
    verifiedAbsent = false;
    uncertainOriginal = false;
    originalReason = null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _generation == generation && widget.authorized() &&
          (_boundToken?.isNotEmpty ?? false)) {
        _checkCase();
      }
    });
  }

  /// Handles a sign-in change even when the parent reuses the same widget
  /// instance and only its token callback value changes.
  void _scheduleRebind() {
    if (_rebindScheduled) return;
    _rebindScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _rebindScheduled = false;
      if (!mounted) return;
      setState(_bind);
    });
  }

  Map<String, dynamic> _receipt(dynamic raw, String expectedOperation) {
    if (raw is! Map ||
        raw['operationId'] != expectedOperation ||
        raw['caseId'] is! String ||
        (raw['caseId'] as String).trim().isEmpty ||
        raw['state'] is! String ||
        (raw['state'] as String).trim().isEmpty ||
        !reasons.contains(raw['reason']) ||
        raw['createdAt'] is! String ||
        DateTime.tryParse(raw['createdAt'] as String) == null) {
      throw const FormatException('Invalid support case receipt');
    }
    return Map<String, dynamic>.from(raw);
  }

  /// Only wallet.support_not_found proves that this owner has no saved case.
  /// A missing operation, denied access or network outage NEVER enables Open.
  Future<void> _checkCase() async {
    final token = _boundToken, generation = _generation;
    if (busy || token == null || token.isEmpty ||
        !_scopeMatches(generation, token)) return;
    final operation = _boundOperation, base = _boundBase, dio = _boundDio;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      final response = await dio.get<dynamic>(
        '$base/v1/wallet/support',
        queryParameters: {'operationId': operation},
        options: Options(
          headers: {'Authorization': 'Bearer $token', 'Cache-Control': 'no-store'},
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 15),
        ),
      );
      if (!_scopeMatches(generation, token)) return;
      final receipt = _receipt(response.data, operation);
      setState(() {
        ticket = receipt;
        verifiedAbsent = false;
        uncertainOriginal = false;
        originalReason = null;
      });
    } on DioException catch (e) {
      if (!_scopeMatches(generation, token)) return;
      final body = e.response?.data;
      final isAbsent = e.response?.statusCode == 404 &&
          body is Map && body['error'] == 'wallet.support_not_found';
      setState(() {
        verifiedAbsent = isAbsent && !uncertainOriginal;
        error = isAbsent
            ? uncertainOriginal
                ? 'Original case not yet confirmed. Check again or retry only the same request.'
                : null
            : 'Case status unavailable. Check the original operation before opening another case.';
      });
    } catch (_) {
      if (_scopeMatches(generation, token)) {
        setState(() {
          verifiedAbsent = false;
          error = 'Support status unavailable. No payment was changed.';
        });
      }
    } finally {
      if (_scopeMatches(generation, token)) setState(() => busy = false);
    }
  }

  Future<void> _openOriginal() async {
    final token = _boundToken, generation = _generation;
    if (busy || ticket != null || (!verifiedAbsent && !uncertainOriginal) ||
        token == null || token.isEmpty ||
        !_scopeMatches(generation, token)) return;
    // Frozen after the first attempt. A retry can only use the same
    // owner, operation, reason, and Gateway's idempotent case identity.
    final original = originalReason ?? reason;
    originalReason = original;
    final operation = _boundOperation, base = _boundBase, dio = _boundDio;
    setState(() {
      busy = true;
      verifiedAbsent = false;
      uncertainOriginal = true;
      error = null;
    });
    var needsReadback = false;
    try {
      final response = await dio.post<dynamic>(
        '$base/v1/wallet/support',
        data: {'operationId': operation, 'reason': original},
        options: Options(
          headers: {'Authorization': 'Bearer $token', 'Cache-Control': 'no-store'},
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 15),
        ),
      );
      if (!_scopeMatches(generation, token)) return;
      final receipt = _receipt(response.data, operation);
      setState(() {
        ticket = receipt;
        uncertainOriginal = false;
        originalReason = null;
      });
    } catch (_) {
      if (!_scopeMatches(generation, token)) return;
      needsReadback = true;
      setState(() {
        error = 'Support request outcome unknown. Checking the original case; do not open another.';
      });
    } finally {
      if (_scopeMatches(generation, token)) setState(() => busy = false);
    }
    if (needsReadback && _scopeMatches(generation, token)) {
      await _checkCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.authorized() || _liveToken == null || _liveToken!.isEmpty) {
      // No stale account receipt can be rendered while signed out.
      return const Center(child: Text('Sign in to view this operation'));
    }
    if (_boundToken != _liveToken || _boundOperation != widget.operationId ||
        _boundBase != _base || _boundDio != widget.dio) {
      _scheduleRebind();
      return const Center(child: Text('Checking transaction session'));
    }
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text('Transaction help',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        SelectableText('Operation: ${widget.operationId}'),
        const SizedBox(height: 16),
        const Text(
          'A support request does not reverse, refund or settle a payment. '
          'Keep this reference; do not share passwords, verification codes or private keys.',
        ),
        if (ticket case final row?) ...[
          const SizedBox(height: 16),
          SelectableText('Case: ${row['caseId']}'),
          Text('Status: ${row['state']}'),
          Text('Reason: ${row['reason']}'),
          OutlinedButton(
            onPressed: busy ? null : _checkCase,
            child: const Text('Refresh case'),
          ),
        ] else if (uncertainOriginal) ...[
          const SizedBox(height: 16),
          const Text(
            'Your earlier support request may already exist. '
            'Do not submit another issue or make a duplicate payment.',
          ),
          OutlinedButton(
            key: const Key('wallet-support-check-original'),
            onPressed: busy ? null : _checkCase,
            child: const Text('Check original case'),
          ),
          FilledButton(
            key: const Key('wallet-support-retry-original'),
            onPressed: busy ? null : _openOriginal,
            child: const Text('Retry same support request'),
          ),
        ] else if (verifiedAbsent) ...[
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            key: ValueKey('support-reason-${widget.operationId}'),
            initialValue: reason,
            items: const [
              DropdownMenuItem(value: 'pending', child: Text('Still pending')),
              DropdownMenuItem(value: 'not_received', child: Text('Not received')),
              DropdownMenuItem(value: 'incorrect_amount',
                  child: Text('Amount needs checking')),
              DropdownMenuItem(value: 'other',
                  child: Text('Other transaction issue')),
            ],
            onChanged: busy
                ? null
                : (value) => setState(() => reason = value ?? reason),
          ),
          FilledButton(
            key: const Key('wallet-support-open'),
            onPressed: busy ? null : _openOriginal,
            child: const Text('Open support case'),
          ),
        ] else ...[
          const SizedBox(height: 16),
          const Text('Check whether this operation already has a case.'),
          OutlinedButton(
            key: const Key('wallet-support-check'),
            onPressed: busy ? null : _checkCase,
            child: const Text('Check support case'),
          ),
        ],
        if (error != null)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Semantics(liveRegion: true, child: Text(error!)),
          ),
        if (busy) const LinearProgressIndicator(),
      ],
    );
  }
}
