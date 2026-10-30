import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_data_catalogue.dart';
import 'gb_data_choice_controls.dart';
import 'gb_data_purchase_panel.dart';
import 'gb_wallet_summary.dart';
import 'gb_balance_card.dart';
import 'ngn_wallet.dart';

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
  final _purchaseSectionKey = GlobalKey();
  GbDataOwner? _owner;
  List<GbVerifiedBundle>? _lastVerifiedBundles;
  GbWalletBalance? _lastVerifiedWallet;
  String? _network;
  bool _manualNetwork = false;
  GbDataValidityPeriod? _validity = GbDataValidityPeriod.daily;
  String? _bundleId;
  GbReadOnlyQuote? _quote;
  String? _error;
  CancelToken? _cancel;
  bool _loadingQuote = false;
  bool _purchaseLocked = false;
  bool _showingResult = false;
  bool _reviewOpen = false;
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

  // Reset only the editable draft. Never erase the durable original purchase
  // or its idempotency key: a genuinely uncertain charge must still reconcile.
  void _startOver() {
    setState(() {
      _clearQuote();
      _phone.clear();
      _network = null;
      _manualNetwork = false;
      _validity = GbDataValidityPeriod.daily;
      _bundleId = null;
      _showingResult = false;
    });
  }

  bool _isOwner(GbDataOwner owner) {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _pastePhone(GbDataOwner owner) async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (!mounted || !_isOwner(owner)) return;
    final value = data?.text?.trim();
    if (value == null || normalizeNigerianDataPhone(value) == null) {
      setState(
        () =>
            _error = 'Copy a valid Nigerian phone number, then paste it here.',
      );
      return;
    }
    setState(() {
      _clearQuote();
      _bundleId = null;
      _phone.text = value;
      if (!_manualNetwork) _network = guessGbNetworkForNigerianPhone(value);
    });
  }

  Future<void> _reload(GbDataOwner owner) async {
    // Refreshing the read-only catalogue and balances does not create a
    // second payment, even while an older purchase is unresolved.
    setState(() {
      _clearQuote();
      _bundleId = null;
    });
    ref.invalidate(gbDataCatalogueProvider(owner));
    ref.invalidate(gbWalletSummaryProvider(owner));
    ref.invalidate(ngnWalletBalanceProvider(owner));
    ref.invalidate(ngnBankAccountProvider(owner));
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
      if (mounted) _showPurchaseReview(owner, verified);
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

  Future<void> _showPurchaseReview(GbDataOwner owner, GbReadOnlyQuote quote) async {
    if (_reviewOpen) return;
    setState(() => _reviewOpen = true);
    try {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      useSafeArea: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (sheetContext) => Consumer(builder: (context, sheetRef, _) {
        final session = sheetRef.watch(sessionProvider);
        if (session is! SessionSignedIn ||
            session.user.id != owner.accountId ||
            sheetRef.read(sessionProvider.notifier).authorizationEpoch !=
                owner.authorizationEpoch) {
          return Center(child: TextButton(
            onPressed: () => Navigator.pop(sheetContext),
            child: const Text('Close review')));
        }
        final balance = sheetRef.watch(gbWalletSummaryProvider(owner));
        final verified = balance.hasError || balance.isLoading
            ? null : balance.valueOrNull;
        final enough = verified != null && !verified.frozen &&
            verified.purchasedAvailableMb >= quote.bundle.costMb;
        final theme = Theme.of(context);
        return PopScope(
          canPop: !_purchaseLocked,
          child: FractionallySizedBox(
            heightFactor: .82,
            child: ListView(padding: const EdgeInsets.all(20), children: [
              Row(children: [
                Expanded(child: Text('Review data purchase',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700))),
                IconButton(
                  tooltip: 'Close review',
                  onPressed: _purchaseLocked ? null : () => Navigator.pop(sheetContext),
                  icon: const Icon(Icons.close_rounded)),
              ]),
              const SizedBox(height: 18),
              Center(child: Column(children: [
                Text(quote.bundle.allowanceLabel,
                  style: theme.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w800)),
                if (quote.bundle.extrasLabel != null)
                  Text(quote.bundle.extrasLabel!, textAlign: TextAlign.center),
              ])),
              const SizedBox(height: 22),
              Card(child: Padding(padding: const EdgeInsets.all(16),
                child: Column(children: [
                  _ReviewLine('Network', quote.bundle.network),
                  _ReviewLine('Recipient', quote.recipientPhone),
                  _ReviewLine('Validity', '${quote.bundle.validityDays} days'),
                  _ReviewLine('Data debit', '${groupedMb(quote.bundle.costMb)} MB'),
                ]))),
              const SizedBox(height: 12),
              Card(child: Padding(padding: const EdgeInsets.all(16),
                child: Column(children: [
                  _ReviewLine('Available data', verified == null
                      ? 'Unavailable'
                      : '${groupedMb(verified.purchasedAvailableMb)} MB'),
                  if (!enough)
                    Padding(padding: const EdgeInsets.only(top: 8),
                      child: Text(verified == null
                          ? 'Check your data balance connection.'
                          : verified.frozen
                          ? 'Your data balance is unavailable.'
                          : 'Not enough redeemable MB. Buy Data to continue.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: theme.colorScheme.error))),
                ]))),
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: !enough || _purchaseLocked ? null : () async {
                  Navigator.pop(sheetContext);
                  await Future<void>.delayed(Duration.zero);
                  final target = _purchaseSectionKey.currentContext;
                  if (mounted && target != null && _isOwner(owner)) {
                    await Scrollable.ensureVisible(target,
                      duration: const Duration(milliseconds: 250));
                  }
                },
                icon: const Icon(Icons.check_circle_outline_rounded),
                label: const Text('Continue to purchase'),
              ),
            ]),
          ),
        );
      }),
    );
    } finally {
      if (mounted) setState(() => _reviewOpen = false);
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
      _phone.text = session is SessionSignedIn
          ? (session.user.contactPhone ?? '') : '';
      _network = guessGbNetworkForNigerianPhone(_phone.text);
      _manualNetwork = false;
      _validity = GbDataValidityPeriod.daily;
      _bundleId = null;
      _purchaseLocked = false;
      _showingResult = false;
      _reviewOpen = false;
      _owner = owner;
      _lastVerifiedBundles = null;
      _lastVerifiedWallet = null;
    }

    final catalogue = owner == null
        ? null : ref.watch(gbDataCatalogueProvider(owner));
    final deniedCatalogue = catalogue?.error is DioException &&
        const {401, 403, 410}.contains(
          (catalogue!.error as DioException).response?.statusCode);
    if (deniedCatalogue) _lastVerifiedBundles = null;
    final currentBundles = deniedCatalogue ? null : catalogue?.valueOrNull;
    if (currentBundles != null) _lastVerifiedBundles = currentBundles;
    final bundles = currentBundles ?? _lastVerifiedBundles ?? const <GbVerifiedBundle>[];
    final visible = bundles.where((bundle) => gbBundleMatchesSelection(
      bundle, network: _network, period: _validity)).toList();
    GbVerifiedBundle? selected;
    for (final bundle in visible) {
      if (bundle.id == _bundleId) selected = bundle;
    }
    final wallet = owner == null ? null : ref.watch(gbWalletSummaryProvider(owner));
    final deniedWallet = wallet?.error is DioException &&
        const {401, 403, 410}.contains(
          (wallet!.error as DioException).response?.statusCode);
    if (deniedWallet) _lastVerifiedWallet = null;
    final currentWallet = deniedWallet ? null : wallet?.valueOrNull;
    if (currentWallet != null) _lastVerifiedWallet = currentWallet;
    final phone = _phone.text.trim();
    final validPhone = normalizeNigerianDataPhone(phone) != null;
    final canQuote = owner != null && selected != null && validPhone &&
        !_purchaseLocked && !_loadingQuote && !(catalogue?.isLoading ?? false) &&
        currentBundles != null && catalogue?.hasError != true;
    final theme = Theme.of(context);
    final colors = context.masanawa;
    return RefreshIndicator(
      onRefresh: owner == null ? () async {} : () => _reload(owner),
      child: ListView(
        key: const PageStorageKey<String>('gb-data-redemption'),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Text('Mobile Data',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700)),
          const SizedBox(height: 14),
          GbWalletBalanceCard(balance: currentWallet ?? _lastVerifiedWallet,
              loading: wallet?.isLoading ?? false, compact: true),
          const SizedBox(height: 12),
          if (owner != null)
            KeyedSubtree(key: _purchaseSectionKey, child: GbDataPurchasePanel(
              key: ValueKey('data-purchase-${owner.accountId}-${owner.authorizationEpoch}'),
              owner: owner,
              quote: _quote,
              reviewVisible: _reviewOpen,
              onStarted: () {
                if (mounted && !_purchaseLocked && _isOwner(owner)) {
                  setState(() => _purchaseLocked = true);
                }
              },
              onResolved: () {
                if (mounted && _purchaseLocked && _isOwner(owner)) {
                  setState(() => _purchaseLocked = false);
                }
              },
              onFinished: () {
                if (mounted && _isOwner(owner)) {
                  setState(() => _showingResult = true);
                }
              },
              onInsufficientBalance: () {
                if (mounted && _isOwner(owner)) {
                  setState(() {
                    _clearQuote();
                    _bundleId = null;
                    _showingResult = false;
                  });
                }
              },
            )),
          const SizedBox(height: 18),
          // A saved uncertain purchase no longer replaces the entire Data
          // screen. The chooser stays available; only payment stays locked.
          if (_quote == null && !_showingResult) ...[
          LayoutBuilder(builder: (context, constraints) {
            final network = DropdownButtonFormField<String>(
              key: ValueKey('data-network-selector-${_network ?? 'none'}'),
              initialValue: _network,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'Network',
                  border: OutlineInputBorder()),
              items: [for (final value in gbDataNetworks)
                DropdownMenuItem(value: value, child: Row(children:[
                  GbNetworkLogo(value,size:24),const SizedBox(width:6),
                  Expanded(child:Text(switch (value) {
                    'AIRTEL' => 'Airtel', 'GLO' => 'Glo',
                    '9MOBILE' => '9mobile', _ => value,
                  },overflow:TextOverflow.ellipsis)),
                ]))],
              onChanged: owner == null ? null : (value) {
                if (value == null) return;
                setState(() {
                  _network = value; _manualNetwork = true;
                  _validity = GbDataValidityPeriod.daily;
                  _bundleId = null; _clearQuote();
                });
              },
            );
            final phoneField = TextField(
            controller: _phone,
            enabled: owner != null,
            keyboardType: TextInputType.phone,
            onChanged: (value) => setState(() {
              _clearQuote();
              _bundleId = null;
              // Number portability means a deliberate operator choice must
              // survive later edits, even when the prefix suggests another.
              if (!_manualNetwork) {
                _network = guessGbNetworkForNigerianPhone(value);
              }

            }),
            decoration: InputDecoration(
              labelText: 'Mobile number',
              hintText: '08012345678',
              prefixIcon: const Icon(Icons.phone_android_outlined),
              suffixIcon:IconButton(tooltip:'Paste mobile number',
                onPressed:owner==null?null:()=>_pastePhone(owner),
                icon:const Icon(Icons.content_paste_outlined)),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colors.brandStrong, width: 2),
                borderRadius: BorderRadius.circular(13),
              ),
              errorText: phone.isNotEmpty && !validPhone
                  ? 'Enter a valid Nigerian mobile number' : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13)),
            ),
          );
            if (constraints.maxWidth < 330 ||
                MediaQuery.textScalerOf(context).scale(16) > 20) {
              return Column(children: [network, const SizedBox(height: 12), phoneField]);
            }
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(width: 112, child: network),
              const SizedBox(width: 10), Expanded(child: phoneField),
            ]);
          }),
          if (validPhone && _network != null && !_manualNetwork)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text('Suggested: ${_network!} · Check if ported',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colors.textMuted)),
            ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(child: Text('Data plans',
                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700))),
            TextButton.icon(
              onPressed: _startOver,
              icon: const Icon(Icons.restart_alt_rounded, size: 19),
              label: const Text('Start over')),
            if (owner != null) IconButton(
              tooltip: 'Refresh verified data bundles',
              onPressed: () => _reload(owner),
              icon: const Icon(Icons.refresh)),
          ]),
          GbDataValidityChoices(
            period: _validity,
            enabled: owner != null && _network != null,
            onChanged: (choice) {
              if (choice == _validity) return;
              setState(() { _validity = choice; _bundleId = null; _clearQuote(); });
            },
          ),
          const SizedBox(height: 12),
          if (catalogue?.isLoading ?? false)
            const LinearProgressIndicator(minHeight: 3),
          if (catalogue?.hasError ?? false)
            _DataEmptyState(
              title: 'Check your connection',
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
                  ? 'Choose a network to see verified bundles'
                  : _validity == null
                  ? 'No $_network bundles available'
                  : 'No $_network bundles for this validity',
              icon: Icons.sim_card_outlined,
              onRetry: () => _reload(owner),
            ),
          LayoutBuilder(builder: (context, constraints) {
            final scaled = MediaQuery.textScalerOf(context).scale(16);
            final columns = constraints.maxWidth >= 330 && scaled <= 18 ? 3
                : constraints.maxWidth >= 260 && scaled <= 24 ? 2 : 1;
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
                      onSelect: currentBundles == null ||
                          catalogue?.hasError == true ? () {} : () {
                        setState(() {
                          _bundleId = bundle.id;
                          _clearQuote();
                        });
                        if (validPhone && owner != null && !_purchaseLocked)
                          _requestQuote(owner, bundle);
                      },
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
          const SizedBox(height: 12),
          if (!_purchaseLocked && _quote == null &&
              wallet?.hasError != true && !(wallet?.isLoading ?? true) &&
              currentWallet?.purchasedAvailableMb == 0)
            Padding(padding: const EdgeInsets.only(bottom: 10),
              child: Text('No redeemable MB. Buy Data to continue.',
                textAlign: TextAlign.center,
                style: TextStyle(color: theme.colorScheme.error))),
          FilledButton.icon(
            onPressed: _quote != null && owner != null
                ? () => _showPurchaseReview(owner, _quote!)
                : canQuote ? () => _requestQuote(owner, selected!) : null,
            icon: const Icon(Icons.fact_check_outlined),
            label: Text(_quote == null ? 'Review bundle' : 'Open purchase review'),
          ),
          const SizedBox(height: 8),
          if (_quote == null)
            Center(child: Text('Review before purchase',
              style: theme.textTheme.labelSmall?.copyWith(
                color: colors.textMuted))),
          ],
          if (_quote != null && !_purchaseLocked && !_showingResult)
            TextButton.icon(
              onPressed: () => setState(_clearQuote),
              icon: const Icon(Icons.arrow_back_rounded),
              label: const Text('Back to plans')),
          if (_showingResult && !_purchaseLocked)
            TextButton.icon(
              onPressed: () => setState(() {
                _showingResult = false;
                _clearQuote();
              }),
              icon: const Icon(Icons.arrow_back_rounded),
              label: const Text('Back to plans')),
          TextButton(
            onPressed: () => context.go('/home?tab=wallet'),
            child: const Text('Back to Wallet'),
          ),
        ],
      ),
    );
  }
}

class _ReviewLine extends StatelessWidget {
  const _ReviewLine(this.label, this.value);
  final String label, value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Row(children: [
      Expanded(child: Text(label)),
      Flexible(child: Text(value, textAlign: TextAlign.end,
        style: const TextStyle(fontWeight: FontWeight.w700))),
    ]),
  );
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
      label: '${bundle.network}, ${bundle.allowanceLabel}, '
          '${bundle.costMb} MB, ${bundle.validityDays} days',
      child: Material(
        color: selected ? colors.surfaceMuted : colors.surfaceCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: selected ? colors.brandStrong : colors.structuralBorder,
            width: selected ? 2 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onSelect,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  Expanded(child: Text(bundle.allowanceLabel,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800))),
                  Icon(selected
                      ? Icons.check_circle_rounded
                      : Icons.circle_outlined,
                    size: 16,
                    color: selected ? colors.brandStrong : colors.structuralBorder),
                ]),
                const SizedBox(height: 7),
                Text('${bundle.validityDays} ${bundle.validityDays == 1 ? 'day' : 'days'}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colors.textMuted)),
                const SizedBox(height: 12),
                Text('${groupedMb(bundle.costMb)} MB', textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700, color: colors.brandStrong)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
