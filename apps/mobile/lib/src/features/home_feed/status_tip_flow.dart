import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Server-signed, account/post-bound review. UI never decides the recipient,
/// transfers on an HTTP acknowledgement, or derives an MB balance.
class StatusTipReview {
  const StatusTipReview({required this.postId,required this.characterId,
    required this.displayName,required this.amountMb,required this.operationId,
    required this.reviewToken,required this.expiresAt});
  final String postId,characterId,displayName,operationId,reviewToken;
  final int amountMb;
  final DateTime expiresAt;
}
class StatusTipReceipt {
  const StatusTipReceipt({required this.operationId,required this.postId,
    required this.characterId,required this.amountMb});
  final String operationId,postId,characterId;
  final int amountMb;
}
abstract interface class StatusTipStore {
  Future<String?> read();
  Future<void> write(String? contents);
}
class SecureStatusTipStore implements StatusTipStore {
  SecureStatusTipStore(this.accountId);
  final String accountId;
  static const storage=FlutterSecureStorage();
  String get key=>'status_tip_pending_v1_${sha256.convert(utf8.encode(accountId))}';
  @override Future<String?> read()=>storage.read(key:key);
  @override Future<void> write(String? contents)=>contents==null
    ?storage.delete(key:key):storage.write(key:key,value:contents);
}
class StatusTipPending {
  const StatusTipPending(this.accountId,this.operationId,this.postId,
    this.characterId,this.amountMb,this.submitted);
  final String accountId,operationId,postId,characterId;
  final int amountMb;
  final bool submitted;
  Map<String,dynamic> toJson()=>{'accountId':accountId,'operationId':operationId,
    'postId':postId,'characterId':characterId,'amountMb':amountMb,
    'submitted':submitted};
  static StatusTipPending parse(String encoded){
    final raw=jsonDecode(encoded);
    if(raw is! Map||raw['accountId'] is! String ||
       raw['operationId'] is! String||raw['postId'] is! String||
       raw['characterId'] is! String||raw['amountMb'] is! int||
       raw['submitted'] is! bool ||
       !(raw['amountMb'] as int).isFinite ||
       (raw['amountMb'] as int)<1 ||
       !RegExp(r'^tip_[A-Za-z0-9_-]{22,128}$').hasMatch(raw['operationId'] as String)){
      throw const FormatException('Invalid original Status tip record');
    }
    return StatusTipPending(raw['accountId'] as String,
      raw['operationId'] as String,raw['postId'] as String,
      raw['characterId'] as String,raw['amountMb'] as int,
      raw['submitted'] as bool);
  }
}
/// An uncertain paid mutation never causes another fresh tip POST. The
/// original operation is retained until its owner-only receipt is confirmed.
class StatusTipFlow {
  StatusTipFlow({required this.dio,required this.accountId,
    required this.currentAccountId,required this.accessToken,
    required this.store});
  final Dio dio;
  final String accountId,accessToken;
  final String? Function() currentAccountId;
  final StatusTipStore store;
  void owner(){
    if(accountId.isEmpty||accessToken.isEmpty||currentAccountId()!=accountId)
      throw StateError('Signed-in Status tip account changed.');
  }
  Options options()=>Options(headers:{'Authorization':'Bearer $accessToken'},
    followRedirects:false,sendTimeout:const Duration(seconds:15),
    receiveTimeout:const Duration(seconds:25));
  Map<String,dynamic> object(dynamic raw){
    if(raw is! Map)throw const FormatException('Invalid Status tip response');
    return Map<String,dynamic>.from(raw);
  }
  StatusTipReceipt receipt(dynamic value){
    final raw=object(value);
    final id=raw['operationId'],post=raw['postId'],author=raw['characterId'];
    final amount=raw['amountMb'];
    if(id is! String||!RegExp(r'^tip_[A-Za-z0-9_-]{22,128}$').hasMatch(id)||
       post is! String||post.isEmpty||author is! String||author.isEmpty||
       amount is! int||amount<1||raw['state']!='completed')
      throw const FormatException('Invalid completed Status tip receipt');
    return StatusTipReceipt(operationId:id,postId:post,characterId:author,
      amountMb:amount);
  }
  Future<StatusTipPending?> pending() async {
    owner();
    final value=await store.read();
    if(value==null)return null;
    final original=StatusTipPending.parse(value);
    if(original.accountId!=accountId)
      throw StateError('Original Status tip belongs to another account.');
    owner();
    return original;
  }
  Future<StatusTipReceipt?> readOriginal(String operationId) async {
    owner();
    try {
      final response=await dio.get<Map<String,dynamic>>(
        '/v1/gb/wallet/tips/receipt/${Uri.encodeComponent(operationId)}',
        options:options());
      owner();
      return receipt(object(response.data)['receipt']);
    } on DioException catch(error) {
      owner();
      if(error.response?.statusCode==404)return null;
      rethrow;
    }
  }
  Future<StatusTipReceipt?> recover() async {
    final previous=await pending();
    if(previous==null)return null;
    if(!previous.submitted){
      await store.write(null);
      owner();
      return null;
    }
    // A missing 404 is still unknown; it is NOT a safe invitation to pay
    // again when the original POST may have crossed a network boundary.
    final completed=await readOriginal(previous.operationId);
    if(completed==null)
      throw StateError('Previous tip is unconfirmed. Check the original receipt again.');
    if(completed.operationId!=previous.operationId ||
       completed.postId!=previous.postId ||
       completed.characterId!=previous.characterId ||
       completed.amountMb!=previous.amountMb)
      throw StateError('Original tip receipt does not match your payment.');
    owner();
    await store.write(null);
    owner();
    return completed;
  }
  Future<StatusTipReview> review(String postId,int amountMb) async {
    await recover();
    if(amountMb<1||amountMb>1000000000)
      throw ArgumentError.value(amountMb,'amountMb');
    owner();
    final result=await dio.post<Map<String,dynamic>>(
      '/v1/gb/wallet/tips/review',data:{'postId':postId,'amountMb':amountMb},
      options:options());
    owner();
    final raw=object(object(result.data)['review']);
    final operationId=raw['operationId'];
    final expiry=DateTime.tryParse(raw['expiresAt'] is String
        ?raw['expiresAt'] as String:'');
    if(raw['postId']!=postId||raw['amountMb']!=amountMb ||
       operationId is! String ||
       !RegExp(r'^tip_[A-Za-z0-9_-]{22,128}$').hasMatch(operationId)||
       raw['characterId'] is! String||raw['displayName'] is! String ||
       raw['reviewToken'] is! String ||
       (raw['reviewToken'] as String).length<40 ||
       expiry==null||!expiry.isAfter(DateTime.now())) {
      throw const FormatException('Invalid verified tip review');
    }
    return StatusTipReview(postId:postId,amountMb:amountMb,
      characterId:raw['characterId'] as String,
      displayName:raw['displayName'] as String,
      operationId:operationId,reviewToken:raw['reviewToken'] as String,
      expiresAt:expiry);
  }
  Future<StatusTipReceipt> confirm(StatusTipReview review) async {
    owner();
    if(!review.expiresAt.isAfter(DateTime.now()))
      throw StateError('Tip review expired. Nothing was sent.');
    if(await pending()!=null)
      throw StateError('Resolve the original tip before a new payment.');
    final original=StatusTipPending(accountId,review.operationId,
      review.postId,review.characterId,review.amountMb,false);
    // Financial operation's original identity MUST be saved *before*
    // the first confirm POST. Encrypted storage failure forbids a debit.
    await store.write(jsonEncode(original.toJson()));
    owner();
    await store.write(jsonEncode(StatusTipPending(accountId,review.operationId,
      review.postId,review.characterId,review.amountMb,true).toJson()));
    owner();
    final response=await dio.post<Map<String,dynamic>>(
      '/v1/gb/wallet/tips/confirm',data:{
        'reviewToken':review.reviewToken,'reviewAccepted':true,
      },options:options());
    owner();
    final completed=receipt(object(response.data)['receipt']);
    if(completed.operationId!=review.operationId ||
        completed.postId!=review.postId ||
        completed.characterId!=review.characterId ||
        completed.amountMb!=review.amountMb)
      throw StateError('Status tip receipt changed original operation.');
    await store.write(null);
    owner();
    return completed;
  }
}
