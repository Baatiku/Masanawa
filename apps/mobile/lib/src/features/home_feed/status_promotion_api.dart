import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// A quote is informational; only an explicit, original-key confirmation
/// reserves purchased MB. Never use an optimistic local wallet subtraction.
class StatusPromotionQuote {
  const StatusPromotionQuote({required this.id, required this.targetViews,
    required this.totalMb, required this.eligibleMb, required this.insufficient,
    required this.expiresAt});
  final String id;
  final int targetViews, totalMb, eligibleMb;
  final bool insufficient;
  final DateTime expiresAt;

  factory StatusPromotionQuote.fromJson(Map<String,dynamic> raw){
    final id=raw['quoteId'],target=raw['targetViews'],total=raw['totalMb'],
      eligible=raw['eligibleMb'],expiry=raw['expiresAt'];
    final until=expiry is String?DateTime.tryParse(expiry):null;
    if(id is! String||id.isEmpty||target is! int||target<1||
      total is! int||total!=target||eligible is! int||eligible<0||
      raw['insufficientMb'] is! bool||until==null){
      throw const FormatException('Unverified promotion quote');
    }
    return StatusPromotionQuote(id:id,targetViews:target,totalMb:total,
      eligibleMb:eligible,insufficient:raw['insufficientMb'] as bool,
      expiresAt:until);
  }
}

class StatusPromotionCampaign {
  const StatusPromotionCampaign({required this.id,required this.quoteId,
    required this.postId,required this.state,required this.kind,
    required this.targetViews,required this.deliveredViews,
    required this.remainingViews});
  final String id,quoteId,postId,state,kind;
  final int targetViews,deliveredViews,remainingViews;
  factory StatusPromotionCampaign.fromJson(Map<String,dynamic> raw){
    final id=raw['id'],quote=raw['quoteId'],post=raw['postId'];
    final state=raw['state'],kind=raw['kind'],target=raw['targetViews'],
      delivered=raw['deliveredViews'],remaining=raw['remainingViews'];
    if(id is! String||quote is! String||post is! String||
      state is! String||kind is! String||target is! int||target<1||
      delivered is! int||delivered<0||remaining is! int||remaining<0||
      delivered+remaining>target){
      throw const FormatException('Unverified promotion receipt');
    }
    return StatusPromotionCampaign(id:id,quoteId:quote,postId:post,
      state:state,kind:kind,targetViews:target,
      deliveredViews:delivered,remainingViews:remaining);
  }
}

class StatusViewChallenge {
  const StatusViewChallenge(this.id,this.minimumDwellSeconds);
  final String id;
  final int minimumDwellSeconds;
}

class StatusQualifiedViewResult {
  const StatusQualifiedViewResult({required this.qualified,this.verifiedViews});
  final bool qualified;
  final int? verifiedViews;
}

abstract interface class StatusQualifiedViewApi {
  Future<StatusViewChallenge> beginView(String postId,{String? referral});
  Future<StatusQualifiedViewResult> qualifyView(String id,
    {required double visibleFraction,required bool foreground,
     required bool engaged});
}

abstract interface class StatusPromotionJournal {
  Future<String?> read();
  Future<void> write(String? data);
}

class SecureStatusPromotionJournal implements StatusPromotionJournal {
  SecureStatusPromotionJournal(this.account);
  final String account;
  static const _storage=FlutterSecureStorage();
  String get _key=>'status_promotion_pending_v1_${sha256.convert(utf8.encode(account))}';
  @override Future<String?> read()=>_storage.read(key:_key);
  @override Future<void> write(String? data)=>data==null
    ?_storage.delete(key:_key):_storage.write(key:_key,value:data);
}

