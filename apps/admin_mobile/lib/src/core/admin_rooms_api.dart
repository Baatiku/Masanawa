import 'package:dio/dio.dart';

import 'admin_api.dart';
import 'admin_auth_api.dart';

class AdminRoom {
  const AdminRoom({
    required this.roomId,required this.professionTitle,
    required this.teacherCharacterId,required this.slug,
    required this.language,required this.planMode,required this.state,
  });
  final String roomId;
  final String professionTitle;
  final String teacherCharacterId;
  final String slug;
  final String language;
  final String planMode;
  final String state;
  factory AdminRoom.fromJson(Map<String,dynamic> x)=>AdminRoom(
    roomId:x['roomId'] as String,
    professionTitle:x['professionTitle'] as String,
    teacherCharacterId:x['teacherCharacterId'] as String,
    slug:x['slug'] as String,
    language:x['language'] as String,
    planMode:x['planMode'] as String,
    state:x['state'] as String,
  );
}

class AdminRoomApiException implements Exception {
  const AdminRoomApiException(this.message);
  final String message;
  @override String toString()=>message;
}

/// The same Gateway staff-authenticated Room authority as the user app.
/// Publishing and lesson writes are enforced by the server, not by a UI flag.
class AdminRoomApi {
  AdminRoomApi({required this.session,Dio? dio}):
    _dio=dio??Dio(BaseOptions(
      baseUrl:requireAdminAuthBaseUrl(),
      connectTimeout:const Duration(seconds:10),
      receiveTimeout:const Duration(seconds:20),
      headers:{'Accept':'application/json'},
    ));
  final AdminApi session;
  final Dio _dio;
  Options get _auth=>Options(headers:{
    'Authorization':'Bearer ${session.currentAccessToken}',
  });

  Future<Response<dynamic>> _call(Future<Response<dynamic>> Function() work)async{
    try{return await work();}
    on DioException catch(e){
      if(e.response?.statusCode==401 &&
        await session.refreshForExternalClient()!=null){
        try{return await work();}
        on DioException catch(retry){throw _exception(retry);}
      }
      throw _exception(e);
    }
  }

  AdminRoomApiException _exception(DioException e){
    final x=e.response?.data;
    final code=x is Map?x['code']?.toString():null;
    if(e.response?.statusCode==401)return const AdminRoomApiException('Sign in again.');
    if(e.response?.statusCode==403)return const AdminRoomApiException('Room editor permission required.');
    if(e.response?.statusCode==409)return const AdminRoomApiException('Room state changed. Refresh.');
    if(e.response?.statusCode==410)return const AdminRoomApiException('Rooms are unavailable.');
    if(e.response?.statusCode==422)return AdminRoomApiException(code??'Invalid Room details.');
    return const AdminRoomApiException('Could not reach Rooms. Retry.');
  }

  Future<List<AdminRoom>> list()async{
    final response=await _call(()=>_dio.get<dynamic>('/v1/admin/rooms',options:_auth));
    final x=Map<String,dynamic>.from(response.data as Map);
    return (x['items'] as List<dynamic>)
      .map((row)=>AdminRoom.fromJson(Map<String,dynamic>.from(row as Map)))
      .toList(growable:false);
  }

  Future<AdminRoom> create({
    required String professionTitle,required String teacherCharacterId,
    required String slug,required String language,
  })async{
    final response=await _call(()=>_dio.post<dynamic>(
      '/v1/admin/rooms',options:_auth,data:{
        'professionTitle':professionTitle.trim(),
        'teacherCharacterId':teacherCharacterId.trim(),
        'slug':slug.trim(),
        'language':language.trim(),
      }));
    return AdminRoom.fromJson(Map<String,dynamic>.from(response.data as Map));
  }

  Future<void> publish(String id)async{
    await _call(()=>_dio.post<dynamic>(
      '/v1/admin/rooms/${Uri.encodeComponent(id)}/publish',options:_auth));
  }

  Future<void> addLesson({
    required String roomId,required String body,required bool announcement,
  })async{
    await _call(()=>_dio.post<dynamic>(
      '/v1/admin/rooms/${Uri.encodeComponent(roomId)}/lessons',
      options:_auth,data:{'body':body.trim(),'kind':announcement?'announcement':'lesson'}));
  }
}
