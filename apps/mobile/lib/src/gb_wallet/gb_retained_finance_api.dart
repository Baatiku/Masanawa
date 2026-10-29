import 'dart:convert';
import 'package:dio/dio.dart';

bool _financeUuid(String value) => RegExp(
  r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-8][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$',
).hasMatch(value);
String financeReference(Object? raw, {int max = 1500}) {
  if (raw is! String ||
      raw.isEmpty ||
      raw.length > max ||
      RegExp(r'[\x00-\x1f\x7f]').hasMatch(raw)) {
    throw const FormatException('Unverified financial reference');
  }
  return raw;
}

int financeCount(Object? raw) {
  if (raw is! int || raw < 0 || raw > 9007199254740991) {
    throw const FormatException('Unverified historical amount');
  }
  return raw;
}

DateTime financeDate(Object? raw) {
  final date = raw is String ? DateTime.tryParse(raw) : null;
  if (date == null || !date.isUtc) {
    throw const FormatException('Unverified historical timestamp');
  }
  return date;
}

String financeHalfMb(int? half) => half == null
    ? 'Amount unavailable'
    : '${half ~/ 2}${half.isOdd ? '.5' : ''} MB';

class FinancePage<T> {
  const FinancePage(this.items, this.nextCursor);
  final List<T> items;
  final String? nextCursor;
  factory FinancePage.read(
    Map<String, dynamic> raw,
    T Function(Object?) parse,
  ) {
    final items = raw['items'], cursor = raw['nextCursor'];
    if (items is! List ||
        items.length > 30 ||
        cursor != null &&
            (cursor is! String || cursor.isEmpty || cursor.length > 3000)) {
      throw const FormatException('Unverified history page');
    }
    return FinancePage(
      List<T>.unmodifiable(items.map(parse)),
      cursor as String?,
    );
  }
}

class LegacyFinanceGroup {
  const LegacyFinanceGroup({
    required this.id,
    required this.campaignId,
    required this.postId,
    required this.kind,
    required this.day,
    required this.eventCount,
    required this.halfMb,
  });
  final String id, campaignId, postId, kind, day;
  final int eventCount;
  final int? halfMb;
  factory LegacyFinanceGroup.read(Object? value) {
    if (value is! Map) {
      throw const FormatException('Unverified historical group');
    }
    final kind = value['kind'], day = value['day'];
    if (!['reserve', 'spend', 'release', 'pending'].contains(kind) ||
        day is! String ||
        !RegExp(r'^\d{4}-\d\d-\d\d$').hasMatch(day) ||
        DateTime.tryParse('${day}T00:00:00Z') == null) {
      throw const FormatException('Unverified historical group');
    }
    return LegacyFinanceGroup(
      id: financeReference(value['id']),
      campaignId: financeReference(value['campaignId']),
      postId: financeReference(value['postId']),
      kind: kind as String,
      day: day,
      eventCount: financeCount(value['eventCount']),
      halfMb: value['halfMb'] == null ? null : financeCount(value['halfMb']),
    );
  }
  String get title => switch (kind) {
    'reserve' => 'MB reserved',
    'spend' => 'MB spent',
    'release' => 'Unused MB released',
    _ => 'Historical allocation · pending',
  };
}

class LegacyFinanceEvent {
  const LegacyFinanceEvent(this.key, this.reference, this.at, this.halfMb);
  final String key, reference;
  final DateTime at;
  final int? halfMb;
  factory LegacyFinanceEvent.read(Object? value) {
    if (value is! Map) {
      throw const FormatException('Unverified history receipt');
    }
    return LegacyFinanceEvent(
      financeReference(value['key'], max: 200),
      financeReference(value['reference'], max: 200),
      financeDate(value['at']),
      value['halfMb'] == null ? null : financeCount(value['halfMb']),
    );
  }
}

class WalletInquiry {
  const WalletInquiry({
    required this.id,
    required this.targetKind,
    required this.reference,
    required this.category,
    required this.state,
    required this.revision,
    required this.createdAt,
    required this.updatedAt,
  });
  final String id, targetKind, reference, category, state;
  final int revision;
  final DateTime createdAt, updatedAt;
  factory WalletInquiry.read(Object? value) {
    if (value is! Map ||
        !['activity', 'hold', 'legacy_group'].contains(value['targetKind']) ||
        !['amount', 'status', 'missing', 'other'].contains(value['category']) ||
        ![
          'open',
          'acknowledged',
          'awaiting_provider',
          'closed',
        ].contains(value['state'])) {
      throw const FormatException('Unverified wallet inquiry');
    }
    final id = financeReference(value['id']);
    if (!_financeUuid(id)) {
      throw const FormatException('Invalid inquiry identity');
    }
    final revision = financeCount(value['revision']);
    if (revision < 1) throw const FormatException('Invalid inquiry revision');
    return WalletInquiry(
      id: id,
      targetKind: value['targetKind'] as String,
      reference: financeReference(value['reference']),
      category: value['category'] as String,
      state: value['state'] as String,
      revision: revision,
      createdAt: financeDate(value['createdAt']),
      updatedAt: financeDate(value['updatedAt']),
    );
  }
  String get stateLabel => switch (state) {
    'open' => 'Submitted',
    'acknowledged' => 'Under review',
    'awaiting_provider' => 'Awaiting provider',
    _ => 'Closed',
  };
}

