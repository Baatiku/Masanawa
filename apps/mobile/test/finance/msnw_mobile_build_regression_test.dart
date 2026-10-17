import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_verified_funding_activity.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

class _Adapter implements HttpClientAdapter {
  _Adapter(this.items, {this.fail = false});
  final List<Map<String, dynamic>> items;
  final bool fail;
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? requestStream, Future<void>? cancelFuture) async {
    return ResponseBody.fromString(jsonEncode(fail ? {'error':'unavailable'} : {'items':items}),
      fail ? 503 : 200, headers:{Headers.contentTypeHeader:[Headers.jsonContentType]});
  }
  @override
  void close({bool force=false}) {}
}
void main() {
  for (final micro in ['2500000', 'invalid']) {
    testWidgets('funding validates issued amount $micro', (tester) async {
      final dio=Dio()..httpClientAdapter=_Adapter([{
        'reference':'verified-1','amountKobo':'15025',
        'paidAt':'2026-10-17T00:00:00Z','state':'fiat_verified_backing_pending',
        'obligationState':'msnw_issued','issuedMicro':micro,
      }]);
      await tester.pumpWidget(MaterialApp(home:Scaffold(body:
        MsnwVerifiedFundingActivity(dio:dio,baseUrl:'https://example.test',
          sessionIdentity:'owner',currentUserId:()=>'owner',accessToken:()=>'token'))));
      await tester.pumpAndSettle();
      expect(find.textContaining('2.500000 MSNW'), micro=='2500000'?findsOneWidget:findsNothing);
      expect(find.textContaining('Funding activity unavailable'), micro=='invalid'?findsOneWidget:findsNothing);
      expect(tester.takeException(),isNull);
      dio.close();
    });
  }
  testWidgets('P2P failed request renders retry safely', (tester) async {
    final dio=Dio()..httpClientAdapter=_Adapter([],fail:true);
    await tester.pumpWidget(MaterialApp(home:MsnwP2pScreen(
      dio:dio,baseUrl:'https://example.test',expectedUserId:'owner',
      currentUserId:()=>'owner',accessToken:()=>'token')));
    await tester.pumpAndSettle();
    expect(find.textContaining('P2P is unavailable:'),findsOneWidget);
    expect(find.text('Retry'),findsOneWidget);
    expect(tester.takeException(),isNull);
    dio.close();
  });
}
