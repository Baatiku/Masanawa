import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_send_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

const _fan = AuthUser(
  id: 'send-fan', name: 'Sender', locale: 'en', status: 'ACTIVE',
  role: 'USER', isNewUser: false, createdAt: '2026-10-25T00:00:00Z',
);

class _SignedIn extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_fan, AuthTokens(
    accessToken: 'scoped-fixture', refreshToken: 'refresh-fixture',
    accessExpiresIn: 900, user: _fan,
  ));
}

Map<String, dynamic> _quote(String expiry) => {
  'recipient': {
    'id': 'fan-b', 'username': 'bello.user', 'displayName': 'Bello',
  },
  'amountMb': 250, 'feeMb': 0, 'requiresConfirmation': true,
  'operationId': 'send_12345678901234567890123456789012',
  'reviewToken': 'fixture-reviewed-token-with-a-length-over-forty-characters',
  'expiresAt': expiry,
};

class _MemorySendStore implements GbSendPendingStore {
  GbSendQuote? pending;
  int writes=0,clears=0;
  bool failWrite=false,failRead=false;
  @override
  Future<GbSendQuote?> read(String accountId) async {
    if(failRead)throw StateError('secure read unavailable');
    return pending;
  }
  @override
  Future<void> write(String accountId,GbSendQuote quote) async {
    if(failWrite)throw StateError('secure write unavailable');
    pending=quote;writes++;
  }
  @override
  Future<void> clear(String accountId) async {
    pending=null;clears++;
  }
}

