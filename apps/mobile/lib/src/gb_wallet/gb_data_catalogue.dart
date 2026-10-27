import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';

typedef GbDataOwner = ({String accountId, int authorizationEpoch});

const gbDataNetworks = ['MTN', 'AIRTEL', 'GLO', '9MOBILE'];

/// Buckets are derived solely from verified numeric validityDays. Avoid
/// describing a 3-day or 60-day item as a weekly/monthly offer by guesswork.
enum GbDataValidityPeriod { daily, weekly, monthly, other }

GbDataValidityPeriod gbDataValidityPeriod(int validityDays) {
  if (validityDays == 1) return GbDataValidityPeriod.daily;
  if (validityDays == 7) return GbDataValidityPeriod.weekly;
  if (validityDays >= 28 && validityDays <= 31) {
    return GbDataValidityPeriod.monthly;
  }
  return GbDataValidityPeriod.other;
}

bool gbBundleMatchesSelection(
  GbVerifiedBundle bundle, {
  required String? network,
  required GbDataValidityPeriod? period,
}) => network != null && gbDataNetworks.contains(network) &&
    bundle.network == network &&
    (period == null || gbDataValidityPeriod(bundle.validityDays) == period);

/// Client projection of a reviewed whole-GB mapping *and* a current provider
/// item. A product name is never allowed to imply its allowance or validity.
class GbVerifiedBundle {
  const GbVerifiedBundle({
    required this.id,
    required this.version,
    required this.network,
    required this.allowanceGb,
    required this.costMb,
    required this.validityDays,
    required this.providerAmount,
    required this.expiresAt,
    this.extrasLabel,
  });

  final String id, version, network, providerAmount;
  final num allowanceGb;
  final int costMb, validityDays;
  final String? extrasLabel;
  String get allowanceLabel => costMb < 1000 ? '$costMb MB' :
      '${(costMb / 1000).toStringAsFixed(3).replaceFirst(RegExp(r'\.?0+$'), '')} GB';
  final DateTime expiresAt;

  factory GbVerifiedBundle.fromJson(Object? value) {
    if (value is! Map<String, dynamic>) {
      throw const FormatException('Invalid GB bundle');
    }
    final id = value['id'];
    final version = value['version'];
    final network = value['network'];
    final gb = value['allowanceGb'];
    final mb = value['costMb'];
    final approvedMb = value['allowanceMb'];
    final extras = value['extrasLabel'];
    final days = value['validityDays'];
    final providerAmount = value['providerAmount'];
    final expiresText = value['expiresAt'];
    final expires = expiresText is String ? DateTime.tryParse(expiresText) : null;
    if (id is! String || id.length < 3 || id.length > 260 ||
        version is! String || version.isEmpty || version.length > 128 ||
        network is! String || !gbDataNetworks.contains(network) ||
        gb is! num || !gb.isFinite ||
        mb is! int || mb < 1 || mb > 1000000 ||
        (approvedMb == null ? (gb is! int || gb < 1 || mb != gb * 1000)
          : (approvedMb is! int || approvedMb != mb || gb != mb / 1000)) ||
        (extras != null && (extras is! String || extras.isEmpty || extras.length > 160)) ||
        days is! int || days < 1 || days > 366 ||
        providerAmount is! String ||
        !RegExp(r'^(?:0|[1-9][0-9]{0,11})(?:\.[0-9]{1,2})?$')
            .hasMatch(providerAmount) ||
        !RegExp(r'[1-9]').hasMatch(providerAmount) ||
        expires == null || !expires.isUtc ||
        !expires.isAfter(DateTime.now().toUtc())) {
      throw const FormatException('Unverified or expired GB bundle');
    }
    return GbVerifiedBundle(
      id: id, version: version, network: network, allowanceGb: gb,
      costMb: mb, validityDays: days, providerAmount: providerAmount,
      expiresAt: expires,
      extrasLabel: extras as String?,
    );
  }
}

class GbReadOnlyQuote {
  const GbReadOnlyQuote({
    required this.bundle,
    required this.recipientPhone,
    required this.expiresAt,
  });

  final GbVerifiedBundle bundle;
  final String recipientPhone;
  final DateTime expiresAt;

