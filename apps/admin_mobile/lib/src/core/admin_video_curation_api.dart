import 'package:dio/dio.dart';

import 'admin_api.dart';
import 'admin_auth_api.dart';

class AdminVideoItem {
  const AdminVideoItem({
    required this.id, required this.provider, required this.providerVideoId,
    required this.sourceUrl, required this.title, required this.channelName,
    required this.reviewState, required this.verifiedAt,
  });
  final String id;
  final String provider;
  final String providerVideoId;
  final String sourceUrl;
  final String title;
  final String channelName;
  final String reviewState;
  final String? verifiedAt;

  factory AdminVideoItem.fromJson(Map<String, dynamic> x) => AdminVideoItem(
    id: x['id'] as String,
    provider: x['provider'] as String,
    providerVideoId: x['providerVideoId'] as String,
    sourceUrl: x['sourceUrl'] as String,
    title: x['title'] as String,
    channelName: x['channelName'] as String,
    reviewState: x['reviewState'] as String,
    verifiedAt: x['verifiedAt'] as String?,
  );
}

class AdminVideoPage {
  const AdminVideoPage({required this.items, required this.nextCursor});
  final List<AdminVideoItem> items;
  final String? nextCursor;
}

class AdminYouTubeSource {
  const AdminYouTubeSource({
    required this.id, required this.channelId, required this.channelName,
    required this.targetRegion, required this.enabled, required this.syncMode,
  });
  final String id;
  final String channelId;
  final String channelName;
  final String targetRegion;
  final bool enabled;
  final String syncMode;

  factory AdminYouTubeSource.fromJson(Map<String,dynamic> x) => AdminYouTubeSource(
    id: x['id'] as String,
    channelId: x['channelId'] as String,
    channelName: x['channelName'] as String,
    targetRegion: x['targetRegion'] as String,
    enabled: x['enabled'] as bool? ?? false,
    syncMode: x['syncMode'] as String? ?? 'manual',
  );
}

class AdminVideoCurationException implements Exception {
  const AdminVideoCurationException(this.message);
  final String message;
  @override String toString() => message;
}

/// Gateway's existing content-editor authority, never a separate Ops role.
/// Official player/rights evidence is required before an item can appear in
/// the public Video feed; mobile UI cannot bypass the review transition.
class AdminVideoCurationApi {
  AdminVideoCurationApi({required this.session, Dio? dio}) :
    _dio = dio ?? Dio(BaseOptions(
      baseUrl: requireAdminAuthBaseUrl(),
      connectTimeout: const Duration(seconds:10),
      receiveTimeout: const Duration(seconds:20),
      headers: {'Accept': 'application/json'},
    ));

  final AdminApi session;
  final Dio _dio;

  Options get _auth => Options(
    headers: {'Authorization':'Bearer ${session.currentAccessToken}'});

  AdminVideoCurationException _error(DioException e) {
    final status=e.response?.statusCode;
    final data=e.response?.data;
    final reason=data is Map ? (data['error'] ?? data['code'])?.toString() : null;
    if(status==401)return const AdminVideoCurationException('Session expired. Sign in again.');
    if(status==403)return const AdminVideoCurationException('Content-editor permission required.');
    if(status==409)return const AdminVideoCurationException('Video was changed by another editor. Refresh.');
    if(status==400||status==422)return AdminVideoCurationException(reason??'Invalid video or rights evidence.');
    return const AdminVideoCurationException('Video service unavailable. Retry.');
  }

  Future<Response<dynamic>> _request(
      Future<Response<dynamic>> Function() run) async {
    try{return await run();}
    on DioException catch(e) {
      if(e.response?.statusCode==401 &&
          await session.refreshForExternalClient()!=null) {
        try{return await run();}
        on DioException catch(retry){throw _error(retry);}
      }
      throw _error(e);
    }
  }

  Future<AdminVideoPage> list({String? provider,String? before}) async {
    final response=await _request(()=>_dio.get<dynamic>(
      '/v1/admin/video-items',options:_auth,queryParameters:{
        'limit':50,
        if(provider!=null)'provider':provider,
        if(before!=null)'before':before,
      }));
    final data=Map<String,dynamic>.from(response.data as Map);
    return AdminVideoPage(
      items:(data['items'] as List<dynamic>).map(
        (x)=>AdminVideoItem.fromJson(Map<String,dynamic>.from(x as Map)),
      ).toList(growable:false),
      nextCursor:data['nextCursor'] as String?,
    );
  }

  Future<AdminVideoItem> submit({
    required String url,required String title,required String channelName
  })async{
    final response=await _request(()=>_dio.post<dynamic>(
      '/v1/admin/video-items',options:_auth,
      data:{'url':url.trim(),'title':title.trim(),'channelName':channelName.trim()}));
    return AdminVideoItem.fromJson(Map<String,dynamic>.from(response.data as Map));
  }

  Future<AdminVideoItem> review(AdminVideoItem item,String state,{
    String? verificationReference,
  })async{
    final response=await _request(()=>_dio.patch<dynamic>(
      '/v1/admin/video-items/${Uri.encodeComponent(item.id)}/review',
      options:_auth,data:{
        'state':state,
        // Gateway strictly requires this key even for take-down.
        'verificationReference': state=='approved'?verificationReference:null,
        if(state=='pending')'expectedState':item.reviewState,
      }));
    return AdminVideoItem.fromJson(Map<String,dynamic>.from(response.data as Map));
  }

  Future<List<AdminYouTubeSource>> listYouTubeSources()async{
    final response=await _request(()=>_dio.get<dynamic>(
      '/v1/admin/video-sources',options:_auth));
    final data=Map<String,dynamic>.from(response.data as Map);
    return (data['items'] as List<dynamic>).map(
      (x)=>AdminYouTubeSource.fromJson(Map<String,dynamic>.from(x as Map)),
    ).toList(growable:false);
  }

  Future<AdminYouTubeSource> createYouTubeSource({
    required String channelId,required String channelName,
    required String targetRegion,
  })async{
    final response=await _request(()=>_dio.post<dynamic>(
      '/v1/admin/video-sources',options:_auth,
      data:{'channelId':channelId.trim(),'channelName':channelName.trim(),
        'targetRegion':targetRegion.trim().toUpperCase()}));
    return AdminYouTubeSource.fromJson(
        Map<String,dynamic>.from(response.data as Map));
  }

  Future<void> pauseSource(String id)async{
    await _request(()=>_dio.patch<dynamic>(
      '/v1/admin/video-sources/${Uri.encodeComponent(id)}/pause',
      options:_auth));
  }
}
