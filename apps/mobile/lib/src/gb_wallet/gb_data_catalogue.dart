import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';

typedef GbDataOwner = ({String accountId, int authorizationEpoch});

const gbDataNetworks = ['MTN', 'AIRTEL', 'GLO', '9MOBILE'];

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
  });

  final String id, version, network, providerAmount;
  final int allowanceGb, costMb, validityDays;
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
    final days = value['validityDays'];
    final providerAmount = value['providerAmount'];
    final expiresText = value['expiresAt'];
    final expires = expiresText is String ? DateTime.tryParse(expiresText) : null;
    if (id is! String || id.length < 3 || id.length > 260 ||
        version is! String || version.isEmpty || version.length > 128 ||
        network is! String || !gbDataNetworks.contains(network) ||
        gb is! int || gb < 1 || gb > 1000 ||
        mb is! int || mb != gb * 1000 ||
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
    if (phone != normalized ||
        bundle.id != selected.id || bundle.version != selected.version ||
        bundle.network != selected.network ||
        bundle.costMb != selected.costMb ||
        bundle.allowanceGb != selected.allowanceGb ||
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