class GbRetainedFinanceApi {
  GbRetainedFinanceApi(this.dio, this.current);
  final Dio dio;
  final bool Function() current;
  Options options() {
    if (!current()) throw StateError('Account changed');
    return Options(
      followRedirects: false,
      sendTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 25),
      extra: {'masanawaAccountGuard': current},
    );
  }

  Map<String, dynamic> result(Response<Map<String, dynamic>> response) {
    if (!current()) throw StateError('Account changed');
    if (response.data == null) {
      throw const FormatException('Financial history unavailable');
    }
    return response.data!;
  }

  Future<FinancePage<LegacyFinanceGroup>> history(
    String kind, {
    String? cursor,
    String? campaignId,
  }) async => FinancePage.read(
    result(
      await dio.get<Map<String, dynamic>>(
        '/v1/gb/wallet/legacy-history',
        queryParameters: {
          'kind': kind,
          'cursor': ?cursor,
          'campaignId': ?campaignId,
        },
        options: options(),
      ),
    ),
    LegacyFinanceGroup.read,
  );
  Future<FinancePage<LegacyFinanceEvent>> group(
    LegacyFinanceGroup group, {
    String? cursor,
  }) async {
    final data = result(
      await dio.get<Map<String, dynamic>>(
        '/v1/gb/wallet/legacy-history/${Uri.encodeComponent(group.id)}',
        queryParameters: {'cursor': ?cursor},
        options: options(),
      ),
    );
    final proof = data['group'];
    if (proof is! Map ||
        proof['kind'] != group.kind ||
        proof['campaignId'] != group.campaignId ||
        proof['day'] != group.day ||
        proof['eventCount'] != group.eventCount) {
      throw const FormatException('Mismatched history receipt');
    }
    return FinancePage.read(data, LegacyFinanceEvent.read);
  }

  String _targetKey(String kind, String reference) {
    if (kind != 'legacy_group') return reference;
    final raw = jsonDecode(
      utf8.decode(base64Url.decode(base64Url.normalize(reference))),
    );
    if (raw is! List || raw.length != 6 || raw[0] != 1) {
      throw const FormatException('Invalid historical target');
    }
    return jsonEncode([raw[1], raw[2], raw[3], raw[5]]);
  }

  Future<WalletInquiry> submit(
    String target,
    String reference,
    String category,
  ) async {
    final value = WalletInquiry.read(
      result(
        await dio.post<Map<String, dynamic>>(
          '/v1/gb/wallet/inquiries',
          data: {
            'targetKind': target,
            'reference': reference,
            'category': category,
          },
          options: options(),
        ),
      )['case'],
    );
    if (value.targetKind != target ||
        value.category != category ||
        _targetKey(target, value.reference) != _targetKey(target, reference)) {
      throw const FormatException('Mismatched inquiry receipt');
    }
    return value;
  }

  Future<FinancePage<WalletInquiry>> inquiries({
    String? cursor,
    bool admin = false,
    String state = 'open',
  }) async => FinancePage.read(
    result(
      await dio.get<Map<String, dynamic>>(
        admin ? '/v1/admin/gb/wallet/inquiries' : '/v1/gb/wallet/inquiries',
        queryParameters: {'cursor': ?cursor, if (admin) 'state': state},
        options: options(),
      ),
    ),
    WalletInquiry.read,
  );
  Future<WalletInquiry> inquiry(String id) async {
    final value = WalletInquiry.read(
      result(
        await dio.get<Map<String, dynamic>>(
          '/v1/gb/wallet/inquiries/${Uri.encodeComponent(id)}',
          options: options(),
        ),
      )['case'],
    );
    if (value.id != id) throw const FormatException('Mismatched inquiry');
    return value;
  }

  Future<Map<String, dynamic>> reviewSource(String id, {String? cursor}) async {
    final data = result(
      await dio.get<Map<String, dynamic>>(
        '/v1/admin/gb/wallet/inquiries/${Uri.encodeComponent(id)}/source',
        queryParameters: {'cursor': ?cursor},
        options: options(),
      ),
    );
    final inquiry = WalletInquiry.read(data['case']), source = data['source'];
    if (inquiry.id != id ||
        source is! Map ||
        source['kind'] != inquiry.targetKind ||
        source['reference'] != inquiry.reference ||
        source['fields'] is! List ||
        (source['fields'] as List).length > 12) {
      throw const FormatException('Unverified original receipt');
    }
    for (final field in source['fields'] as List) {
      if (field is! Map) throw const FormatException('Invalid receipt field');
      financeReference(field['label'], max: 100);
      financeReference(field['value'], max: 200);
    }
    FinancePage<LegacyFinanceEvent>.read(
      Map<String, dynamic>.from(source),
      LegacyFinanceEvent.read,
    );
    return Map<String, dynamic>.from(source);
  }

  Future<WalletInquiry> review(WalletInquiry row, String state) async {
    final value = WalletInquiry.read(
      result(
        await dio.put<Map<String, dynamic>>(
          '/v1/admin/gb/wallet/inquiries/${Uri.encodeComponent(row.id)}',
          data: {'state': state, 'expectedRevision': row.revision},
          options: options(),
        ),
      )['case'],
    );
    if (value.id != row.id ||
        value.state != state ||
        value.revision != row.revision + 1) {
      throw const FormatException('Unverified inquiry update');
    }
    return value;
  }

  Future<bool> canReview() async =>
      result(
        await dio.get<Map<String, dynamic>>(
          '/v1/gb/wallet/review-capabilities',
          options: options(),
        ),
      )['canReview'] ==
      true;
}
