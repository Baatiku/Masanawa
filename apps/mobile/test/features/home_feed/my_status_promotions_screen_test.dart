import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/my_status_promotions_screen.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_api.dart';

class _MemoryJournal implements StatusPromotionJournal {
  @override Future<String?> read()async=>null;
  @override Future<void> write(String? data)async{}
}

void main(){
 testWidgets('owner can review original inactive content, historical views and 72h grace',
  (tester)async{
   final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
   dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
     if(options.path=='/v1/promotions/mine'){
       return handler.resolve(Response(requestOptions:options,statusCode:200,data:{
         'serverNow':'2026-10-27T12:00:00Z',
         'campaigns':<dynamic>[],
         'sharingEarnings':<dynamic>[],
         'inactivePosts':[{'postId':'post-17','body':'Owner original lesson',
           'kind':'text','historicalVerifiedViews':17,
           'purgeAt':'2026-10-30T11:00:00Z'}],
       }));
     }
     handler.reject(DioException(requestOptions:options));
   }));
   addTearDown(()=>dio.close(force:true));
   final api=StatusPromotionApi(dio:dio,accessToken:()async=>'session',
     ownerAccount:'owner',currentAccount:()=> 'owner',journal:_MemoryJournal());
   var boosts=0;
   await tester.pumpWidget(MaterialApp(home:MyStatusPromotionsScreen(
     api:api,onBoostAgain:(id)async{
       expect(id,'post-17');boosts++;
     })));
   await tester.pumpAndSettle();
   expect(find.text('Owner original lesson'),findsOneWidget);
   expect(find.text('17 historical verified views'),findsOneWidget);
   expect(find.text('Expires in 71h 0m'),findsOneWidget);
   await tester.tap(find.text('Boost again'));
   await tester.pumpAndSettle();
   expect(boosts,1);
   await tester.pumpWidget(const SizedBox.shrink());
 });

 testWidgets('cancelled funds show released MB and no fictitious reservation',
  (tester)async{
   final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
   dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
     if(options.path=='/v1/promotions/mine'){
       return handler.resolve(Response(requestOptions:options,statusCode:200,data:{
         'serverNow':'2026-10-27T12:00:00Z',
         'inactivePosts':<dynamic>[], 'sharingEarnings':<dynamic>[],
         'campaigns':[{'id':'campaign-1','kind':'boost','state':'cancelled',
           'targetViews':8,'deliveredViews':3,'directViews':1,'referredViews':2,
           'remainingViews':5,'spentMb':3,'reservedMb':0,'refundedUnusedMb':5},
           {'id':'campaign-2','kind':'human_primary','state':'rejected',
            'targetViews':2,'deliveredViews':0,'directViews':0,'referredViews':0,
            'remainingViews':2,'spentMb':0,'reservedMb':0,'refundedUnusedMb':2,
            'reviewReason':'Unsafe advertising claim'}],
       }));
     }
     handler.reject(DioException(requestOptions:options));
   }));
   addTearDown(()=>dio.close(force:true));
   final api=StatusPromotionApi(dio:dio,accessToken:()async=>'session',
     ownerAccount:'owner',currentAccount:()=> 'owner',journal:_MemoryJournal());
   await tester.pumpWidget(MaterialApp(home:MyStatusPromotionsScreen(
     api:api,canBoost:false,onBoostAgain:(_)async{})));
   await tester.pumpAndSettle();
   expect(find.text('New promotion spending is temporarily unavailable.'),findsOneWidget);
   expect(find.textContaining('3/8 qualified views'),findsOneWidget);
   expect(find.textContaining('0 MB still reserved'),findsNWidgets(2));
   expect(find.textContaining('5 MB still reserved'),findsNothing);
   expect(find.textContaining('5 MB released'),findsOneWidget);
   expect(find.textContaining('Review reason: Unsafe advertising claim'),findsOneWidget);
   await tester.pumpWidget(const SizedBox.shrink());
 });
}