  factory GbReadOnlyQuote.fromJson(
    Object? response, {
    required GbVerifiedBundle selected,
    required String enteredPhone,
  }) {
    if (response is! Map<String, dynamic> ||
        response['previewOnly'] != true ||
        response['quote'] is! Map<String, dynamic>) {
      throw const FormatException('Unverified data quote');
    }
    final raw = response['quote'] as Map<String, dynamic>;
    final bundle = GbVerifiedBundle.fromJson(raw);
    final phone = raw['recipientPhone'];
    final quoteExpiry = raw['quoteExpiresAt'];
    final expiry = quoteExpiry is String ? DateTime.tryParse(quoteExpiry) : null;
    final normalized = normalizeNigerianDataPhone(enteredPhone);
    if (normalized == null || phone != normalized ||
        bundle.id != selected.id || bundle.version != selected.version ||
        bundle.network != selected.network ||
        bundle.costMb != selected.costMb ||
        bundle.allowanceGb != selected.allowanceGb ||
        bundle.extrasLabel != selected.extrasLabel ||
        bundle.validityDays != selected.validityDays ||
        bundle.providerAmount != selected.providerAmount ||
        raw['requiresWalletReservation'] != true ||
        raw['feeMb'] != 0 ||
        expiry == null || !expiry.isUtc ||
        !expiry.isAfter(DateTime.now().toUtc()) ||
        expiry.isAfter(DateTime.now().toUtc().add(
          const Duration(seconds: 150))) ||
        expiry.isAfter(selected.expiresAt)) {
      throw const FormatException('Inconsistent GB quote; refresh bundles');
    }
    return GbReadOnlyQuote(bundle: bundle, recipientPhone: normalized,
        expiresAt: expiry);
  }
}

/// Exact same accepted prefixes and normalization as the Gateway, with no
/// recipient inference based on the authenticated account phone.
String? normalizeNigerianDataPhone(String input) {
  final value = input.trim();
  if (RegExp(r'^0(?:70|80|81|90|91)[0-9]{8}$').hasMatch(value)) {
    return '+234${value.substring(1)}';
  }
  if (RegExp(r'^\+234(?:70|80|81|90|91)[0-9]{8}$').hasMatch(value)) {
    return value;
  }
  return null;
}

/// Prefix-based suggestion only. NCC assigned number ranges (2023/24).
/// Nigeria supports mobile number portability: the operator may have
/// changed, so the user must be allowed to choose a different network.
String? guessGbNetworkForNigerianPhone(String input) {
  final phone = normalizeNigerianDataPhone(input);
  if (phone == null) return null;
  final prefix = '0${phone.substring(4, 7)}';
  const allocations = <String, String>{
    '0701': 'AIRTEL', '0708': 'AIRTEL',
    '0802': 'AIRTEL', '0808': 'AIRTEL', '0812': 'AIRTEL',
    '0901': 'AIRTEL', '0902': 'AIRTEL', '0904': 'AIRTEL',
    '0907': 'AIRTEL', '0911': 'AIRTEL', '0912': 'AIRTEL',
    '0703': 'MTN', '0704': 'MTN', '0706': 'MTN', '0707': 'MTN',
    '0803': 'MTN', '0806': 'MTN', '0810': 'MTN', '0813': 'MTN',
    '0814': 'MTN', '0816': 'MTN', '0903': 'MTN', '0906': 'MTN',
    '0913': 'MTN', '0916': 'MTN',
    '0705': 'GLO', '0805': 'GLO', '0807': 'GLO', '0811': 'GLO',
    '0815': 'GLO', '0905': 'GLO', '0915': 'GLO',
    '0809': '9MOBILE', '0817': '9MOBILE', '0818': '9MOBILE',
    '0908': '9MOBILE', '0909': '9MOBILE',
  };
  return allocations[prefix];
}

/// Cancel network work and refuse late results even on A->B->A switches.
final gbDataCatalogueProvider =
    FutureProvider.autoDispose.family<List<GbVerifiedBundle>, GbDataOwner>(
  (ref, owner) async {
    bool current() {
      final session = ref.read(sessionProvider);
      return session is SessionSignedIn &&
          session.user.id == owner.accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch ==
              owner.authorizationEpoch;
    }

    if (!current()) throw StateError('account_changed');
    final cancel = CancelToken();
    ref.onDispose(cancel.cancel);
    final result = await ref.watch(apiClientProvider).dio.get<Object?>(
      '/v1/gb/data/bundles',
      queryParameters: const {'units': 'mb'},
      cancelToken: cancel,
      options: Options(headers: const {'Cache-Control': 'no-store'}),
    );
    if (!current()) throw StateError('account_changed');
    final body = result.data;
    if (body is! Map<String, dynamic> || body['bundles'] is! List) {
      throw const FormatException('Invalid approved GB catalogue');
    }
    final ids = <String>{};
    final bundles = <GbVerifiedBundle>[];
    for (final row in body['bundles'] as List) {
      final bundle = GbVerifiedBundle.fromJson(row);
      if (!ids.add(bundle.id)) {
        throw const FormatException('Duplicate GB bundle identity');
      }
      bundles.add(bundle);
    }
    return List.unmodifiable(bundles);
  },
);
