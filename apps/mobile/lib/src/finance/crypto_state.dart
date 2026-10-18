import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../agents/masanawa_transport.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'crypto_models.dart';
import 'crypto_transport.dart';

class CryptoWalletSnapshot {
  const CryptoWalletSnapshot({
    required this.capabilities,
    required this.depositRoutes,
    required this.conversionRoutes,
    required this.history,
    required this.balances,
    required this.selectedProviderCode,
  });

  final CryptoCapabilities capabilities;
  final List<CryptoRoute> depositRoutes;
  final List<CryptoRoute> conversionRoutes;
  final List<CryptoIntent> history;
  final Map<String, String> balances;
  final String? selectedProviderCode;

  CryptoRoute? get selectedRoute {
    final code = selectedProviderCode;
    if (code == null) return null;
    for (final route in depositRoutes) {
      if (route.providerCode == code) return route;
    }
    return null;
  }

  String? get selectedBalance {
    final code = selectedProviderCode;
    return code == null ? null : balances[code];
  }

  CryptoWalletSnapshot copyWith({
    CryptoCapabilities? capabilities,
    List<CryptoRoute>? depositRoutes,
    List<CryptoRoute>? conversionRoutes,
    List<CryptoIntent>? history,
    Map<String, String>? balances,
    String? selectedProviderCode,
    bool clearSelectedProviderCode = false,
  }) {
    return CryptoWalletSnapshot(
      capabilities: capabilities ?? this.capabilities,
      depositRoutes: depositRoutes ?? this.depositRoutes,
      conversionRoutes: conversionRoutes ?? this.conversionRoutes,
      history: history ?? this.history,
      balances: balances ?? this.balances,
      selectedProviderCode: clearSelectedProviderCode
          ? null
          : selectedProviderCode ?? this.selectedProviderCode,
    );
  }
}

final cryptoWalletTransportProvider = Provider<CryptoWalletTransport>((ref) {
  final api = ref.watch(apiClientProvider);
  return MasanawaCryptoWalletTransport(dio: api.dio, baseUrl: kAgentBaseUrl);
});

class CryptoWalletController extends AsyncNotifier<CryptoWalletSnapshot> {
  CryptoWalletTransport get _transport =>
      ref.read(cryptoWalletTransportProvider);

  int _epoch = 0;
  String? _owner() => switch (ref.read(sessionProvider)) {
    SessionSignedIn(:final user) => user.id,
    _ => null,
  };
  void _checkOwner(String? owner) {
    if (owner != _owner()) throw StateError('Wallet account changed');
  }

  @override
  Future<CryptoWalletSnapshot> build() async {
    ref.watch(sessionProvider);
    _epoch++;
    ref.watch(cryptoWalletTransportProvider);
    return _load();
  }

  Future<CryptoWalletSnapshot> _load() async {
    final epoch = _epoch;
    final capabilities = await _transport.capabilities();
    if (epoch != _epoch) throw StateError('Wallet account changed');
    // Load independent provider resources in parallel; a slow history call
    // should not serially block the asset list and overview.
    final resources = await Future.wait<Object>([
      capabilities.deposits
          ? _transport.depositRoutes()
          : Future.value(<CryptoRoute>[]),
      capabilities.conversions
          ? _transport.conversionRoutes()
          : Future.value(<CryptoRoute>[]),
      _transport.history(limit: 50),
    ]);
    final depositRoutes = resources[0] as List<CryptoRoute>;
    final conversionRoutes = resources[1] as List<CryptoRoute>;
    final history = resources[2] as List<CryptoIntent>;

    final selected = _initialSelectedCode(depositRoutes, history);
    final balances = <String, String>{};
    // Bound parallel balance reads; one unavailable asset never hides others.
    for (var start = 0; start < depositRoutes.length; start += 4) {
      if (epoch != _epoch) throw StateError('Wallet account changed');
      final batch = depositRoutes.skip(start).take(4);
      await Future.wait(
        batch.map((route) async {
          try {
            final result = await _transport.balance(route.providerCode);
            if (epoch == _epoch && result.providerCode == route.providerCode)
              balances[result.providerCode] = result.amount;
          } catch (_) {
            /* No fabricated zero on unavailable balance. */
          }
        }),
      );
    }
    if (epoch != _epoch) throw StateError('Wallet account changed');

    return CryptoWalletSnapshot(
      capabilities: capabilities,
      depositRoutes: List.unmodifiable(depositRoutes),
      conversionRoutes: List.unmodifiable(conversionRoutes),
      history: List.unmodifiable(history),
      balances: Map.unmodifiable(balances),
      selectedProviderCode: selected,
    );
  }

