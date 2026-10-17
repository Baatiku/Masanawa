import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
class _Adapter implements HttpClientAdapter {
 @override Future<ResponseBody> fetch(RequestOptions options,Stream<Uint8List>? requestStream,Future<void>? cancelFuture) async=>ResponseBody.fromString('{"items":[]}',200,headers:{Headers.contentTypeHeader:[Headers.jsonContentType]});
 @override void close({bool force=false}){}
}
void main(){testWidgets('P2P opens directly on trading controls without introductory text',(tester)async{
 final dio=Dio()..httpClientAdapter=_Adapter();
 await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:MsnwP2pScreen(dio:dio,baseUrl:'https://gateway.example.test',expectedUserId:'user',currentUserId:()=>'user',accessToken:()=>'token')));
 await tester.pumpAndSettle();
 expect(find.text('Buy'),findsOneWidget);expect(find.text('Sell'),findsOneWidget);expect(find.text('My orders'),findsOneWidget);
 expect(find.textContaining('Trade MSNW directly'),findsNothing);
 expect(tester.takeException(),isNull);
});}
