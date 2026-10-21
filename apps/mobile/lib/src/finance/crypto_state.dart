import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../agents/masanawa_transport.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'crypto_models.dart';
import 'crypto_transport.dart';
import 'wallet_pending_operation.dart';

class CryptoWalletSnapshot {
  const CryptoWalletSnapshot({
    this.holdingRoutes=const [],
    this.holdingsVerified=false,
    this.reservedBalances=const {},
    required this.capabilities,
    required this.depositRoutes,
    required this.conversionRoutes,
    required this.history,
    required this.balances,
    required this.selectedProviderCode,
  });

  final Map<String,String> reservedBalances;
  final bool holdingsVerified;
  final List<CryptoRoute> holdingRoutes;
  final CryptoCapabilities capabilities;
  final List<CryptoRoute> depositRoutes;
  final List<CryptoRoute> conversionRoutes;
  final List<CryptoIntent> history;
  final Map<String, String> balances;
  final String? selectedProviderCode;

  List<CryptoRoute> get assetRoutes {
    final routes = <String,CryptoRoute>{
      for(final route in [...holdingRoutes,...depositRoutes,...conversionRoutes]) route.providerCode:route,
    };
    for(final item in history) {
      routes.putIfAbsent(item.asset,()=>CryptoRoute(providerCode:item.asset,asset:item.asset.toUpperCase(),network:item.network));
      final target=item.targetAsset;
      if(target!=null) routes.putIfAbsent(target,()=>CryptoRoute(providerCode:target,asset:target.toUpperCase(),network:item.targetNetwork));
    }
    return List.unmodifiable(routes.values);
  }

  CryptoRoute? get selectedRoute {
    final code = selectedProviderCode;
    if (code == null) return null;
    for (final route in assetRoutes) {
      if (route.providerCode == code) return route;
    }
    return null;
  }

  String? get selectedBalance {
    final code = selectedProviderCode;
    return code == null ? null : balances[code];
  }

