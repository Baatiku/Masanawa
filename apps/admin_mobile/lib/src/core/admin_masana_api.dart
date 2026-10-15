import 'package:dio/dio.dart';
import 'admin_api.dart';
import 'admin_auth_api.dart';

class AdminMasanaRevision {
  const AdminMasanaRevision({
    required this.characterId,required this.revision,
    required this.state,required this.profile,
  });
  final String characterId;
  final int revision;
  final String state;
  final Map<String,dynamic> profile;

  factory AdminMasanaRevision.fromJson(Map<String,dynamic> item)=>AdminMasanaRevision(
    characterId:item['characterId'] as String,
    revision:item['revision'] as int,
    state:item['state'] as String,
    profile:Map<String,dynamic>.from(item['profile'] as Map),
  );
}

class AdminMasanaException implements Exception {
  const AdminMasanaException(this.message);
  final String message;
  @override String toString()=>message;
}

/// Uses the canonical signed customer/admin session and immutable Masana
/// revision endpoints. An old approved revision is never edited in place.
class AdminMasanaApi {
  AdminMasanaApi({required this.session,Dio? dio}) :
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
  AdminMasanaException _error(DioException e){
    final code=e.response?.data is Map?
      (e.response!.data as Map)['code']?.toString():null;
    if(e.response?.statusCode==401)return const AdminMasanaException('Admin session expired. Sign in again.');
    if(e.response?.statusCode==403)return const AdminMasanaException('Masana editor permission required.');
    if(e.response?.statusCode==409)return const AdminMasanaException('Revision changed. Refresh before retrying.');
    if(e.response?.statusCode==400||e.response?.statusCode==422){
      return AdminMasanaException(code??'Profile validation failed.');
    }
    return const AdminMasanaException('Masana service unavailable. Retry when connected.');
  }
  Future<Response<dynamic>> _request(Future<Response<dynamic>> Function() call)async{
    try{return await call();}
    on DioException catch(e){
      if(e.response?.statusCode==401 &&
          await session.refreshForExternalClient()!=null){
        try{return await call();}
        on DioException catch(retry){throw _error(retry);}
      }
      throw _error(e);
    }
  }
  Future<List<AdminMasanaRevision>> list()async{
    final response=await _request(()=>_dio.get<dynamic>(
      '/v1/admin/masana',options:_auth));
    final body=Map<String,dynamic>.from(response.data as Map);
    return (body['items'] as List<dynamic>).map((item)=>
      AdminMasanaRevision.fromJson(Map<String,dynamic>.from(item as Map)),
    ).toList(growable:false);
  }
  Future<AdminMasanaRevision> draft(AdminMasanaRevision previous,
    Map<String,dynamic> profile)async{
    final response=await _request(()=>_dio.post<dynamic>(
      '/v1/admin/masana/${Uri.encodeComponent(previous.characterId)}/revisions',
      options:_auth,
      data:{'expectedRevision':previous.revision,'profile':profile}));
    final body=Map<String,dynamic>.from(response.data as Map);
    return AdminMasanaRevision(
      characterId:body['characterId'] as String,
      revision:body['revision'] as int,
      state:body['state'] as String,
      profile:profile,
    );
  }
  Future<void> approve(AdminMasanaRevision entry)async{
    await _request(()=>_dio.post<dynamic>(
      '/v1/admin/masana/${Uri.encodeComponent(entry.characterId)}/revisions/${entry.revision}/approve',
      options:_auth));
  }
  Future<AdminMasanaRevision> attachExistingMedia(AdminMasanaRevision entry,{
    required String mediaId,required String kind,required String rightsNote,
  })async{
    final response=await _request(()=>_dio.post<dynamic>(
      '/v1/admin/masana/${Uri.encodeComponent(entry.characterId)}/revisions/${entry.revision}/media',
      options:_auth,
      data:{'mediaId':mediaId,'kind':kind,'rightsNote':rightsNote}));
    final data=Map<String,dynamic>.from(response.data as Map);
    return AdminMasanaRevision(
      characterId:entry.characterId,
      revision:data['revision'] as int,
      state:data['state'] as String,
      profile:entry.profile,
    );
  }
}
