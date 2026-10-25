import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_data_catalogue.dart';
import 'gb_data_purchase_panel.dart';
import 'gb_wallet_summary.dart';

/// Server-verified whole-GB catalogue and quote, followed by a strictly
/// reviewed durable purchase. No provider acknowledgement is a delivery claim.
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
  GbDataValidity _validity = GbDataValidity.any;
  bool _manualNetwork = false;
  String? _bundleId;
  GbReadOnlyQuote? _quote;
  String? _error;
  CancelToken? _cancel;
  bool _loadingQuote = false;
  bool _purchaseLocked = false;
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
    if (_purchaseLocked) return; // Preserve the original uncertain request.
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
    if (phone == null || !_isOwner(owner) || _purchaseLocked) return;
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
      _validity = GbDataValidity.any;
      _manualNetwork = false;
      _bundleId = null;
      _purchaseLocked = false;
      _owner = owner;
    }

    final catalogue = owner == null
        ? null : ref.watch(gbDataCatalogueProvider(owner));
    final bundles = catalogue?.valueOrNull ?? const <GbVerifiedBundle>[];
    final visible = _network == null ? <GbVerifiedBundle>[] : bundles.where(
      (bundle) => bundle.network == _network &&
          _validity.includes(bundle.validityDays),
    ).toList();
    GbVerifiedBundle? selected;
    for (final bundle in visible) {
      if (bundle.id == _bundleId) selected = bundle;
    }
    final phone = _phone.text.trim();
    final validPhone = normalizeNigerianDataPhone(phone) != null;
    final canQuote = owner != null && selected != null && validPhone &&
        !_loadingQuote && !(catalogue?.isLoading ?? false);
    final theme = Theme.of(context);
    final colors = context.masanawa;
    return RefreshIndicator(
      onRefresh: owner == null ? () async {} : () => _reload(owner),
      child: ListView(
        key: const PageStorageKey<String>('gb-data-redemption'),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Text('Data bundles',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700)),
          const SizedBox(height: 14),
          TextField(
            controller: _phone,
            enabled: owner != null && !_purchaseLocked,
            keyboardType: TextInputType.phone,
            onChanged: (value) => setState(() {
              _clearQuote();
              _bundleId = null;
              // A ported number can differ from the allocated prefix. Never
              // silently undo the person's explicit network selection.
              if (!_manualNetwork) {
                _network = guessGbNetworkForNigerianPhone(value);
              }
              _validity = GbDataValidity.any;
            }),
            decoration: InputDecoration(
              labelText: 'Mobile number',
              hintText: '08012345678',
              prefixIcon: const Icon(Icons.phone_android_outlined),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colors.brand, width: 2),
                borderRadius: BorderRadius.circular(13),
              ),
              errorText: phone.isNotEmpty && !validPhone
                  ? 'Enter a valid Nigerian mobile number' : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13)),
            ),
          ),
          if (validPhone && _network != null && !_manualNetwork)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text('Suggested: ${_network!} · Check if ported',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colors.textMuted)),
            ),
          const SizedBox(height: 18),
          Text('Network', style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: [
              for (final value in gbDataNetworks)
                ChoiceChip(
                  key: ValueKey('data-network-$value'),
                  label: Text(switch (value) {
                    'AIRTEL' => 'Airtel',
                    'GLO' => 'Glo',
                    '9MOBILE' => '9mobile',
                    _ => value,
                  }),
                  selected: value == _network,
                  selectedColor: colors.brand.withValues(alpha: .15),
                  side: BorderSide(color: value == _network
                      ? colors.brand : colors.structuralBorder),
                  onSelected: owner == null || _purchaseLocked ? null : (_) {
                    setState(() {
                      _network = value;
                      _manualNetwork = true;
                      _validity = GbDataValidity.any;
                      _bundleId = null;
                      _clearQuote();
                    });
                  },
                ),
            ],
          ),
          if (_network != null) ...[
            const SizedBox(height: 12),
            Text('Validity', style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700)),
            const SizedBox(height: 6),
            SingleChildScrollView(
              key: const ValueKey('data-validity-filters'),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for (final duration in GbDataValidity.values)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 6),
                    child: ChoiceChip(
                      key: ValueKey('data-validity-${duration.name}'),
                      label: Text(duration.label),
                      selected: _validity == duration,
                      selectedColor: colors.brand.withValues(alpha: .15),
                      side: BorderSide(color: _validity == duration
                          ? colors.brand : colors.structuralBorder),
                      onSelected: owner == null || _purchaseLocked ? null : (_) {
                        setState(() {
                          _validity = duration;
                          _bundleId = null;
                          _clearQuote();
                        });
                      },
                    ),
                  ),
              ]),
            ),
          ],
          const SizedBox(height: 12),
          Row(children: [
            Expanded(child: Text('Available bundles',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700))),
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
            _DataEmptyState(
              title: 'Bundles unavailable',
              icon: Icons.wifi_off_rounded,
              onRetry: owner == null ? null : () => _reload(owner),
            ),
          if (owner == null)
            const _DataEmptyState(
              title: 'No verified GB bundles available',
              icon: Icons.sim_card_outlined,
            )
          else if (!(catalogue?.isLoading ?? false) &&
              !(catalogue?.hasError ?? false) && visible.isEmpty)
            _DataEmptyState(
              title: bundles.isEmpty
                  ? 'No verified GB bundles available'
                  : _network == null
                  ? 'Choose a network to see bundles'
                  : _validity == GbDataValidity.any
                  ? 'No $_network bundles available'
                  : 'No ${_validity.label.toLowerCase()} $_network bundles available',
              icon: Icons.sim_card_outlined,
              onRetry: () => _reload(owner),
            ),
          LayoutBuilder(builder: (context, constraints) {
            final columns = constraints.maxWidth >= 370 ? 2 : 1;
            final tileWidth =
                (constraints.maxWidth - (columns - 1) * 10) / columns;
            return Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (final bundle in visible)
                  SizedBox(
                    width: tileWidth,
                    child: _SelectableDataBundle(
                      key: ValueKey('verified-data-bundle-${bundle.id}'),
                      bundle: bundle,
                      selected: _bundleId == bundle.id,
                      onSelect: _purchaseLocked ? () {} : () => setState(() {
                        _bundleId = bundle.id;
                        _clearQuote();
                      }),
                    ),
                  ),
              ],
            );
          }),
          const SizedBox(height: 12),
          if (_loadingQuote) const LinearProgressIndicator(minHeight: 3),
          if (_error != null)
            Center(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(_error!, textAlign: TextAlign.center,
                style: TextStyle(color: theme.colorScheme.error)),
            )),
          if (_quote != null)
            Card(child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bundle review', style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700, color: colors.brand)),
                  Text('${_quote!.bundle.network} · '
                      '${_quote!.bundle.allowanceGb} GB'),
                  Text('Cost: ${groupedMb(_quote!.bundle.costMb)} MB'),
                  Text('Recipient: ${_quote!.recipientPhone}'),
                  Text('Validity: ${_quote!.bundle.validityDays} days'),
                  const Text('Fee: 0 MB'),
                  const SizedBox(height: 6),
                  const Text('Preview · Not purchased'),
                ],
              ),
            )),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: canQuote ? () => _requestQuote(owner, selected!) : null,
            icon: const Icon(Icons.fact_check_outlined),
            label: const Text('Review bundle'),
          ),
          const SizedBox(height: 8),
          if (_quote != null && owner != null)
            GbDataPurchasePanel(
              key: ValueKey('data-purchase-${owner.accountId}-${_quote!.bundle.id}'),
              owner: owner,
              quote: _quote!,
              onStarted: () => setState(() => _purchaseLocked = true),
              onResolved: () => setState(() => _purchaseLocked = false),
            )
          else
            Center(child: Text('Review before purchase',
              style: theme.textTheme.labelSmall?.copyWith(
                color: colors.textMuted))),
          TextButton(
            onPressed: () => context.go('/home?tab=wallet'),
            child: const Text('Back to Wallet'),
          ),
        ],
      ),
    );
  }
}