  CryptoWalletSnapshot copyWith({
    List<CryptoRoute>? holdingRoutes,
    bool? holdingsVerified,
    Map<String,String>? reservedBalances,
    CryptoCapabilities? capabilities,
    List<CryptoRoute>? depositRoutes,
    List<CryptoRoute>? conversionRoutes,
    List<CryptoIntent>? history,
    Map<String, String>? balances,
    String? selectedProviderCode,
    bool clearSelectedProviderCode = false,
  }) {
    return CryptoWalletSnapshot(
      holdingRoutes:holdingRoutes??this.holdingRoutes,holdingsVerified:holdingsVerified??this.holdingsVerified,reservedBalances:reservedBalances??this.reservedBalances,
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

final walletPendingCryptoProvider=FutureProvider<Map<String,dynamic>?>((ref) {
  final owner=ref.watch(sessionProvider.select((s)=>s is SessionSignedIn?s.user.id:null));
  return owner==null?Future.value(null):WalletPendingOperationStore(owner).read();
});

class CryptoWalletController extends AsyncNotifier<CryptoWalletSnapshot> {
  CryptoWalletTransport get _transport =>
      ref.read(cryptoWalletTransportProvider);

  bool _submittingOperation=false;
  int _epoch = 0, _projectionGeneration=0;
  Future<void> _refreshHeldProjection(String? owner)async{
    final epoch=_epoch, projection=++_projectionGeneration;
    final transport=_transport;
    if(transport is! CryptoHoldingsTransport)return;
    try{
      final rows=await (transport as CryptoHoldingsTransport).holdings();_checkOwner(owner);
      if(epoch!=_epoch||projection!=_projectionGeneration)return;
      final routes=<CryptoRoute>[], reserved=<String,String>{}, available=<String,String>{};
      for(final row in rows){
        final route=CryptoRoute.fromJson(row);routes.add(route);
        available[route.providerCode]=CryptoBalance.fromJson(row).amount;
        reserved[route.providerCode]=CryptoBalance.fromJson({'providerCode':route.providerCode,'amount':row['reservedAmount']}).amount;
      }
      final latest=state.valueOrNull;if(latest==null)return;
      state=AsyncData(latest.copyWith(holdingRoutes:List.unmodifiable(routes),holdingsVerified:true,
        reservedBalances:Map.unmodifiable(reserved),balances:Map.unmodifiable({...latest.balances,...available})));
    }catch(_){
      if(owner!=_owner()||epoch!=_epoch||projection!=_projectionGeneration)return;
      final latest=state.valueOrNull;
      if(latest!=null)state=AsyncData(latest.copyWith(holdingsVerified:false,reservedBalances:const {}));
    }
  }
  Future<void> _prepareOperation(String? owner,Map<String,dynamic> original)async{
    if(owner==null||_submittingOperation)throw StateError('Another operation is pending.');
    _submittingOperation=true;
    try {
      if(await WalletPendingOperationStore(owner).read()!=null)throw StateError('Check the previous operation before sending again.');
      _checkOwner(owner);
      await WalletPendingOperationStore(owner).save(original);
      _checkOwner(owner);ref.invalidate(walletPendingCryptoProvider);
    }catch(_){_submittingOperation=false;rethrow;}
  }
  Future<void> _settledOperation(String owner,CryptoIntent intent)async{
    if(const ['succeeded','failed','refunded','expired'].contains(intent.status)) {
      await WalletPendingOperationStore(owner).clear(intent.requestId);
    }
    _checkOwner(owner);ref.invalidate(walletPendingCryptoProvider);
  }
  Future<CryptoIntent?> checkPendingOperation()async{
    final owner=_owner();if(owner==null)throw StateError('Sign in again.');
    final original=await WalletPendingOperationStore(owner).read();_checkOwner(owner);
    if(original==null)return null;
    var intent=await _transport.intent(original['requestId'] as String);_checkOwner(owner);
    if(intent==null)throw StateError('Original request not found yet. Do not submit another payment; check again or contact support with its reference.');
    String units(String value){final parts=value.split('.');return parts[0]+'.'+(parts.length>1?parts[1]:'').padRight(18,'0');}
    void verify(CryptoIntent intent){
      if(intent.requestId!=original['requestId']||intent.operation!=original['operation']||intent.asset.toLowerCase()!=(original['providerCode'] as String).toLowerCase()||
      units(intent.amount)!=units(original['amount'] as String)||
      (original['destinationAddress']!=null&&intent.destinationAddress!=original['destinationAddress'])||
      (original['targetProviderCode']!=null&&intent.targetAsset?.toLowerCase()!=(original['targetProviderCode'] as String).toLowerCase()))
        throw StateError('Original operation terms could not be verified.');
    }
    verify(intent);
    if(!['succeeded','failed','refunded','expired','manual_review'].contains(intent.status)) {
      intent=intent.operation=='withdraw'?await _transport.refreshWithdrawal(intent.requestId):await _transport.refreshConversion(intent.requestId);_checkOwner(owner);
    }
    verify(intent);
    await _mergeOperation(intent,refreshBalance:true);_checkOwner(owner);
    await _settledOperation(owner,intent);return intent;
  }
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

    var holdingsVerified=false;
    final holdingRoutes=<CryptoRoute>[];
    final heldBalances=<String,String>{};
    final reserves=<String,String>{};
    if(_transport is CryptoHoldingsTransport) {
      try {
        final holdings=await (_transport as CryptoHoldingsTransport).holdings();
        if(epoch!=_epoch) throw StateError('Wallet account changed');
        for(final item in holdings) {
          final route=CryptoRoute.fromJson(item);
          final balance=CryptoBalance.fromJson(item);
          holdingRoutes.add(route);heldBalances[route.providerCode]=balance.amount;
          final reserved=CryptoBalance.fromJson({'providerCode':route.providerCode,'amount':item['reservedAmount']});
          reserves[route.providerCode]=reserved.amount;
        }
        holdingsVerified=true;
      } catch(_) { /* Per-asset reads remain available; no fabricated zero. */ }
    }
    final inventory = CryptoWalletSnapshot(holdingRoutes:holdingRoutes,capabilities:capabilities,depositRoutes:depositRoutes,
      conversionRoutes:conversionRoutes,history:history,balances:const {},selectedProviderCode:null).assetRoutes;
    final selected = _initialSelectedCode(inventory, history);
    final balances = <String, String>{...heldBalances};
    // Bound parallel balance reads; one unavailable asset never hides others.
    for (var start = 0; start < inventory.length; start += 4) {
      if (epoch != _epoch) throw StateError('Wallet account changed');
      final batch = inventory.skip(start).take(4);
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
      holdingRoutes:List.unmodifiable(holdingRoutes),holdingsVerified:holdingsVerified,reservedBalances:Map.unmodifiable(reserves),
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
    if (!current.assetRoutes.any((route) => route.providerCode == code)) {
      return;
    }
    state = AsyncData(current.copyWith(selectedProviderCode: code));
    if (!current.balances.containsKey(code)) {
      await refreshBalance(code);
    }
  }

  Future<void> refreshBalance([String? providerCode]) async {
    final owner=_owner();
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
    await _refreshHeldProjection(owner);
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
    await _prepareOperation(owner,{'operation':'withdraw','requestId':requestId,'providerCode':providerCode,'amount':amount,'destinationAddress':destinationAddress});
    try {
      _checkOwner(owner);
      final result=await _transport.createWithdrawal(requestId:requestId,providerCode:providerCode,
        amount:amount,destinationAddress:destinationAddress,stepUpToken:stepUpToken);
      _checkOwner(owner);await _mergeOperation(result,refreshBalance:true);
      await _settledOperation(owner!,result);return result;
    } finally {_submittingOperation=false;}
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
    await _prepareOperation(owner,{'operation':'convert','requestId':requestId,'providerCode':providerCode,'amount':amount,'targetProviderCode':targetProviderCode});
    try {
      _checkOwner(owner);
      final result=await _transport.createConversion(requestId:requestId,providerCode:providerCode,targetProviderCode:targetProviderCode,amount:amount);
      _checkOwner(owner);await _mergeOperation(result,refreshBalance:true);
      await _settledOperation(owner!,result);return result;
    } finally {_submittingOperation=false;}
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
    if(owner!=null)await _settledOperation(owner,refreshed);
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
      await _refreshHeldProjection(owner);
    }
  }
}

final cryptoWalletProvider =
    AsyncNotifierProvider<CryptoWalletController, CryptoWalletSnapshot>(
      CryptoWalletController.new,
    );
