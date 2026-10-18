import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(id: 'buyer', name: 'Buyer', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-18');
    return SessionSignedIn(user, AuthTokens(
      accessToken: 'token', refreshToken: 'refresh',
      accessExpiresIn: 3600, user: user));
  }
}

class _P2pAdapter implements HttpClientAdapter {
  final calls = <RequestOptions>[];
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? stream,
      Future<void>? cancelFuture) async {
    calls.add(options);
    final path = options.path;
    final body = path.contains('/my-offers')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000', 'state': 'active',
        }]}
      : path.endsWith('/offers')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000',
          'bank_name': 'A genuine verified bank account name',
        }]}
      : path.contains('/quote')
      ? <String, dynamic>{
          'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'amountMicro':'1000000', 'fiatKobo':'150000',
          'feeMicro':'5000', 'rateKoboPerMsnw':'150000',
          'feeBps':50, 'bankName':'Verified Bank',
          'paymentWindowSeconds':1800,
        }
      : <String, dynamic>{'items': []};
    return ResponseBody.fromString(jsonEncode(body), 200,
      headers: {Headers.contentTypeHeader: ['application/json']});
  }
  @override
  void close({bool force = false}) {}
}

Widget _app(_P2pAdapter adapter) {
  final dio = Dio()..httpClientAdapter = adapter;
  return ProviderScope(
    overrides: [sessionProvider.overrideWith(_Session.new)],
    child: MaterialApp(home: MsnwP2pScreen(
      dio: dio, baseUrl: 'https://test',
      expectedUserId: 'buyer', currentUserId: () => 'buyer',
      accessToken: () => 'token')),
  );
}

void main() {
  testWidgets('own offer opens management, never closes on row tap', (t) async {
    t.view.physicalSize = const Size(320, 700);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    await t.tap(find.text('Sell'));
    await t.pumpAndSettle();
    expect(find.textContaining('₦1500.00 / MSNW'), findsWidgets);
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    expect(find.text('Offer details'), findsOneWidget);
    expect(find.text('Close offer'), findsOneWidget);
    expect(adapter.calls.where((o) => o.method == 'POST'), isEmpty);
    expect(t.takeException(), isNull);
  });

  testWidgets('Buy review displays actual quote before posting', (t) async {
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    await t.enterText(find.byType(TextField).last, '1');
    await t.tap(find.text('Continue'));
    await t.pumpAndSettle();
    expect(find.text('Review P2P order'), findsOneWidget);
    expect(find.text('₦1500.00'), findsOneWidget);
    expect(find.text('0.005 MSNW'), findsOneWidget);
    expect(adapter.calls.any((o) => o.path.contains('/quote')), isTrue);
    expect(adapter.calls.where((o) => o.method == 'POST'), isEmpty);
    expect(t.takeException(), isNull);
  });
}