class _OriginalConfirmation {
  const _OriginalConfirmation(this.account,this.quoteId,this.key,
    this.views,this.submitted);
  final String account,quoteId,key;
  final int views;
  final bool submitted;
  Map<String,dynamic> get json=>{'account':account,'quoteId':quoteId,
    'key':key,'views':views,'submitted':submitted};
  factory _OriginalConfirmation.parse(String encoded){
    final data=jsonDecode(encoded);
    if(data is! Map||data['account'] is! String||
      data['quoteId'] is! String||data['key'] is! String||
      data['views'] is! int||data['views']<1||data['submitted'] is! bool||
      !RegExp(r'^promotion-[A-Za-z0-9_-]{16,64}$').hasMatch(data['key'] as String)){
      throw const FormatException('Unverified original promotion operation');
    }
    return _OriginalConfirmation(data['account'] as String,
      data['quoteId'] as String,data['key'] as String,
      data['views'] as int,data['submitted'] as bool);
  }
}

class StatusPromotionApi implements StatusQualifiedViewApi {
  const StatusPromotionApi({required this.dio,required this.accessToken,
    required this.ownerAccount,required this.currentAccount,
    required this.journal});
  final Dio dio;
  final Future<String?> Function() accessToken;
  final String ownerAccount;
  final String? Function() currentAccount;
  final StatusPromotionJournal journal;
  void _owner(){if(ownerAccount.isEmpty||currentAccount()!=ownerAccount)
    throw StateError('Promotion account changed');}
  Future<Options> _options({String? key}) async {
    _owner();final token=await accessToken();_owner();
    if(token==null||token.isEmpty)throw StateError('Sign in required');
    return Options(headers:{'Authorization':'Bearer $token',
      if(key!=null)'Idempotency-Key':key},followRedirects:false,
      sendTimeout:const Duration(seconds:15),receiveTimeout:const Duration(seconds:25));
  }
  static Map<String,dynamic> _object(dynamic value){
    if(value is! Map)throw const FormatException('Invalid promotions response');
    return Map<String,dynamic>.from(value);
  }
  Future<bool> available() async {
    try {
      final result=await dio.get<Map<String,dynamic>>('/v1/promotions/capabilities',
        options:await _options());_owner();
      return result.data?['enabled']==true;
    } on DioException catch(e) {
      _owner();if(e.response?.statusCode==404||e.response?.statusCode==503)return false;
      rethrow;
    }
  }
  Future<StatusPromotionQuote> quote({String? postId,String? body,
    required int targetViews}) async {
    if(targetViews<1||targetViews>1000000)throw ArgumentError.value(targetViews);
    if((postId==null)==(body==null))throw ArgumentError('Specify post or text');
    final result=await dio.post<Map<String,dynamic>>('/v1/promotions/quotes',
      data:{if(postId!=null)'postId':postId,if(body!=null)'body':body,
        'targetViews':targetViews},options:await _options());
    _owner();return StatusPromotionQuote.fromJson(_object(result.data));
  }
  Future<StatusPromotionCampaign?> originalReceipt(String quoteId) async {
    final r=await dio.get<Map<String,dynamic>>(
      '/v1/promotions/quotes/${Uri.encodeComponent(quoteId)}/receipt',
      options:await _options());_owner();
    final raw=_object(r.data)['campaign'];
    return raw==null?null:StatusPromotionCampaign.fromJson(_object(raw));
  }
  Future<StatusPromotionCampaign?> recover() async {
    _owner();final value=await journal.read();_owner();
    if(value==null)return null;
    final original=_OriginalConfirmation.parse(value);
    if(original.account!=ownerAccount)throw StateError('Original belongs to another account');
    if(!original.submitted){await journal.write(null);_owner();return null;}
    final confirmed=await originalReceipt(original.quoteId);
    if(confirmed==null)throw StateError('Original promotion is still unresolved');
    if(confirmed.quoteId!=original.quoteId||
      confirmed.targetViews!=original.views)throw StateError('Promotion receipt mismatch');
    await journal.write(null);_owner();return confirmed;
  }
  Future<StatusPromotionCampaign> confirm(StatusPromotionQuote quote) async {
    _owner();await recover();_owner();
    if(quote.insufficient)throw StateError('Insufficient purchased MB');
    if(!quote.expiresAt.isAfter(DateTime.now()))throw StateError('Quote expired');
    final random=Random.secure();
    final key='promotion-${base64Url.encode(List<int>.generate(24,(_)=>random.nextInt(256))).replaceAll('=','')}';
    final original=_OriginalConfirmation(ownerAccount,quote.id,key,quote.targetViews,false);
    // Save the original operation BEFORE attempting any financially significant POST.
    await journal.write(jsonEncode(original.json));_owner();
    await journal.write(jsonEncode(_OriginalConfirmation(ownerAccount,quote.id,key,
      quote.targetViews,true).json));_owner();
    try {
      final r=await dio.post<Map<String,dynamic>>(
        '/v1/promotions/quotes/${Uri.encodeComponent(quote.id)}/confirm',
        data:const <String,dynamic>{},options:await _options(key:key));
      _owner();final receipt=StatusPromotionCampaign.fromJson(_object(r.data));
      if(receipt.quoteId!=quote.id||receipt.targetViews!=quote.targetViews)
        throw StateError('Original confirmation receipt mismatch');
      await journal.write(null);_owner();return receipt;
    } catch (_) {
      // HTTP timeouts and 5xx are unknowable after the POST: keep the original
      // quote ID and key, and require authoritative receipt readback.
      _owner();rethrow;
    }
  }
  Future<Map<String,dynamic>> mine() async {
    final r=await dio.get<Map<String,dynamic>>('/v1/promotions/mine',
      options:await _options());_owner();return _object(r.data);
  }
  Future<String> share(String postId) async {
    final r=await dio.post<Map<String,dynamic>>(
      '/v1/posts/${Uri.encodeComponent(postId)}/share-link',
      data:const <String,dynamic>{},options:await _options());_owner();
    final url=_object(r.data)['url'];
    if(url is! String||Uri.tryParse(url)?.scheme!='https')
      throw const FormatException('Invalid share link');
    return url;
  }
  @override
  Future<StatusViewChallenge> beginView(String postId,{String? referral}) async {
    final r=await dio.post<Map<String,dynamic>>(
      '/v1/posts/${Uri.encodeComponent(postId)}/view-challenges',
      data:{if(referral!=null)'referral':referral},options:await _options());
    _owner();final raw=_object(r.data);
    if(raw['challengeId'] is! String || raw['minimumDwellSeconds'] is! int ||
      (raw['minimumDwellSeconds'] as int)<6){
      throw const FormatException('Invalid server view challenge');
    }
    return StatusViewChallenge(raw['challengeId'] as String,
      raw['minimumDwellSeconds'] as int);
  }
  @override
  Future<StatusQualifiedViewResult> qualifyView(String id,
    {required double visibleFraction,required bool foreground,
     required bool engaged}) async {
    final r=await dio.post<Map<String,dynamic>>(
      '/v1/views/${Uri.encodeComponent(id)}/qualify',
      data:{'visibleFraction':visibleFraction,'foreground':foreground,
        'engaged':engaged},options:await _options());
    _owner();final raw=_object(r.data),n=raw['verifiedViews'];
    if(raw['qualified'] is! bool ||
      (n!=null&&(n is! int||n<0))){
      throw const FormatException('Invalid qualified-view response');
    }
    return StatusQualifiedViewResult(qualified:raw['qualified'] as bool,
      verifiedViews:n as int?);
  }
  Future<void> cancel(String campaignId) async {
    await dio.post<void>('/v1/promotions/${Uri.encodeComponent(campaignId)}/cancel',
      data:const <String,dynamic>{},options:await _options());_owner();
  }
  Future<void> pause(String campaignId) async {
    await dio.post<void>('/v1/promotions/${Uri.encodeComponent(campaignId)}/pause',
      data:const <String,dynamic>{},options:await _options());_owner();
  }
  Future<void> resume(String campaignId) async {
    await dio.post<void>('/v1/promotions/${Uri.encodeComponent(campaignId)}/resume',
      data:const <String,dynamic>{},options:await _options());_owner();
  }
  Future<void> deleteOwnPost(String postId) async {
    await dio.post<void>('/v1/promotions/posts/${Uri.encodeComponent(postId)}/delete',
      data:const <String,dynamic>{},options:await _options());_owner();
  }
}