  String? _initialSelectedCode(
    List<CryptoRoute> routes,
    List<CryptoIntent> history,
  ) {
    final available = {for (final route in routes) route.providerCode};
    for (final intent in history) {
      if (available.contains(intent.asset)) return intent.asset;
      final target = intent.targetAsset;
      if (target != null && available.contains(target)) return target;
    }
    return routes.isEmpty ? null : routes.first.providerCode;
  }

  Future<void> refresh() async {
    final epoch = ++_epoch;
    state = const AsyncLoading();
    final value = await AsyncValue.guard(_load);
    if (epoch == _epoch) state = value;
  }

  Future<void> selectAsset(String providerCode) async {
    final current = state.valueOrNull;
    if (current == null) return;
    final code = providerCode.trim();
    if (!current.depositRoutes.any((route) => route.providerCode == code)) {
      return;
    }
    state = AsyncData(current.copyWith(selectedProviderCode: code));
    if (!current.balances.containsKey(code)) {
      await refreshBalance(code);
    }
  }

  Future<void> refreshBalance([String? providerCode]) async {
    final current = state.valueOrNull;
    if (current == null) return;
    final code = (providerCode ?? current.selectedProviderCode)?.trim();
    if (code == null || code.isEmpty) return;
    final epoch = _epoch;
    final balance = await _transport.balance(code);
    if (epoch != _epoch || balance.providerCode != code) return;
    final latest = state.valueOrNull;
    if (latest == null) return;
    final balances = Map<String, String>.from(latest.balances)
      ..[balance.providerCode] = balance.amount;
    state = AsyncData(latest.copyWith(balances: Map.unmodifiable(balances)));
  }

  Future<CryptoIntent> createDeposit({
    required String requestId,
    required String providerCode,
    required String amount,
  }) async {
    final owner = _owner();
    final result = await _transport.createDeposit(
      requestId: requestId,
      providerCode: providerCode,
      amount: amount,
    );
    _checkOwner(owner);
    await _mergeOperation(result, refreshBalance: false);
    return result;
  }

  Future<CryptoFiatPurchase> createFiatPurchase({
    required String requestId,
    required String fiatAmount,
    required String fiatCurrency,
  }) async {
    final owner = _owner();
    final result = await _transport.createFiatPurchase(
      requestId: requestId,
      fiatAmount: fiatAmount,
      fiatCurrency: fiatCurrency,
    );
    _checkOwner(owner);
    final intent = await _transport.intent(requestId);
    _checkOwner(owner);
    if (intent != null) {
      _checkOwner(owner);
      await _mergeOperation(intent, refreshBalance: false);
    }
    return result;
  }

  Future<CryptoFiatPurchase> refreshFiatPurchase(String requestId) async {
    final owner = _owner();
    final purchase = await _transport.refreshFiatPurchase(requestId);
    _checkOwner(owner);
    final refreshed = await _transport.intent(requestId);
    _checkOwner(owner);
    if (refreshed != null) {
      _checkOwner(owner);
      await _mergeOperation(
        refreshed,
        refreshBalance:
            purchase.terminal &&
            (purchase.status == 'succeeded' || purchase.status == 'refunded'),
      );
    }
    return purchase;
  }

