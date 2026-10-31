import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import '../ui/components/masanawa_section_heading.dart';
import 'gb_wallet_summary.dart';
import 'ngn_wallet.dart';
import 'ngn_exchange_review.dart';
import 'gb_wallet_flow_components.dart';

class _Package {
  const _Package(this.gb, this.kobo);
  final int gb, kobo;
}

class RechargePackagesScreen extends ConsumerStatefulWidget {
  const RechargePackagesScreen({super.key});
  @override
  ConsumerState<RechargePackagesScreen> createState() =>
      _RechargePackagesScreenState();
}

class _RechargePackagesScreenState
    extends ConsumerState<RechargePackagesScreen> {
  final _custom = TextEditingController();
  GbWalletOwner? _owner;
  List<_Package> _packages = [];
  String? _version, _error;
  int? _selected;
  bool _loading = false,
      _busy = false,
      _enabled = false,
      _uncertain = false,
      _completed = false,
      _storeReady = false;
  bool _canReplay = false;
  NgnExchangeReview? _review;
  CancelToken? _cancel;
  int _generation = 0;
  bool _current(GbWalletOwner owner, int generation) {
    final s = ref.read(sessionProvider);
    return mounted &&
        generation == _generation &&
        s is SessionSignedIn &&
        s.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    _custom.dispose();
    super.dispose();
  }

  Future<void> _load(GbWalletOwner owner) async {
    final generation = ++_generation;
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final pending = await ref
          .read(ngnPendingStoreProvider)
          .read(owner.accountId);
      if (!_current(owner, generation)) return;
      setState(() {
        _storeReady = true;
        if (pending != null) {
          _review = pending;
          _uncertain = true;
        }
      });
      final response = await ref
          .read(apiClientProvider)
          .dio
          .get<Object?>(
            '/v1/gb/wallet/exchange/packages',
            cancelToken: cancel,
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      final raw = response.data;
      if (raw is! Map<String, dynamic> ||
          raw['version'] is! String ||
          raw['packages'] is! List ||
          raw['exchangeEnabled'] is! bool) {
        throw const FormatException('Invalid packages');
      }
      final packages = <_Package>[];
      for (final item in raw['packages'] as List) {
        if (item is! Map<String, dynamic> ||
            item['sizeGb'] is! int ||
            item['totalKobo'] is! int ||
            (item['sizeGb'] as int) < 1 ||
            (item['sizeGb'] as int) > 2000 ||
            (item['totalKobo'] as int) <= 0 ||
            item['expectedMb'] != (item['sizeGb'] as int) * 1000) {
          throw const FormatException('Invalid package');
        }
        packages.add(_Package(item['sizeGb'] as int, item['totalKobo'] as int));
      }
      if (!_current(owner, generation)) return;
      setState(() {
        _version = raw['version'] as String;
        _packages = packages;
        _enabled = raw['exchangeEnabled'] as bool;
        _loading = false;
      });
    } catch (_) {
      if (!_current(owner, generation)) return;
      setState(() {
        _loading = false;
        _error = 'Packages unavailable. Retry to check your original request.';
      });
    }
  }

  Future<void> _quote() async {
    final owner = _owner, gb = _selected;
    if (owner == null || gb == null || _busy || _uncertain || !_storeReady)
      return;
    final generation = ++_generation;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final r = await ref
          .read(apiClientProvider)
          .dio
          .post<Object?>(
            '/v1/gb/wallet/exchange/quote',
            data: {'sizeGb': gb},
            options: Options(headers: const {'Cache-Control': 'no-store'}),
          );
      final review = NgnExchangeReview.fromJson(
        r.data,
        expectedGb: gb,
        expectedVersion: _version,
      );
      if (!_current(owner, generation)) return;
      setState(() => _review = review);
    } catch (_) {
      if (!_current(owner, generation)) return;
      setState(
        () => _error =
            'Could not review this package. Your balance has not been exchanged.',
      );
    } finally {
      if (_current(owner, generation)) setState(() => _busy = false);
    }
  }

  Future<void> _confirm({bool recover = false, bool replay = false}) async {
    final owner = _owner, review = _review;
    if (owner == null || review == null || _busy) return;
    final generation = ++_generation;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final api = ref.read(apiClientProvider).dio;
      if (recover) {
        final r = await api.get<Object?>(
          '/v1/gb/wallet/exchange/${review.operationId}',
          options: Options(headers: const {'Cache-Control': 'no-store'}),
        );
        review.verifyReceipt(r.data);
      } else {
        if (_uncertain && !replay) return;
        // Do not dispatch a financial write unless recovery survives app exit.
        await ref.read(ngnPendingStoreProvider).write(owner.accountId, review);
        if (!_current(owner, generation)) return;
        setState(() => _uncertain = true);
        final r = await api.post<Object?>(
          '/v1/gb/wallet/exchange/confirm',
          data: {'reviewToken': review.token, 'reviewAccepted': true},
          options: Options(headers: const {'Cache-Control': 'no-store'}),
        );
        review.verifyReceipt(r.data);
      }
      if (!_current(owner, generation)) return;
      await ref.read(ngnPendingStoreProvider).clear(owner.accountId);
      if (!_current(owner, generation)) return;
      setState(() {
        _completed = true;
        _uncertain = false;
      });
      ref.invalidate(ngnWalletBalanceProvider(owner));
      ref.invalidate(gbWalletSummaryProvider(owner));
    } on DioException catch (error) {
      if (!_current(owner, generation)) return;
      if (error.response?.statusCode == 410 ||
          (!recover &&
              !replay &&
              [403, 409].contains(error.response?.statusCode))) {
        try {
          await ref.read(ngnPendingStoreProvider).clear(owner.accountId);
        } catch (_) {
          if (_current(owner, generation))
            setState(
              () => _error =
                  'Could not update local recovery. Check the original request again.',
            );
          return;
        }
        if (!_current(owner, generation)) return;
        setState(() {
          _uncertain = false;
          _review = null;
          _canReplay = false;
          _error =
              'Exchange not completed. Refresh your balance and review again.';
        });
        ref.invalidate(ngnWalletBalanceProvider(owner));
      } else {
        setState(() {
          _canReplay = recover && error.response?.statusCode == 404;
          _error =
              'Exchange not confirmed. Check or retry only the original request.';
        });
      }
    } catch (_) {
      if (!_current(owner, generation)) return;
      setState(
        () => _error = _uncertain
            ? 'Exchange not confirmed. Check the original receipt before buying another package.'
            : 'Could not safely save this request. Nothing was submitted.',
      );
    } finally {
      if (_current(owner, generation)) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
        ? (
            accountId: session.user.id,
            authorizationEpoch: ref
                .read(sessionProvider.notifier)
                .authorizationEpoch,
          )
        : null;
    if (_owner != owner) {
      _generation++;
      _cancel?.cancel();
      _owner = owner;
      _packages = [];
      _review = null;
      _custom.clear();
      _selected = null;
      _version = null;
      _error = null;
      _loading = owner != null;
      _busy = false;
      _enabled = false;
      _uncertain = false;
      _completed = false;
      _storeReady = false;
      _canReplay = false;
      if (owner != null)
        Future.microtask(() {
          if (mounted && _owner == owner) _load(owner);
        });
    }
    final cash = owner == null
        ? null
        : ref.watch(ngnWalletBalanceProvider(owner));
    final review = _review;
    final verifiedCash = cash != null && !cash.isLoading && !cash.hasError
        ? cash.valueOrNull
        : null;
    final insufficientCash =
        review != null &&
        !_completed &&
        !_uncertain &&
        (verifiedCash == null ||
            verifiedCash.frozen ||
            verifiedCash.balanceKobo < review.amountKobo);
    final quoteExpired =
        review != null && !review.expiresAt.isAfter(DateTime.now().toUtc());
    final selectedPackage = _packages.where((p) => p.gb == _selected);
    final colors = context.masanawa;
    final insets = MediaQuery.viewInsetsOf(context);
    void closeOrBack() {
      if (_busy) return;
      if (review != null && !_uncertain && !_completed) {
        setState(() => _review = null);
      } else if (context.canPop()) {
        context.pop();
      } else {
        context.go('/home?tab=wallet');
      }
    }

    return PopScope(
      canPop: review == null || _uncertain || _completed,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && !_busy && review != null && !_uncertain && !_completed) {
          setState(() => _review = null);
        }
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: insets.bottom),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 560,
              maxHeight:
                  (MediaQuery.sizeOf(context).height - insets.bottom) * .92,
            ),
            child: Material(
              color: colors.surfaceCard,
              elevation: 16,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              clipBehavior: Clip.antiAlias,
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      width: 34,
                      height: 4,
                      decoration: BoxDecoration(
                        color: colors.structuralBorder,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        16,
                        6,
                        8,
                        0,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 48),
                          Expanded(
                            child: Text(
                              review == null
                                  ? 'Buy Data'
                                  : _completed
                                  ? 'Data added'
                                  : 'Review exchange',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                          IconButton(
                            tooltip:
                                review != null && !_uncertain && !_completed
                                ? 'Back to packages'
                                : 'Close Buy Data',
                            onPressed: _busy ? null : closeOrBack,
                            icon: Icon(
                              review != null && !_uncertain && !_completed
                                  ? Icons.arrow_back_rounded
                                  : Icons.close_rounded,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(16),
                        children: [
                          if (owner == null)
                            const Text('Sign in to buy data.')
                          else ...[
                            if (_loading || _busy)
                              const LinearProgressIndicator(),
                            if (_error != null)
                              Text(
                                _error!,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            if (review == null) ...[
                              Row(
                                children: [
                                  const Expanded(
                                    child: MasanawaSectionHeading(
                                      'Choose a package',
                                    ),
                                  ),
                                  Text(
                                    verifiedCash == null
                                        ? 'NGN unavailable'
                                        : 'Available ${formatNgn(verifiedCash.balanceKobo)}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(color: colors.textMuted),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              if (!_enabled && !_loading)
                                const GbWalletInlineNotice(
                                  message:
                                      'Package exchange is currently unavailable.',
                                ),
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  final scale = MediaQuery.textScalerOf(
                                    context,
                                  ).scale(1);
                                  final columns = scale >= 1.8
                                      ? 2
                                      : scale > 1.3 ||
                                            constraints.maxWidth < 280
                                      ? 3
                                      : 4;
                                  return GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: _loading && _packages.isEmpty
                                        ? 8
                                        : _packages.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: columns,
                                          crossAxisSpacing: 7,
                                          mainAxisSpacing: 7,
                                          childAspectRatio: columns == 4
                                              ? 1.05
                                              : 1.15,
                                        ),
                                    itemBuilder: (context, index) {
                                      if (_loading && _packages.isEmpty)
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: colors.fieldSurface,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.data_usage_outlined,
                                              size: 20,
                                              color: colors.textMuted,
                                            ),
                                          ),
                                        );
                                      final p = _packages[index];
                                      final selected =
                                          _selected == p.gb &&
                                          _custom.text.isEmpty;
                                      return Material(
                                        color: !_enabled
                                            ? colors.surfaceMuted
                                            : selected
                                            ? colors.surfaceMuted
                                            : colors.fieldSurface,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          side: BorderSide(
                                            color: selected
                                                ? colors.brand
                                                : colors.structuralBorder,
                                            width: selected ? 1.6 : 1,
                                          ),
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        child: InkWell(
                                          key: ValueKey('gb-package-${p.gb}'),
                                          onTap: _busy || !_enabled
                                              ? null
                                              : () => setState(() {
                                                  _selected = p.gb;
                                                  _custom.clear();
                                                }),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '${p.gb} GB',
                                                  maxLines: 1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                                const SizedBox(height: 3),
                                                Text(
                                                  formatNgn(p.kobo),
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(
                                                    context,
                                                  ).textTheme.labelSmall,
                                                ),
                                                if (selected)
                                                  Icon(
                                                    Icons.check_circle_rounded,
                                                    size: 14,
                                                    color: colors.brandStrong,
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              TextField(
                                controller: _custom,
                                enabled: !_busy,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: const InputDecoration(
                                  labelText: 'Custom quantity (GB)',
                                  helperText: '1–2,000 whole GB',
                                ),
                                onChanged: (v) => setState(() {
                                  final n = int.tryParse(v);
                                  _selected = n != null && n >= 1 && n <= 2000
                                      ? n
                                      : null;
                                }),
                              ),
                              const SizedBox(height: 14),
                              Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: TextButton.icon(
                                  onPressed: _busy ? null : () => _load(owner),
                                  icon: const Icon(
                                    Icons.refresh_rounded,
                                    size: 18,
                                  ),
                                  label: const Text('Refresh packages'),
                                ),
                              ),
                            ] else ...[
                              GbWalletAmountHero(
                                '${review.sizeGb} GB',
                                caption: _completed
                                    ? '${groupedMb(review.amountMb)} MB added to purchased data'
                                    : 'Will add ${groupedMb(review.amountMb)} purchased MB if confirmed',
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      GbWalletReviewLine(
                                        _completed
                                            ? 'Current NGN'
                                            : 'Available NGN',
                                        verifiedCash == null
                                            ? 'Unavailable'
                                            : formatNgn(
                                                verifiedCash.balanceKobo,
                                              ),
                                      ),
                                      GbWalletReviewLine(
                                        'Exchange cost',
                                        '−${formatNgn(review.amountKobo)}',
                                      ),
                                      if (!_completed)
                                        GbWalletReviewLine(
                                          'Projected NGN remaining',
                                          verifiedCash == null
                                              ? 'Unavailable'
                                              : formatNgn(
                                                  verifiedCash.balanceKobo -
                                                      review.amountKobo,
                                                ),
                                          emphasize: true,
                                        ),
                                      GbWalletReviewLine(
                                        _completed
                                            ? 'Purchased data gained'
                                            : 'Purchased data expected',
                                        '+${groupedMb(review.amountMb)} MB',
                                        emphasize: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ExpansionTile(
                                title: const Text('Exchange details'),
                                children: [
                                  GbWalletReviewLine(
                                    'Rate version',
                                    review.rateVersion,
                                  ),
                                  GbWalletReviewLine(
                                    'Valid until',
                                    TimeOfDay.fromDateTime(
                                      review.expiresAt.toLocal(),
                                    ).format(context),
                                  ),
                                ],
                              ),
                              if (insufficientCash)
                                GbWalletInlineNotice(
                                  message: verifiedCash == null
                                      ? 'Balance unavailable. Refresh your NGN balance.'
                                      : verifiedCash.frozen
                                      ? 'Your NGN balance is temporarily unavailable.'
                                      : 'Not enough NGN. Fund your wallet to continue.',
                                  actionLabel:
                                      verifiedCash != null &&
                                          !verifiedCash.frozen
                                      ? 'Fund NGN'
                                      : null,
                                  onAction:
                                      verifiedCash != null &&
                                          !verifiedCash.frozen
                                      ? () async {
                                          await context.push('/wallet/fund');
                                          if (mounted && _owner == owner) {
                                            ref.invalidate(
                                              ngnWalletBalanceProvider(owner),
                                            );
                                            setState(() {
                                              _review = null;
                                              _error = null;
                                            });
                                          }
                                        }
                                      : null,
                                ),
                              if (quoteExpired && !_completed && !_uncertain)
                                GbWalletInlineNotice(
                                  message:
                                      'Quote expired. Go back to packages and review again.',
                                ),
                              if (_completed) ...[
                                const GbWalletInlineNotice(
                                  message:
                                      'Your purchased data balance has been updated.',
                                  warning: false,
                                ),
                              ] else if (_uncertain) ...[
                                if (_error == null)
                                  GbWalletInlineNotice(
                                    message:
                                        'This exchange needs an original receipt check. '
                                        'Do not start another purchase.',
                                  ),
                                if (_canReplay)
                                  OutlinedButton(
                                    onPressed: _busy
                                        ? null
                                        : () => _confirm(replay: true),
                                    child: const Text('Retry same exchange'),
                                  ),
                              ],
                              ExpansionTile(
                                title: const Text('Original reference'),
                                children: [SelectableText(review.operationId)],
                              ),
                              if (!_uncertain && !_completed)
                                TextButton(
                                  onPressed: _busy
                                      ? null
                                      : () => setState(() => _review = null),
                                  child: const Text('Change package'),
                                ),
                            ],
                          ],
                        ],
                      ),
                    ),
                    if (owner != null)
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: colors.structuralBorder),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (review == null && _selected != null)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Selected: $_selected GB',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                        ),
                                      ),
                                      if (selectedPackage.isNotEmpty)
                                        Text(
                                          formatNgn(selectedPackage.first.kobo),
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                        ),
                                    ],
                                  ),
                                ),
                              if (review != null && _completed)
                                Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton(
                                        onPressed: _busy ? null : closeOrBack,
                                        child: const Text('Done'),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: FilledButton(
                                        onPressed: _busy
                                            ? null
                                            : () => context.push(
                                                '/wallet/activity',
                                              ),
                                        child: const Text('View activity'),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton.icon(
                                    onPressed: _busy
                                        ? null
                                        : review == null
                                        ? (_enabled &&
                                                  !_loading &&
                                                  _storeReady &&
                                                  _selected != null &&
                                                  !_uncertain
                                              ? _quote
                                              : null)
                                        : _uncertain
                                        ? () => _confirm(recover: true)
                                        : insufficientCash || quoteExpired
                                        ? null
                                        : _confirm,
                                    icon: Icon(
                                      review == null
                                          ? Icons.fact_check_outlined
                                          : _uncertain
                                          ? Icons.search_rounded
                                          : Icons.check_circle_outline_rounded,
                                    ),
                                    label: Text(
                                      review == null
                                          ? 'Continue to review'
                                          : _uncertain
                                          ? 'Check original exchange'
                                          : 'Confirm exchange',
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