// Network failures are shown without provider diagnostics or long paragraphs.
class _DataEmptyState extends StatelessWidget {
  const _DataEmptyState({
    required this.title,
    required this.icon,
    this.onRetry,
  });
  final String title;
  final IconData icon;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 28),
    child: Column(children: [
      Icon(icon, size: 36, color: context.masanawa.textMuted),
      const SizedBox(height: 9),
      Text(title, textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall),
      if (onRetry != null)
        TextButton(onPressed: onRetry, child: const Text('Try again')),
    ]),
  );
}

class _SelectableDataBundle extends StatelessWidget {
  const _SelectableDataBundle({
    super.key,
    required this.bundle,
    required this.selected,
    required this.onSelect,
  });

  final GbVerifiedBundle bundle;
  final bool selected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final theme = Theme.of(context);
    return Semantics(
      selected: selected,
      button: true,
      label: '${bundle.network}, ${bundle.allowanceGb} GB, '
          '${bundle.costMb} MB, ${bundle.validityDays} days',
      child: Material(
        color: selected ? colors.surfaceMuted : colors.surfaceCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: selected ? colors.brand : colors.structuralBorder,
            width: selected ? 2 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onSelect,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(child: Text('${bundle.allowanceGb} GB',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800))),
                  Icon(selected
                      ? Icons.check_circle_rounded
                      : Icons.circle_outlined,
                    size: 20,
                    color: selected ? colors.brand : colors.structuralBorder),
                ]),
                const SizedBox(height: 7),
                Text('${bundle.validityDays} days',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colors.textMuted)),
                const SizedBox(height: 12),
                Text('${groupedMb(bundle.costMb)} MB',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700, color: colors.brand)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