  Future<CryptoWithdrawalQuote> quoteWithdrawal({
    required String providerCode,
    required String amount,
    required String destinationAddress,
  }) {
    return _transport.quoteWithdrawal(
      providerCode: providerCode,
      amount: amount,
      destinationAddress: destinationAddress,
    );
  }

  Future<CryptoIntent> createWithdrawal({
    required String requestId,
    required String providerCode,
    required String amount,
    required String destinationAddress,
    String? stepUpToken,
  }) async {
    final owner = _owner();
    final result = await _transport.createWithdrawal(
      requestId: requestId,
      providerCode: providerCode,
      amount: amount,
      destinationAddress: destinationAddress,
      stepUpToken: stepUpToken,
    );
    _checkOwner(owner);
    await _mergeOperation(result, refreshBalance: true);
    return result;
  }

  Future<CryptoConversionQuote> quoteConversion({
    required String providerCode,
    required String targetProviderCode,
    required String amount,
  }) {
    return _transport.quoteConversion(
      providerCode: providerCode,
      targetProviderCode: targetProviderCode,
      amount: amount,
    );
  }

  Future<CryptoIntent> createConversion({
    required String requestId,
    required String providerCode,
    required String targetProviderCode,
    required String amount,
  }) async {
    final owner = _owner();
    final result = await _transport.createConversion(
      requestId: requestId,
      providerCode: providerCode,
      targetProviderCode: targetProviderCode,
      amount: amount,
    );
    _checkOwner(owner);
    await _mergeOperation(result, refreshBalance: true);
    return result;
  }

  Future<CryptoIntent> refreshOperation(CryptoIntent intent) async {
    final owner = _owner();
    if (intent.operation == 'buy') {
      final purchase = await _transport.refreshFiatPurchase(intent.requestId);
      _checkOwner(owner);
      final refreshed = await _transport.intent(intent.requestId) ?? intent;
      _checkOwner(owner);
      await _mergeOperation(
        refreshed,
        refreshBalance:
            purchase.terminal &&
            (purchase.status == 'succeeded' || purchase.status == 'refunded'),
      );
      return refreshed;
    }

    final refreshed = switch (intent.operation) {
      'withdraw' => await _transport.refreshWithdrawal(intent.requestId),
      'convert' => await _transport.refreshConversion(intent.requestId),
      _ => await _transport.intent(intent.requestId) ?? intent,
    };
    _checkOwner(owner);
    await _mergeOperation(refreshed, refreshBalance: refreshed.terminal);
    return refreshed;
  }

  Future<void> _mergeOperation(
    CryptoIntent intent, {
    required bool refreshBalance,
  }) async {
    final owner = _owner();
    final current = state.valueOrNull;
    if (current == null) return;

    final history = <CryptoIntent>[
      intent,
      for (final item in current.history)
        if (item.requestId != intent.requestId) item,
    ];

    var next = current.copyWith(history: List.unmodifiable(history));
    state = AsyncData(next);

    if (refreshBalance) {
      final codes = <String>{
        intent.asset,
        if (intent.targetAsset != null) intent.targetAsset!,
      };
      final balances = <String, String>{};
      for (final code in codes) {
        try {
          final balance = await _transport.balance(code);
          if (owner != _owner() || balance.providerCode != code) return;
          balances[balance.providerCode] = balance.amount;
        } catch (_) {
          // The transaction result remains useful even if a balance refresh
          // races provider reconciliation or a route becomes temporarily unavailable.
        }
      }
      if (owner != _owner()) return;
      final latest = state.valueOrNull;
      if (latest == null) return;
      next = latest.copyWith(
        balances: Map.unmodifiable({...latest.balances, ...balances}),
      );
      state = AsyncData(next);
    }
  }
}

final cryptoWalletProvider =
    AsyncNotifierProvider<CryptoWalletController, CryptoWalletSnapshot>(
      CryptoWalletController.new,
    );
