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
}
