import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/mb_call_flow.dart';
import 'package:masanawa/src/calls/mb_call_intent.dart';
import 'package:masanawa/src/calls/mb_call_transport.dart';

class _Store implements MbCallIntentStore {
  String? contents;
  @override
  Future<String?> read() async => contents;
  @override
  Future<void> write(String? next) async => contents = next;
}

class _Adapter implements HttpClientAdapter {
  _Adapter(this.reply);
  final Future<ResponseBody> Function(RequestOptions) reply;
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<List<int>>? stream,
      Future<void>? cancelFuture) => reply(options);
  @override
  void close({bool force = false}) {}
}

ResponseBody _ok(Object value) => ResponseBody.fromString(jsonEncode(value), 200,
    headers: {Headers.contentTypeHeader: ['application/json']});

void main() {
  test('active inline and fullscreen paths cannot issue retired Credits admission', () async {
    final screen = await File('lib/src/screens/chat/ai_chat_screen.dart').readAsString();
    expect(screen, contains('MbCallFlow _captureMbCallFlow('));
    expect(screen, contains('Future<void> _startInlineLiveVoice('));
    expect(screen, contains('Future<void> _openLiveVoice('));
    expect(RegExp(r'flow\.transport\.grant\(admission\)').allMatches(screen).length, 2);
    expect(screen, isNot(contains('GroupPaidVoiceTransport(')));
    expect(screen, isNot(contains('spendCapCredits')));
    expect(screen, isNot(contains('/agent/twin/voice/')));
  });

  test('review must precede consent, journal precedes MB hold, close uses server receipt',
      () async {
    final expiry = DateTime.now().add(const Duration(minutes:5))
        .toUtc().toIso8601String();
    final events = <String>[];
    final store = _Store();
    var serial = 0;
    final dio = Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter = _Adapter((request) async {
      events.add(request.path);
      expect(request.headers['Authorization'], 'Bearer pinned');
      if (request.path == '/v1/gb/calls/review') {
        expect(store.contents, isNotNull);
        return _ok({'review':{'characterId':'character_456',
          'budgetMb':5,'reviewToken':'signed','expiresAt':expiry}});
      }
      if (request.path == '/v1/gb/calls/admissions') {
        expect(jsonDecode(store.contents!)['submitted'], true);
        serial++;
        return _ok({'admission':{'admissionId':'call_$serial',
          'characterId':'character_456','budgetMb':5,'state':'reserved',
          'expiresAt':expiry,'verifiedConnectedMs':0}});
      }
      if (request.path.endsWith('/finish') ||
          request.path.startsWith('/v1/gb/calls/admissions/original/')) {
        expect(jsonDecode(store.contents!)['operationKey'] as String,
          request.path.startsWith('/v1/gb/calls/admissions/original/')
              ? request.path.split('/').last
              : isNotEmpty);
        return _ok({'admission':{'admissionId':'call_$serial',
          'characterId':'character_456','budgetMb':5,'state':'completed',
          'expiresAt':expiry,'verifiedConnectedMs':2000,'chargedMb':2}});
      }
      throw StateError('Unreviewed route: ${request.path}');
    });
    final flow = MbCallFlow(
      journal:MbCallIntentJournal(store),ownerId:'owner-1',
      transport:MbCallTransport(dio:dio,baseUrl:'https://gateway.example',
        accessToken:'pinned',accountId:'owner-1',currentAccountId:()=> 'owner-1'),
    );
    final review = await flow.review('character_456');
    expect((await flow.journal.forOwner('owner-1'))?.submitted, false);
    final admission = await flow.confirm(review);
    expect(admission.id, 'call_1');
    expect((await flow.journal.forOwner('owner-1'))?.submitted, true);
    final receipt = await flow.finish(admission);
    expect(receipt.chargedMb, 2);
    expect(await flow.journal.forOwner('owner-1'), isNull);
    expect(events.take(3), ['/v1/gb/calls/review','/v1/gb/calls/admissions',
      '/v1/gb/calls/admissions/call_1/finish']);
    expect(events.last, startsWith('/v1/gb/calls/admissions/original/'));
  });

  test('lost confirm response remains locked and next review reads original first',
      () async {
    final expiry = DateTime.now().add(const Duration(minutes:5))
        .toUtc().toIso8601String();
    final events = <String>[];
    final store = _Store();
    var uncertain = true;
    final dio = Dio(BaseOptions(baseUrl:'https://gateway.example'));
    final row = {'admissionId':'admission-1','characterId':'character_456',
      'budgetMb':5,'state':'reserved','expiresAt':expiry,
      'verifiedConnectedMs':0};
    dio.httpClientAdapter = _Adapter((request) async {
      events.add(request.path);
      if (request.path == '/v1/gb/calls/review') {
        return _ok({'review':{'characterId':'character_456',
          'budgetMb':5,'reviewToken':'signed','expiresAt':expiry}});
      }
      if (request.path == '/v1/gb/calls/admissions') {
        if (uncertain) return ResponseBody.fromString('unknown', 503);
        return _ok({'admission':row});
      }
      if (request.path.startsWith('/v1/gb/calls/admissions/original/')) {
        return _ok({'admission':row});
      }
      if (request.path == '/v1/gb/calls/admissions/admission-1/finish') {
        return _ok({'admission':{...row,'state':'completed','chargedMb':0}});
      }
      throw StateError('Unexpected route: ${request.path}');
    });
    final journal = MbCallIntentJournal(store);
    final flow = MbCallFlow(journal:journal,ownerId:'owner-1',
      transport:MbCallTransport(dio:dio,baseUrl:'https://gateway.example',
        accessToken:'pinned',accountId:'owner-1',currentAccountId:()=> 'owner-1'));
    final first = await flow.review('character_456');
    await expectLater(flow.confirm(first), throwsA(isA<ApiException>().having(
      (e) => e.statusCode, 'status', 503)));
    expect((await journal.forOwner('owner-1'))?.submitted, true);
    uncertain = false;
    final second = await flow.review('character_456');
    expect(second.operationKey, isNot(first.operationKey));
    expect(events.where((p) => p == '/v1/gb/calls/admissions').length, 1);
    expect(events.indexWhere((p) => p.endsWith('/finish')),
      lessThan(events.lastIndexOf('/v1/gb/calls/review')));
    await flow.decline(second);
    expect(await journal.forOwner('owner-1'), isNull);
  });

  test('uncertain original read or wrong Masana never releases an unverified hold',
      () async {
    final expiry = DateTime.now().add(const Duration(minutes:5))
        .toUtc().toIso8601String();
    final store = _Store();
    final journal = MbCallIntentJournal(store);
    await journal.prepare('owner-1','character_456','original_key_123');
    await journal.markSubmitted('owner-1','original_key_123');
    var wrong = false;
    final dio = Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.httpClientAdapter = _Adapter((_) async {
      if (!wrong) return ResponseBody.fromString('unavailable', 503);
      return _ok({'admission':{'admissionId':'admission-1',
        'characterId':'different_character','budgetMb':5,'state':'completed',
        'expiresAt':expiry,'verifiedConnectedMs':0,'chargedMb':0}});
    });
    final flow = MbCallFlow(journal:journal,ownerId:'owner-1',
      transport:MbCallTransport(dio:dio,baseUrl:'https://gateway.example',
        accessToken:'pinned',accountId:'owner-1',currentAccountId:()=> 'owner-1'));
    await expectLater(flow.recover(), throwsA(isA<Exception>()));
    expect((await journal.forOwner('owner-1'))?.submitted,true);
    wrong = true;
    await expectLater(flow.recover(), throwsStateError);
    expect((await journal.forOwner('owner-1'))?.operationKey,'original_key_123');
  });
  test('a different terminal call to same Masana cannot clear pending original',
      () async {
    final expiry = DateTime.now().add(const Duration(minutes: 5))
        .toUtc().toIso8601String();
    final store = _Store();
    final journal = MbCallIntentJournal(store);
    await journal.prepare('owner-1', 'character_456', 'original_key_pending');
    await journal.markSubmitted('owner-1', 'original_key_pending');
    final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
    final events = <String>[];
    Map<String, Object> admission(String id) => {
      'admissionId': id, 'characterId': 'character_456',
      'budgetMb': 5, 'state': 'completed', 'expiresAt': expiry,
      'verifiedConnectedMs': 0, 'chargedMb': 0,
    };
    dio.httpClientAdapter = _Adapter((request) async {
      events.add(request.path);
      if (request.path == '/v1/gb/calls/admissions/different/finish') {
        return _ok({'admission': admission('different')});
      }
      if (request.path ==
          '/v1/gb/calls/admissions/original/original_key_pending') {
        return _ok({'admission': admission('pending')});
      }
      throw StateError('Unexpected route: ${request.path}');
    });
    final flow = MbCallFlow(
      journal: journal, ownerId: 'owner-1',
      transport: MbCallTransport(dio: dio, baseUrl: 'https://gateway.example',
        accessToken: 'pinned', accountId: 'owner-1',
        currentAccountId: () => 'owner-1'),
    );
    final different = MbCallAdmission(id: 'different',
      characterId: 'character_456', budgetMb: 5, state: 'reserved',
      expiresAt: DateTime.parse(expiry), verifiedConnectedMs: 0);
    await expectLater(flow.finish(different), throwsStateError);
    expect((await journal.forOwner('owner-1'))?.operationKey,
      'original_key_pending');
    expect(events, [
      '/v1/gb/calls/admissions/different/finish',
      '/v1/gb/calls/admissions/original/original_key_pending',
    ]);
  });

  test('terminal finish keeps recovery key when original readback is unavailable',
      () async {
    final expiry = DateTime.now().add(const Duration(minutes: 5))
        .toUtc().toIso8601String();
    final store = _Store();
    final journal = MbCallIntentJournal(store);
    await journal.prepare('owner-1', 'character_456', 'original_key_pending');
    await journal.markSubmitted('owner-1', 'original_key_pending');
    var failedRead = true;
    final dio = Dio(BaseOptions(baseUrl: 'https://gateway.example'));
    final row = {'admissionId': 'pending', 'characterId': 'character_456',
      'budgetMb': 5, 'state': 'completed', 'expiresAt': expiry,
      'verifiedConnectedMs': 1000, 'chargedMb': 1};
    dio.httpClientAdapter = _Adapter((request) async {
      if (request.path == '/v1/gb/calls/admissions/pending/finish') {
        return _ok({'admission': row});
      }
      if (request.path ==
          '/v1/gb/calls/admissions/original/original_key_pending') {
        if (failedRead) return ResponseBody.fromString('unavailable', 503);
        return _ok({'admission': row});
      }
      throw StateError('Unexpected route: ${request.path}');
    });
    final flow = MbCallFlow(
      journal: journal, ownerId: 'owner-1',
      transport: MbCallTransport(dio: dio, baseUrl: 'https://gateway.example',
        accessToken: 'pinned', accountId: 'owner-1',
        currentAccountId: () => 'owner-1'),
    );
    final original = MbCallAdmission(id: 'pending',
      characterId: 'character_456', budgetMb: 5, state: 'reserved',
      expiresAt: DateTime.parse(expiry), verifiedConnectedMs: 0);
    await expectLater(flow.finish(original), throwsA(isA<ApiException>()));
    expect((await journal.forOwner('owner-1'))?.submitted, true);
    failedRead = false;
    final receipt = await flow.finish(original);
    expect(receipt.chargedMb, 1);
    expect(await journal.forOwner('owner-1'), isNull);
  });

}
