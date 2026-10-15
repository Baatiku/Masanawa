import 'package:dio/dio.dart';

import 'admin_api.dart';
import 'admin_auth_api.dart';

class AdminRoom {
  const AdminRoom({
    required this.roomId,
    required this.professionTitle,
    required this.teacherCharacterId,
    required this.slug,
    required this.language,
    required this.state,
    required this.planMode,
    required this.memberCount,
  });
  final String roomId;
  final String professionTitle;
  final String teacherCharacterId;
  final String slug;
  final String language;
  final String state;
  final String planMode;
  final int memberCount;
  factory AdminRoom.fromJson(Map<String,dynamic> x)=>AdminRoom(
    roomId:x['roomId'] as String,
    professionTitle:x['professionTitle'] as String,
    teacherCharacterId:x['teacherCharacterId'] as String,
    slug:x['slug'] as String,
    language:x['language'] as String? ?? 'en',
    state:x['state'] as String,
    planMode:x['planMode'] as String? ?? 'free',
    memberCount:x['memberCount'] as int? ?? 0,
  );
}
class AdminRoomsException implements Exception {
  const AdminRoomsException(this.message);
  final String message;
  @override String toString()=>message;
}

/// Uses the existing Gateway Room staff authority and the signed-in admin
/// session. Never trusts client roles or modifies membership/financial state.
class AdminRoomsApi {
  AdminRoomsApi({required this.session,Dio? dio}):
    _dio=dio ?? Dio(BaseOptions(
      baseUrl:requireAdminAuthBaseUrl(),
      connectTimeout:const Duration(seconds:10),
      receiveTimeout:const Duration(seconds:20),
      headers:{'Accept':'application/json'},
    ));

  final AdminApi session;
  final Dio _dio;
  Options get _auth=>Options(
    headers:{'Authorization':'Bearer ${session.currentAccessToken}'});
  AdminRoomsException _fail(DioException e){
    final data=e.response?.data;
    final code=data is Map?data['code']?.toString():null;
    if(e.response?.statusCode==401)return const AdminRoomsException('Your admin session has expired.');
    if(e.response?.statusCode==403)return const AdminRoomsException('Room editor permission required.');
    if(e.response?.statusCode==409)return const AdminRoomsException('Room changed. Refresh and retry.');
    if(e.response?.statusCode==422)return AdminRoomsException(code??'Invalid Room content.');
    return const AdminRoomsException('Rooms service unavailable. Retry when connected.');
  }
  Future<Response<dynamic>> _request(Future<Response<dynamic>> Function() fn)async{
    try{return await fn();}
    on DioException catch(e){
      if(e.response?.statusCode==401 &&
          await session.refreshForExternalClient()!=null) {
        try{return await fn();}
        on DioException catch(retry){throw _fail(retry);}
      }
      throw _fail(e);
    }
  }
  Future<List<AdminRoom>> rooms()async{
    final result=await _request(()=>_dio.get<dynamic>(
      '/v1/admin/rooms',options:_auth));
    final body=Map<String,dynamic>.from(result.data as Map);
    return (body['items'] as List<dynamic>).map(
      (v)=>AdminRoom.fromJson(Map<String,dynamic>.from(v as Map)),
    ).toList(growable:false);
  }
  Future<AdminRoom> create({
    required String title,required String slug,
    required String teacherCharacterId,required String language,
  })async{
    final response=await _request(()=>_dio.post<dynamic>(
      '/v1/admin/rooms',options:_auth,
      data:{
        'professionTitle':title.trim(),
        'slug':slug.trim().toLowerCase(),
        'teacherCharacterId':teacherCharacterId,
        'language':language.trim().toLowerCase(),
      }));
    return AdminRoom.fromJson(Map<String,dynamic>.from(response.data as Map));
  }
  Future<void> publish(String roomId)async{
    await _request(()=>_dio.post<dynamic>(
      '/v1/admin/rooms/${Uri.encodeComponent(roomId)}/publish',options:_auth));
  }
  Future<void> addLesson(String roomId,{
    required String body,required bool announcement,
  })async{
    await _request(()=>_dio.post<dynamic>(
      '/v1/admin/rooms/${Uri.encodeComponent(roomId)}/lessons',
      options:_auth,
      data:{'body':body.trim(),'kind':announcement?'announcement':'lesson'}));
  }
}
