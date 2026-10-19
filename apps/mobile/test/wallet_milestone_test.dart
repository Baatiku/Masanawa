import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_wallet_home.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';
import 'package:masanawa/src/finance/wallet_flow_page.dart';
import 'package:masanawa/src/finance/msnw_custody_send.dart';
import 'package:masanawa/src/screens/wallet/wallet_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
class _Adapter implements HttpClientAdapter {
  _Adapter(this.handle);
  final Future<ResponseBody> Function(RequestOptions) handle;
  @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? c)=>handle(o);
  @override void close({bool force=false}){}
}
ResponseBody _json(String s)=>ResponseBody.fromString(s,200,headers:{Headers.contentTypeHeader:[Headers.jsonContentType]});
void main(){
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));
  test('statement presets use inclusive UTC dates across year boundaries',(){
    final now=DateTime.utc(2026,1,4,23);
    expect(walletStatementRange('Last 7 days',now:now),{'from':'2025-12-29','to':'2026-01-04'});
    expect(walletStatementRange('Last month',now:now),{'from':'2025-12-01','to':'2025-12-31'});
    expect(walletStatementRange('Current filters',now:now),isEmpty);
  });
  test('custody validates asset, scope and exact unsigned atomic values',(){
    final b=MsnwCustodyBalance.fromJson({'asset':'MSNW','scope':'platform_custody','availableMicro':'1000001','reservedMicro':'2000000'});
    expect(formatWalletAtomic(b.available),'1.000001');
    expect(formatWalletAtomic('0'),'0');
    expect(formatWalletAtomic('100000000000000000000000'),'100000000000000000');
    for(final value in [null,{'asset':'MSN'},
      {'asset':'MSNW','scope':'onchain','availableMicro':'0','reservedMicro':'0'},
      {'asset':'MSNW','scope':'platform_custody','availableMicro':'-1','reservedMicro':'0'}]){
      expect(()=>MsnwCustodyBalance.fromJson(value),throwsFormatException);
    }
  });
  testWidgets('verified zero shows Fund, never balance unavailable; hides amount',(tester)async{
    final paths=<String>[];
    final dio=Dio()..httpClientAdapter=_Adapter((o)async{paths.add(o.path);return _json('{"asset":"MSNW","scope":"platform_custody","availableMicro":"0","reservedMicro":"0"}');});
    var funded=0;
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:MsnwWalletBalanceCard(
      dio:dio,baseUrl:'https://test',accountId:'a',currentUserId:()=>'a',accessToken:()=>'token',onFund:()=>funded++))));
    await tester.pumpAndSettle();
    expect(paths,['https://test/v1/wallet/msnw/custody']);
    expect(find.text('0 MSNW'),findsOneWidget);expect(find.text('No funds yet'),findsOneWidget);
    await tester.tap(find.text('Fund'));expect(funded,1);
    await tester.tap(find.byTooltip('Hide balance'));await tester.pump();
    expect(find.text('0 MSNW'),findsNothing);expect(find.text('••••••'),findsOneWidget);
  });
  testWidgets('failed balance read has Retry and never fabricates zero',(tester)async{
    final dio=Dio()..httpClientAdapter=_Adapter((_)async=>throw StateError('offline'));
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:MsnwWalletBalanceCard(
      dio:dio,baseUrl:'https://test',accountId:'a',currentUserId:()=>'a',accessToken:()=>'token',onFund:(){}))));
    await tester.pumpAndSettle();expect(find.text('— MSNW'),findsOneWidget);expect(find.text('0 MSNW'),findsNothing);expect(find.text('Retry'),findsOneWidget);
  });
  testWidgets('old account response cannot populate the new card',(tester)async{
    final pending=Completer<ResponseBody>();var account='a';
    final dio=Dio()..httpClientAdapter=_Adapter((o)=>o.headers['Authorization']=='Bearer a'?pending.future:Future.value(_json('{"asset":"MSNW","scope":"platform_custody","availableMicro":"0","reservedMicro":"0"}')));
    Widget app()=>MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:MsnwWalletBalanceCard(
      dio:dio,baseUrl:'https://test',accountId:account,currentUserId:()=>account,accessToken:()=>account,onFund:(){})));
    await tester.pumpWidget(app());await tester.pump();account='b';await tester.pumpWidget(app());await tester.pumpAndSettle();
    pending.complete(_json('{"asset":"MSNW","scope":"platform_custody","availableMicro":"99000000","reservedMicro":"0"}'));
    await tester.pumpAndSettle();expect(find.text('99 MSNW'),findsNothing);expect(find.text('0 MSNW'),findsOneWidget);
  });
  testWidgets('four wallet actions fit one row at 320 pixels',(tester)async{
    tester.view.physicalSize=const Size(320,640);tester.view.devicePixelRatio=1;
    addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:WalletActionRow(onSend:(){},onConvert:(){},onReceive:(){},onP2p:(){}))));
    expect(tester.getCenter(find.text('Send')).dy,tester.getCenter(find.text('P2P')).dy);expect(tester.takeException(),isNull);
  });
  testWidgets('services use navigable rows with exact category intents',(tester)async{
    final selected=<String>[];
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:WalletServiceShortcuts(onOpenBillingService:selected.add))));
    expect(find.byType(ActionChip),findsNothing);
    for(final label in ['Data bundles','Airtime','Electricity','TV'])await tester.tap(find.text(label));
    expect(selected,['data','airtime','electricity','tv']);
  });
  testWidgets('review is a full route, Back never confirms',(tester)async{
    bool? result;
    await tester.pumpWidget(MaterialApp(home:Builder(builder:(context)=>Scaffold(body:TextButton(onPressed:()async{
      result=await openWalletPage<bool>(context:context,title:'Review transfer',builder:(ctx)=>WalletReviewContent(
        title:const Text('Send 2 MSNW'),content:const Text('Recipient: Amina'),actions:[FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Confirm'))]));
    },child:const Text('Review'))))));
    await tester.tap(find.text('Review'));await tester.pumpAndSettle();
    expect(find.byType(AlertDialog),findsNothing);expect(find.byType(BottomSheet),findsNothing);
    expect(find.text('Recipient: Amina'),findsOneWidget);await tester.pageBack();await tester.pumpAndSettle();expect(result,isNull);
  });
  test('normalized history preserves exact legacy and fiat units',(){
    final old=parseWalletActivity({'id':'old','reference':'old','category':'Archive','title':'Call','amountAtomic':'20','decimals':0,'asset':'Cr (historical)','status':'recorded','incoming':false,'createdAt':'2026-10-17T10:00:00Z','details':{}});
    expect(old.asset,'Cr (historical)');expect(old.amount,'20');
    final f=parseWalletActivity({'id':'bank','reference':'bank','category':'Funding','title':'Bank funding','amountAtomic':'12345','decimals':2,'asset':'NGN','status':'backing_pending','incoming':true,'createdAt':'2026-10-17T10:00:00Z','details':{}});
    expect(f.asset,'NGN');expect(f.amount,'123.45');expect(f.status,'backing_pending');
  });
  test('normalized history rejects invalid amount, precision and missing identity',(){
    for(final row in [null,{'id':'x'},
      {'id':'x','reference':'x','category':'Transfers','title':'Sent','amountAtomic':'NaN','decimals':6,'asset':'MSNW','status':'completed','incoming':false,'createdAt':'2026-10-17T10:00:00Z','details':{}}]){
      expect(()=>parseWalletActivity(row),throwsFormatException);
    }
  });
  test('history filters type, state and UTC dates',(){
    final e=WalletTransaction(id:'a',category:'Transfers',title:'Sent',amount:'1',asset:'MSNW',status:'completed',incoming:false,details:{},createdAt:DateTime.utc(2026,10,17));
    expect(WalletHistoryFilter(category:'Transfers',status:'Completed',from:DateTime.utc(2026,10,17),to:DateTime.utc(2026,10,17)).matches(e),isTrue);
    expect(const WalletHistoryFilter(status:'Pending').matches(e),isFalse);
    expect(const WalletHistoryFilter(category:'Funding').matches(e),isFalse);
  });
  testWidgets('history retries an outage and loads a subsequent cursor page',(tester)async{
    var calls=0;
    final dio=Dio()..httpClientAdapter=_Adapter((o)async{
      calls++;if(calls==1)throw StateError('offline');
      final second=o.queryParameters['cursor']=='next';
      final id=second?'two':'one';
      return _json('{"items":[{"id":"Transfers:$id","reference":"$id","category":"Transfers","title":"MSNW sent $id","amountAtomic":"1000001","decimals":6,"asset":"MSNW","status":"completed","incoming":false,"createdAt":"2026-10-17T10:00:00Z","details":{}}],"nextCursor":${second?'null':'"next"'}}');
    });
    await tester.pumpWidget(MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:Scaffold(body:MsnwTransactionHistory(dio:dio,baseUrl:'https://test',expectedUserId:'a',currentUserId:()=>'a',accessToken:()=>'token'))));
    await tester.pumpAndSettle();expect(find.text('No transactions yet'),findsNothing);expect(find.textContaining('Couldn’t refresh'),findsOneWidget);
    await tester.tap(find.byTooltip('Refresh transactions'));await tester.pumpAndSettle();expect(find.text('MSNW sent one'),findsOneWidget);
    await tester.tap(find.text('Load more'));await tester.pumpAndSettle();expect(find.text('MSNW sent two'),findsOneWidget);expect(find.text('MSNW sent one'),findsOneWidget);
    await tester.tap(find.text('MSNW sent one'));await tester.pumpAndSettle();expect(find.text('Transaction details'),findsOneWidget);
  });
  testWidgets('send review Back does not pay; explicit confirmation posts once',(tester)async{
    var posts=0;
    final dio=Dio()..httpClientAdapter=_Adapter((o)async{
      if(o.path.endsWith('/preview'))return _json('{"asset":"MSNW","recipientUserId":"b","recipientName":"Amina","amountMicro":"2000000","feeMicro":"0"}');
      posts++;expect(o.data['idempotencyKey'],isNotEmpty);
      return _json('{"asset":"MSNW","state":"completed","operationId":"receipt","recipientUserId":"b","amountMicro":"2000000"}');
    });
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:MsnwCustodySendSheet(dio:dio,baseUrl:'https://test',expectedUserId:'a',currentUserId:()=>'a',accessToken:()=>'token',onCompleted:(){}))));
    await tester.enterText(find.byType(TextField).at(0),'amina@example.test');
    await tester.enterText(find.byType(TextField).at(1),'2');
    await tester.ensureVisible(find.text('Check recipient and available balance'));
    await tester.tap(find.text('Check recipient and available balance'));await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Review and confirm'));await tester.tap(find.text('Review and confirm'));await tester.pumpAndSettle();
    expect(find.byType(AlertDialog),findsNothing);expect(posts,0);
    await tester.pageBack();await tester.pumpAndSettle();expect(posts,0);
    await tester.ensureVisible(find.text('Review and confirm'));await tester.tap(find.text('Review and confirm'));await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm & send'));await tester.pumpAndSettle();
    expect(posts,1);expect(find.text('Transfer completed'),findsOneWidget);expect(tester.takeException(),isNull);
  });

}