void main() {
  testWidgets('unknown Send confirm checks original receipt without another POST', (tester) async {
    tester.view.physicalSize=const Size(390,1000);
    tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final posts=<String>[];
    final reads=<String>[];
    final store=_MemorySendStore();
    final dio=Dio(BaseOptions(baseUrl:kApiBaseUrl));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
      if(options.method=='GET' && options.path.startsWith('/v1/gb/wallet/recipients/')) {
        handler.resolve(Response(requestOptions:options,statusCode:200,data:{
          'recipient':{'id':'fan-b','username':'bello.user','displayName':'Bello'}}));
        return;
      }
      if(options.method=='POST' && options.path=='/v1/gb/wallet/send/quote') {
        handler.resolve(Response(requestOptions:options,statusCode:200,
          data:_quote(DateTime.now().toUtc().add(const Duration(minutes:4)).toIso8601String())));
        return;
      }
      if(options.method=='POST' && options.path=='/v1/gb/wallet/send/confirm') {
        posts.add(options.path);
        handler.reject(DioException(requestOptions:options,
          response:Response(requestOptions:options,statusCode:503),
          type:DioExceptionType.badResponse));
        return;
      }
      if(options.method=='GET' && options.path.startsWith('/v1/gb/wallet/send/receipt/')) {
        reads.add(options.path);
        handler.resolve(Response(requestOptions:options,statusCode:200,data:{
          'receipt':{'operationId':'send_12345678901234567890123456789012',
            'amountMb':250,'state':'completed'}}));
        return;
      }
      handler.reject(DioException(requestOptions:options,
        response:Response(requestOptions:options,statusCode:503),
        type:DioExceptionType.badResponse));
    }));
    await tester.pumpWidget(ProviderScope(overrides:[
      gbSendPendingStoreProvider.overrideWithValue(store),
      sessionProvider.overrideWith(_SignedIn.new),
      apiClientProvider.overrideWithValue(ApiClient(dio:dio)),
      gbWalletSummaryProvider.overrideWith((ref,owner) async=>
        const GbWalletBalance(totalMb:1000,availableMb:1000,
          purchasedAvailableMb:1000,welcomeAvailableMb:0,
          reservedMb:0,frozen:false)),
    ],child:const MaterialApp(home:GbSendScreen())));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first,'@bello.user');
    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')),'250');
    // The shared exact-handle readback is debounced. Let its identity check
    // finish before entering the signed transfer review flow.
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('Review recipient and amount'),
      find.byType(ListView),const Offset(0,-150));
    await tester.tap(find.text('Review recipient and amount'));
    await tester.pumpAndSettle();
    expect(find.text('Review MB send'),findsOneWidget);
    await tester.dragUntilVisible(find.widgetWithText(FilledButton,'Send MB'),
      find.byType(ListView).last,const Offset(0,-150));
    final confirm = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton,'Send MB'));
    expect(confirm.onPressed,isNotNull);
    // Invoke the bound handler after asserting the rendered button is enabled;
    // text hit-testing under the scrolled recipient sheet is platform-sensitive.
    confirm.onPressed!();
    await tester.pumpAndSettle();
    expect(posts,hasLength(1));
    expect(store.writes,1);
    expect(find.text('Retry same confirmation'),findsOneWidget);
    await tester.dragUntilVisible(find.text('Check original transfer'),
      find.byType(ListView).last,const Offset(0,-150));
    await tester.tap(find.text('Check original transfer'));
    await tester.pumpAndSettle();
    expect(reads,hasLength(1));
    expect(posts,hasLength(1));
    expect(store.pending,isNull);
    expect(store.clears,1);
    expect(find.text('MB transfer completed'),findsWidgets);
    expect(find.text('Receipt: send_12345678901234567890123456789012'),findsWidgets);
    expect(tester.takeException(),isNull);
  });
  test('review enforces server identity, purchased MB and short expiry', () {
    final expiry = DateTime.now().toUtc().add(
      const Duration(minutes: 4)).toIso8601String();
    final review = GbSendQuote.fromJson(_quote(expiry), 250);
    expect(review.recipientHandle, 'bello.user');
    expect(review.amountMb, 250);
    for (final broken in [
      {..._quote(expiry), 'feeMb': 2},
      {..._quote(expiry), 'amountMb': 500},
      {..._quote(expiry), 'requiresConfirmation': false},
      {..._quote(expiry), 'operationId': 'broken'},
      {..._quote(expiry), 'expiresAt': '2020-01-01T00:00:00Z'},
      {..._quote(expiry), 'recipient': {
        'id': '', 'username': 'bello.user', 'displayName': 'Bello',
      }},
    ]) {
      expect(() => GbSendQuote.fromJson(broken, 250),
          throwsFormatException);
    }
    expect(() => GbSendQuote.fromJson(
      {..._quote(expiry),'amountMb':-1},-1,requireFresh:false),
      throwsFormatException);
    final expired=_quote('2026-10-20T00:00:00Z');
    expect(() => GbSendQuote.fromJson(expired,250),throwsFormatException);
    expect(GbSendQuote.fromJson(expired,250,requireFresh:false).operationId,
      review.operationId,reason:'Expired saved quotes still permit receipt GET');
  });

  testWidgets('a restored original Send locks new review and checks only its receipt',
      (tester) async {
    tester.view.physicalSize=const Size(390,1000);
    tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final store=_MemorySendStore()..pending=GbSendQuote.fromJson(
      _quote('2026-10-20T00:00:00Z'),250,requireFresh:false);
    final requests=<String>[];
    final dio=Dio(BaseOptions(baseUrl:kApiBaseUrl));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
      requests.add('${options.method} ${options.path}');
      if(options.method=='GET' && options.path.startsWith('/v1/gb/wallet/send/receipt/')) {
        handler.resolve(Response(requestOptions:options,statusCode:200,data:{
          'receipt':{'operationId':store.pending!.operationId,
            'amountMb':250,'state':'completed'}}));
        return;
      }
      handler.reject(DioException(requestOptions:options,
        response:Response(requestOptions:options,statusCode:503),
        type:DioExceptionType.badResponse));
    }));
    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_SignedIn.new),
      gbSendPendingStoreProvider.overrideWithValue(store),
      apiClientProvider.overrideWithValue(ApiClient(dio:dio)),
      gbWalletSummaryProvider.overrideWith((ref,owner) async=>
        const GbWalletBalance(totalMb:1000,availableMb:1000,
          purchasedAvailableMb:1000,welcomeAvailableMb:0,
          reservedMb:0,frozen:false)),
    ],child:const MaterialApp(home:GbSendScreen())));
    await tester.pumpAndSettle();
    expect(find.textContaining('An original Send may be pending'),findsOneWidget);
    expect(find.text('Review recipient and amount'),findsNothing);
    await tester.ensureVisible(find.text('Open send review'));
    await tester.tap(find.text('Open send review'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(FilledButton,'Retry same confirmation'),findsOneWidget);
    expect(tester.widget<FilledButton>(
      find.widgetWithText(FilledButton,'Retry same confirmation')).onPressed,isNull,
      reason:'Expired original tokens cannot be replayed');
    await tester.dragUntilVisible(find.text('Check original transfer'),
      find.byType(ListView).last,const Offset(0,-150));
    await tester.tap(find.text('Check original transfer'));
    await tester.pumpAndSettle();
    expect(requests,hasLength(1));
    expect(requests.single,startsWith('GET /v1/gb/wallet/send/receipt/'));
    expect(store.pending,isNull);
    expect(store.clears,1);
    expect(find.text('MB transfer completed'),findsWidgets);
    expect(tester.takeException(),isNull);
  });

  testWidgets('secure storage failure prevents any Send confirm POST',
      (tester) async {
    tester.view.physicalSize=const Size(390,1000);
    tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final store=_MemorySendStore()..failWrite=true;
    final posts=<String>[];
    final dio=Dio(BaseOptions(baseUrl:kApiBaseUrl));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
      if(options.method=='POST')posts.add(options.path);
      if(options.path=='/v1/gb/wallet/send/quote') {
        handler.resolve(Response(requestOptions:options,statusCode:200,
          data:_quote(DateTime.now().toUtc().add(const Duration(minutes:4)).toIso8601String())));
        return;
      }
      if(options.path.startsWith('/v1/gb/wallet/recipients/')) {
        handler.resolve(Response(requestOptions:options,statusCode:200,data:{
          'recipient':{'id':'fan-b','username':'bello.user','displayName':'Bello'}}));
        return;
      }
      handler.reject(DioException(requestOptions:options,
        response:Response(requestOptions:options,statusCode:503),
        type:DioExceptionType.badResponse));
    }));
    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_SignedIn.new),
      gbSendPendingStoreProvider.overrideWithValue(store),
      apiClientProvider.overrideWithValue(ApiClient(dio:dio)),
      gbWalletSummaryProvider.overrideWith((ref,owner) async=>
        const GbWalletBalance(totalMb:1000,availableMb:1000,
          purchasedAvailableMb:1000,welcomeAvailableMb:0,
          reservedMb:0,frozen:false)),
    ],child:const MaterialApp(home:GbSendScreen())));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first,'@bello.user');
    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')),'250');
    await tester.pump(const Duration(milliseconds:400));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.text('Review recipient and amount'),
      find.byType(ListView),const Offset(0,-150));
    await tester.tap(find.text('Review recipient and amount'));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(find.widgetWithText(FilledButton,'Send MB'),
      find.byType(ListView).last,const Offset(0,-150));
    tester.widget<FilledButton>(find.widgetWithText(FilledButton,'Send MB'))
      .onPressed!();
    await tester.pumpAndSettle();
    expect(posts,['/v1/gb/wallet/send/quote']);
    expect(find.textContaining('Could not save secure transfer recovery'),
      findsWidgets);
    expect(store.pending,isNull);
    expect(tester.takeException(),isNull);
  });

  test('receipt must match exact original operation and amount', () {
    final expiry = DateTime.now().toUtc().add(
      const Duration(minutes: 4)).toIso8601String();
    final quote = GbSendQuote.fromJson(_quote(expiry), 250);
    expect(GbSendReceipt.fromJson({
      'receipt': {
        'operationId': quote.operationId,
        'amountMb': 250,
        'state': 'completed',
      },
    }, quote).amountMb, 250);
    expect(() => GbSendReceipt.fromJson({
      'receipt': {
        'operationId': 'send_another-operation',
        'amountMb': 250,
        'state': 'completed',
      },
    }, quote), throwsFormatException);
  });

  testWidgets('signed-out Send never exposes a transfer confirmation',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new),
        gbSendPendingStoreProvider.overrideWithValue(_MemorySendStore())],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    expect(find.text('Sign in before transferring MB.'), findsOneWidget);
    expect(find.text('Confirm Send'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Send reuses actual balance and Max excludes welcome/reserved MB',
      (tester) async {
    tester.view.physicalSize = const Size(390, 950);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      overrides: [
        gbSendPendingStoreProvider.overrideWithValue(_MemorySendStore()),
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith((ref, owner) async =>
          const GbWalletBalance(
            totalMb: 1500, availableMb: 1350,
            purchasedAvailableMb: 850, welcomeAvailableMb: 500,
            reservedMb: 150, frozen: false,
          )),
      ],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('gb-wallet-balance-card')),
      findsOneWidget);
    expect(find.text('1.35 GB'), findsOneWidget);
    expect(find.text('Sendable: 850 MB purchased'), findsOneWidget);
    expect(find.textContaining('Send only purchased MB'), findsNothing);
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('send-quick-1000'))).onSelected, isNull);

    await tester.tap(find.byKey(const ValueKey('send-quick-500')));
    await tester.pump();
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('send-custom-mb'))).controller!.text, '500');
    await tester.scrollUntilVisible(find.byType(TextField).first, 150, scrollable: find.byType(Scrollable).first);
    await tester.enterText(find.byType(TextField).first, '@recipient');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNotNull);

    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')), '851');
    await tester.pump();
    expect(find.text('Amount exceeds sendable purchased MB'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNull);
    await tester.ensureVisible(find.byKey(const ValueKey('send-quick-max')));
    await tester.tap(find.byKey(const ValueKey('send-quick-max')));
    await tester.pump();
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('send-custom-mb'))).controller!.text, '850');
    expect(tester.takeException(), isNull);
  });

  testWidgets('no summary or frozen wallet cannot enable Send review',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        gbSendPendingStoreProvider.overrideWithValue(_MemorySendStore()),
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith((ref, owner) async =>
          const GbWalletBalance(
            totalMb: 1000, availableMb: 1000,
            purchasedAvailableMb: 1000, welcomeAvailableMb: 0,
            reservedMb: 0, frozen: true,
          )),
      ],
      child: const MaterialApp(home: GbSendScreen()),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Wallet restricted'), findsOneWidget);
    expect(find.text('Sendable: 0 MB purchased'), findsOneWidget);
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('send-quick-100'))).onSelected, isNull);
    await tester.scrollUntilVisible(find.byType(TextField).first, 150, scrollable: find.byType(Scrollable).first);
    await tester.enterText(find.byType(TextField).first, '@recipient');
    await tester.enterText(find.byKey(const ValueKey('send-custom-mb')), '1');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Review recipient and amount')).onPressed, isNull);
    expect(tester.takeException(), isNull);
  });
}
