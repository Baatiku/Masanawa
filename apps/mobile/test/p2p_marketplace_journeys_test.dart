import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
    final body = path.contains('/my-offers/page')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000', 'state': 'active',
        }]}
      : path.contains('/offers/page')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000',
          'bank_name': 'A genuine verified bank account name',
        }]}
      : path.contains('/offers/by-request/')
      ? <String,dynamic>{
          'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'state':'active',
        }
      : path.contains('/orders/by-request/')
      ? <String,dynamic>{
          'orderId':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',
          'state':'awaiting_payment',
        }
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

Widget _app(_P2pAdapter adapter, {double textScale = 1}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return ProviderScope(
    overrides: [sessionProvider.overrideWith(_Session.new)],
    child: MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(textScale)),
        child: child!,
      ),
      home: MsnwP2pScreen(
      dio: dio, baseUrl: 'https://test',
      expectedUserId: 'buyer', currentUserId: () => 'buyer',
      accessToken: () => 'token')),
  );
}

void _mockSecureRecovery() {
  FlutterSecureStorage.setMockInitialValues({});
}

void main() {
  testWidgets('own offer opens management, never closes on row tap', (t) async {
    _mockSecureRecovery();
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
    _mockSecureRecovery();
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    await t.enterText(find.byType(TextField).last, '1');
    await t.tap(find.text('Review price and fees'));
    await t.pumpAndSettle();
    expect(find.text('Review P2P order'), findsOneWidget);
    expect(find.text('₦1500.00'), findsOneWidget);
    expect(find.text('0.005 MSNW'), findsOneWidget);
    expect(adapter.calls.any((o) => o.path.contains('/quote')), isTrue);
    expect(adapter.calls.where((o) => o.method == 'POST'), isEmpty);
    expect(t.takeException(), isNull);
  });
  testWidgets('small Android screen with 200 percent text keeps P2P usable', (t) async {
    _mockSecureRecovery();
    t.view.physicalSize = const Size(320, 700);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter, textScale: 2));
    await t.pumpAndSettle();
    expect(t.takeException(), isNull);
    await t.tap(find.text('Sell'));
    await t.pumpAndSettle();
    expect(find.text('Create offer'), findsOneWidget);
    expect(t.takeException(), isNull);
    expect(adapter.calls.every((r) => r.method == 'GET'), isTrue);
  });

  testWidgets('restored offer recovers original request without a second POST', (t) async {
    FlutterSecureStorage.setMockInitialValues({
      'masanawa.p2p.offer.buyer': jsonEncode({
        'requestKey': 'p2p-recover-unique-123',
        'payload': {
          'paymentMethodId':'cccccccc-cccc-4ccc-8ccc-cccccccccccc',
          'rateKoboPerMsnw':'150000',
          'minMicro':'1000000', 'maxMicro':'10000000',
          'inventoryMicro':'10000000',
        },
      }),
    });
    final adapter=_P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    expect(find.text('Check unfinished sell offer'),findsOneWidget);
    await t.tap(find.text('Check unfinished sell offer'));
    await t.pumpAndSettle();
    expect(adapter.calls.any((o)=>o.path.contains(
      '/offers/by-request/p2p-recover-unique-123')),isTrue);
    expect(adapter.calls.where((o)=>o.method=='POST'),isEmpty);
    expect(find.text('Check unfinished sell offer'),findsNothing);
    expect(t.takeException(),isNull);
  });

  testWidgets('an unfinished buy request blocks new buyer order until recovered', (t) async {
    FlutterSecureStorage.setMockInitialValues({
      'masanawa.p2p.order.buyer': jsonEncode({
        'requestKey':'p2p-prior-order-123456',
        'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
        'amountMicro':'1000000',
        'expectedRateKoboPerMsnw':'150000',
        'expectedFeeBps':50,
      }),
    });
    final adapter=_P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    expect(find.text('Check unfinished order'),findsOneWidget);
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    expect(find.text('Check unfinished order'),findsOneWidget);
    expect(adapter.calls.where((o)=>o.method=='POST'),isEmpty);
  });

}
