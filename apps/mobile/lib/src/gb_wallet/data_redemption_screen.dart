import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_data_catalogue.dart';
import 'gb_wallet_summary.dart';

/// Only verified read-only catalogue/quote operations are available until the
/// durable MB reservation and delivered-status payment API is qualified.
class DataRedemptionScreen extends ConsumerStatefulWidget {
  const DataRedemptionScreen({super.key});

  @override
  ConsumerState<DataRedemptionScreen> createState() =>
      _DataRedemptionScreenState();
}

class _DataRedemptionScreenState extends ConsumerState<DataRedemptionScreen> {
  final _phone = TextEditingController();
  GbDataOwner? _owner;
  String? _network;
  String? _bundleId;
  GbReadOnlyQuote? _quote;
  String? _error;
  CancelToken? _cancel;
  bool _loadingQuote = false;
  int _generation = 0;

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    _phone.dispose();
    super.dispose();
  }

  void _clearQuote() {
    _generation++;
    _cancel?.cancel();
    _quote = null;
    _error = null;
    _loadingQuote = false;
  }

  bool _isOwner(GbDataOwner owner) {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _reload(GbDataOwner owner) async {
    setState(() {
      _clearQuote();
      _bundleId = null;
    });
    ref.invalidate(gbDataCatalogueProvider(owner));
    try {
      await ref.read(gbDataCatalogueProvider(owner).future);
    } catch (_) {
      // Retain the retryable error in the provider's visible state.
    }
  }

  Future<void> _requestQuote(GbDataOwner owner, GbVerifiedBundle bundle) async {
    final phone = normalizeNigerianDataPhone(_phone.text);
    if (phone == null || !_isOwner(owner)) return;
    _cancel?.cancel();
    final cancellation = CancelToken();
    _cancel = cancellation;
    final generation = ++_generation;
    setState(() {
      _loadingQuote = true;
      _quote = null;
      _error = null;
    });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/data/quote',
        data: {
          'bundleId': bundle.id,
          'version': bundle.version,
          'recipientPhone': phone,
        },
        cancelToken: cancellation,
        options: Options(headers: const {'Cache-Control': 'no-store'}),
      );
      final verified = GbReadOnlyQuote.fromJson(
        response.data, selected: bundle, enteredPhone: phone,
      );
      if (!mounted || generation != _generation || !_isOwner(owner) ||
          _bundleId != bundle.id) return;
      setState(() {
        _loadingQuote = false;
        _quote = verified;
      });
    } on DioException catch (error) {
      if (!mounted || generation != _generation || !_isOwner(owner)) return;
      setState(() {
        _loadingQuote = false;
        _error = error.response?.statusCode == 409
            ? 'The bundle changed. Refresh and review again.'
            : 'Could not verify this bundle. No purchase was submitted.';
      });
    } catch (_) {
      if (!mounted || generation != _generation || !_isOwner(owner)) return;
      setState(() {
        _loadingQuote = false;
        _error = 'Quote verification failed. No purchase was submitted.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (accountId: session.user.id,
            authorizationEpoch:
                ref.read(sessionProvider.notifier).authorizationEpoch)
        : null;
    if (_owner != owner) {
      _clearQuote();
      _phone.clear();
      _network = null;
      _bundleId = null;
      _owner = owner;
    }

    final catalogue = owner == null
        ? null : ref.watch(gbDataCatalogueProvider(owner));
    final bundles = catalogue?.valueOrNull ?? const <GbVerifiedBundle>[];
    final visible = bundles.where((bundle) =>
        _network == null || bundle.network == _network).toList();
    GbVerifiedBundle? selected;
    for (final bundle in visible) {
      if (bundle.id == _bundleId) selected = bundle;
    }
    final phone = _phone.text.trim();
    final validPhone = normalizeNigerianDataPhone(phone) != null;
    final canQuote = owner != null && selected != null && validPhone &&
        !_loadingQuote && !(catalogue?.isLoading ?? false);
    final theme = Theme.of(context);
    return RefreshIndicator(
      onRefresh: owner == null ? () async {} : () => _reload(owner),
      child: ListView(
        key: const PageStorageKey<String>('gb-data-redemption'),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Text('Redeem mobile data', style: theme.textTheme.titleLarge),
          const SizedBox(height: 8),
          const Text('Explore approved whole-GB bundles for any Nigerian SIM. '
              'A verified quote is not a payment.'),
          const SizedBox(height: 16),
          TextField(
            controller: _phone,
            enabled: owner != null,
            keyboardType: TextInputType.phone,
            onChanged: (_) => setState(_clearQuote),
            decoration: InputDecoration(
              labelText: 'Recipient phone number',
              hintText: '08012345678 or +2348012345678',
              helperText: 'Data can go to another person’s SIM.',
              errorText: phone.isNotEmpty && !validPhone
                  ? 'Enter a valid Nigerian mobile number' : null,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Text('Network', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: [
              for (final value in <String?>[null, ...gbDataNetworks])
                ChoiceChip(
                  label: Text(value ?? 'All'),
                  selected: value == _network,
                  onSelected: owner == null ? null : (_) {
                    setState(() {
                      _network = value;
                      _bundleId = null;
                      _clearQuote();
                    });
                  },
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(children: [
            Expanded(child: Text('Verified bundles',
                style: theme.textTheme.titleMedium)),
            if (owner != null)
              IconButton(
                tooltip: 'Refresh verified data bundles',
                onPressed: () => _reload(owner),
                icon: const Icon(Icons.refresh),
              ),
          ]),
          if (catalogue?.isLoading ?? false)
            const LinearProgressIndicator(minHeight: 3),
          if (catalogue?.hasError ?? false)
            Card(child: ListTile(
              title: const Text('Could not load verified bundles'),
              subtitle: const Text('Check your connection and retry.'),
              trailing: owner == null ? null : TextButton(
                onPressed: () => _reload(owner),
                child: const Text('Retry'),
              ),
            )),
          if (owner == null)
            const Card(child: ListTile(
              title: Text('No verified GB bundles available'),
              subtitle: Text('Sign in to check approved mobile data items.'),
            ))
          else if (!(catalogue?.isLoading ?? false) &&
              !(catalogue?.hasError ?? false) && visible.isEmpty)
            Card(child: ListTile(
              leading: const Icon(Icons.sim_card_outlined),
              title: const Text('No verified GB bundles available'),
              subtitle: Text(_network == null
                  ? 'No approved provider bundles currently available.'
                  : 'No approved $_network bundles. Select another network.'),
            )),
          for (final bundle in visible)
            Card(
              key: ValueKey('verified-data-bundle-${bundle.id}'),
              child: RadioListTile<String>(
                value: bundle.id,
                groupValue: _bundleId,
                title: Text('${bundle.network} · ${bundle.allowanceGb} GB'),
                subtitle: Text('${groupedMb(bundle.costMb)} MB · '
                    '${bundle.validityDays} days validity'),
                onChanged: (value) => setState(() {
                  _bundleId = value;
                  _clearQuote();
                }),
              ),
            ),
          const SizedBox(height: 12),
          if (_loadingQuote) const LinearProgressIndicator(minHeight: 3),
          if (_error != null)
            Text(_error!, style: TextStyle(color: theme.colorScheme.error)),
          if (_quote != null)
            Card(child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Verified quote', style: theme.textTheme.titleMedium),
                  Text('${_quote!.bundle.network} · '
                      '${_quote!.bundle.allowanceGb} GB'),
                  Text('Cost: ${groupedMb(_quote!.bundle.costMb)} MB'),
                  Text('Recipient: ${_quote!.recipientPhone}'),
                  Text('Validity: ${_quote!.bundle.validityDays} days'),
                  const Text('Fee: 0 MB'),
                  const SizedBox(height: 6),
                  const Text('Preview only — no MB reserved or debited.'),
                ],
              ),
            )),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: canQuote ? () => _requestQuote(owner!, selected!) : null,
            icon: const Icon(Icons.fact_check_outlined),
            label: const Text('Review verified bundle'),
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Purchase requires verified delivery'),
            subtitle: Text('Purchases stay unavailable until MB reservation '
                'and the provider delivery-confirmation endpoint are enabled.'),
          ),
          TextButton(
            onPressed: () => context.go('/home?tab=wallet'),
            child: const Text('Back to Wallet'),
          ),
        ],
      ),
    );
  }
}
