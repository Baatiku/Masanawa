import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/status_promotion_api.dart';

class MemoryPromotionJournal implements StatusPromotionJournal {
  String? value;
  @override Future<String?> read()async=>value;
  @override Future<void> write(String? data)async{value=data;}
}

void main(){
  test('server controls capability, exact purchased quote, original-key receipt',()async{
    final journal=MemoryPromotionJournal();var confirmed=0;
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(request,handler){
      if(request.path.endsWith('/capabilities')){
        return handler.resolve(Response(requestOptions:request,statusCode:200,
          data:{'enabled':true,'priceMbPerQualifiedView':1}));
      }
      if(request.path.endsWith('/quotes')){
        expect(request.data,{'body':'A good lesson','targetViews':50});
        return handler.resolve(Response(requestOptions:request,statusCode:200,
          data:{'quoteId':'quote-1','targetViews':50,'totalMb':50,
            'eligibleMb':60,'insufficientMb':false,
            'expiresAt':DateTime.now().add(const Duration(minutes:5)).toUtc().toIso8601String()}));
      }
      if(request.path.endsWith('/confirm')){
        confirmed++;
        expect(jsonDecode(journal.value!)['submitted'],true);
        expect(request.headers['Idempotency-Key'],isNotNull);
        return handler.resolve(Response(requestOptions:request,statusCode:200,data:{
          'id':'campaign-1','quoteId':'quote-1','postId':'post-1',
          'kind':'human_primary','state':'pending_review','targetViews':50,
          'deliveredViews':0,'remainingViews':50}));
      }
      handler.reject(DioException(requestOptions:request));
    }));
    addTearDown(()=>dio.close(force:true));
    var account='owner';
    final api=StatusPromotionApi(dio:dio,accessToken:()async=>'session',
      ownerAccount:'owner',currentAccount:()=>account,journal:journal);
    expect(await api.available(),true);
    final quote=await api.quote(body:'A good lesson',targetViews:50);
    expect(quote.totalMb,50);
    expect(quote.eligibleMb,60);
    final confirmedCampaign=await api.confirm(quote);
    expect(confirmedCampaign.state,'pending_review');
    expect(journal.value,isNull);
    expect(confirmed,1);
    account='another';
    await expectLater(api.available(),throwsStateError);
    await expectLater(api.quote(body:'A good lesson',targetViews:50),throwsStateError);
  });

  test('lost confirmation keeps the original until authoritative receipt readback',()async{
    final journal=MemoryPromotionJournal();var confirmations=0,readbacks=0;
    final dio=Dio(BaseOptions(baseUrl:'https://gateway.example'));
    dio.interceptors.add(InterceptorsWrapper(onRequest:(request,handler){
      if(request.path.endsWith('/confirm')){
        confirmations++;
        return handler.reject(DioException(requestOptions:request,
          type:DioExceptionType.receiveTimeout));
      }
      if(request.path.endsWith('/receipt')){
        readbacks++;
        return handler.resolve(Response(requestOptions:request,statusCode:200,
          data:{'campaign':{'id':'campaign-1','quoteId':'quote-1',
            'postId':'post-1','kind':'boost','state':'active',
            'targetViews':5,'deliveredViews':0,'remainingViews':5}}));
      }
      handler.reject(DioException(requestOptions:request));
    }));
    addTearDown(()=>dio.close(force:true));
    final api=StatusPromotionApi(dio:dio,accessToken:()async=>'session',
      ownerAccount:'owner',currentAccount:()=> 'owner',journal:journal);
    final quote=StatusPromotionQuote(id:'quote-1',targetViews:5,totalMb:5,
      eligibleMb:100,insufficient:false,
      expiresAt:DateTime.now().add(const Duration(minutes:5)));
    await expectLater(api.confirm(quote),throwsA(isA<DioException>()));
    expect(confirmations,1);
    expect(jsonDecode(journal.value!)['submitted'],true);
    expect((await api.recover())?.state,'active');
    expect(readbacks,1);
    expect(confirmations,1);
    expect(journal.value,isNull);
  });
}
