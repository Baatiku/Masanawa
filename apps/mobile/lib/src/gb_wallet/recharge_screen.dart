import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';
import 'ngn_wallet.dart';
import 'ngn_exchange_review.dart';

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
    return PopScope(
      canPop: review == null || _uncertain || _completed,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && !_busy && review != null && !_uncertain && !_completed) {
          setState(() => _review = null);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: review != null && !_uncertain && !_completed
              ? IconButton(
                  tooltip: 'Back to packages',
                  onPressed: _busy
                      ? null
                      : () => setState(() => _review = null),
                  icon: const Icon(Icons.arrow_back),
                )
              : null,
          title: Text(
            review == null
                ? 'Buy Data'
                : _completed
                ? 'Data added'
                : 'Review exchange',
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (owner == null)
              const Text('Sign in to buy data.')
            else ...[
              Text(
                'NGN balance',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                cash?.valueOrNull == null
                    ? 'Balance unavailable'
                    : formatNgn(cash!.valueOrNull!.balanceKobo),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              if (_loading || _busy) const LinearProgressIndicator(),
              if (_error != null)
                Text(
                  _error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              if (review == null) ...[
                if (!_enabled && !_loading)
                  const Text('Package exchange is currently unavailable.'),
                LayoutBuilder(builder: (context, constraints) {
                  final scale = MediaQuery.textScalerOf(context).scale(1);
                  final columns = scale >= 1.8 ? 1 : constraints.maxWidth >= 390 && scale < 1.3 ? 3 : 2;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _packages.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: columns == 1 ? 3.2 : 1.5,
                    ),
                    itemBuilder: (context, index) {
                      final p = _packages[index];
                      final selected = _selected == p.gb && _custom.text.isEmpty;
                      final scheme = Theme.of(context).colorScheme;
                      return Material(
                        color: selected ? scheme.primaryContainer : scheme.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(color: selected ? scheme.primary : scheme.outlineVariant),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          key: ValueKey('gb-package-${p.gb}'),
                          onTap: _busy ? null : () => setState(() {
                            _selected = p.gb;
                            _custom.clear();
                          }),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${p.gb} GB', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800)),
                              const SizedBox(height: 4),
                              Text(formatNgn(p.kobo), style: Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
                TextField(
                  controller: _custom,
                  enabled: !_busy,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    labelText: 'Custom quantity (GB)',
                    helperText: '1–2,000 whole GB',
                  ),
                  onChanged: (v) => setState(() {
                    final n = int.tryParse(v);
                    _selected = n != null && n >= 1 && n <= 2000 ? n : null;
                  }),
                ),
                const SizedBox(height: 14),
                FilledButton(
                  onPressed:
                      _enabled &&
                          !_loading &&
                          !_busy &&
                          _storeReady &&
                          _selected != null
                      ? _quote
                      : null,
                  child: const Text('Continue'),
                ),
                TextButton(
                  onPressed: _busy ? null : () => _load(owner),
                  child: const Text('Refresh packages'),
                ),
              ] else ...[
                Text(
                  '${review.sizeGb} GB',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  '${groupedMb(review.amountMb)} MB added to purchased data',
                ),
                const SizedBox(height: 10),
                Text('NGN cost: ${formatNgn(review.amountKobo)}'),
                const SizedBox(height: 10),
                if (_completed) ...[
                  const Text('Exchange completed'),
                  SelectableText('Receipt: ${review.operationId}'),
                  FilledButton(
                    onPressed: () => setState(() {
                      _review = null;
                      _completed = false;
                    }),
                    child: const Text('Choose another package'),
                  ),
                ] else if (_uncertain) ...[
                  SelectableText('Reference: ${review.operationId}'),
                  FilledButton(
                    onPressed: _busy ? null : () => _confirm(recover: true),
                    child: const Text('Check original exchange'),
                  ),
                  if (_canReplay)
                    OutlinedButton(
                      onPressed: _busy ? null : () => _confirm(replay: true),
                      child: const Text('Retry same exchange'),
                    ),
                ] else ...[
                  FilledButton(
                    onPressed:
                        _busy ||
                            (cash?.valueOrNull?.balanceKobo ?? 0) <
                                review.amountKobo ||
                            cash?.valueOrNull?.frozen == true ||
                            !review.expiresAt.isAfter(DateTime.now().toUtc())
                        ? null
                        : _confirm,
                    child: const Text('Confirm exchange'),
                  ),
                  TextButton(
                    onPressed: _busy
                        ? null
                        : () => setState(() => _review = null),
                    child: const Text('Change package'),
                  ),
                ],
              ],
              if (!_uncertain && !_busy)
                OutlinedButton.icon(
                  onPressed: () async {
                    await context.push('/wallet/fund');
                    if (mounted && _owner == owner)
                      ref.invalidate(ngnWalletBalanceProvider(owner));
                  },
                  icon: const Icon(Icons.account_balance_outlined),
                  label: const Text('Fund NGN wallet'),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
