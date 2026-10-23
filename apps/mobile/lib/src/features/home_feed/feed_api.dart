import 'package:dio/dio.dart';
import '../videos/video_models.dart';

/// Typed Status authors preserve the legacy Masana projection without
/// misrouting human posts to Masana profiles.
class FeedPost {
  const FeedPost({required this.id, required this.authorMasanaId, required this.kind,
    this.authorName, this.authorType='masana', this.authorId, this.authorHandle,
    required this.body, required this.mediaIds, required this.publishedAt,
    required this.likeCount, required this.commentCount,
    required this.liked, required this.saved,
    this.viewerReaction, this.reactionCounts=const {}});
  final String id,authorMasanaId,kind,body,authorType;
  final String? authorName,authorId,authorHandle;
  final List<String> mediaIds;
  final DateTime publishedAt;
  final int likeCount,commentCount;
  final bool liked,saved;
  final String? viewerReaction;
  final Map<String,int> reactionCounts;
  static const reactionKinds=['like','love','care','haha','wow','sad','angry'];
  static const reactionEmoji={
    'like':'👍','love':'❤️','care':'🤗','haha':'😂','wow':'😮','sad':'😢','angry':'😠',
  };
  String? get currentReaction => viewerReaction??(liked?'like':null);
  Map<String,int> get effectiveReactionCounts =>
      reactionCounts.isNotEmpty?reactionCounts:{'like':likeCount};
  int get totalReactions =>
      effectiveReactionCounts.values.fold<int>(0,(sum,count)=>sum+count);
  static Map<String,int> _parseReactionCounts(Object? raw,int likes) {
    if(raw is! Map)return {'like':likes};
    final result=<String,int>{};
    for(final entry in raw.entries) {
      if(entry.key is String && reactionKinds.contains(entry.key) &&
          entry.value is int && (entry.value as int)>=0) {
        result[entry.key as String]=entry.value as int;
      }
    }
    return result;
  }
  bool get isHuman => authorType=='human';
  String get displayAuthor => (authorName?.trim().isNotEmpty??false)
    ? authorName!.trim() : isHuman
      ? (authorHandle==null?'Member':'@'+authorHandle!) : authorMasanaId;

  factory FeedPost.fromJson(Map<String,dynamic> json) {
    final raw=json['author'];
    final author=raw is Map?Map<String,dynamic>.from(raw):<String,dynamic>{};
    final type=author['type']??json['authorType']??'masana';
    if(type!='masana'&&type!='human')throw const FormatException('Invalid Status author type');
    final legacy=json['authorMasanaId'];
    final typed=author['id']??json['authorId'];
    if(legacy!=null&&legacy is! String||typed!=null&&typed is! String) {
      throw const FormatException('Invalid Status identity');
    }
    final id=type=='masana'
      ? ((typed??legacy) as String? ?? '') : (typed as String? ?? '');
    if(id.isEmpty)throw const FormatException('Missing Status author');
    final handle=author['handle']??json['authorHandle'];
    if(handle!=null&&(handle is! String||
        !RegExp(r'^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$').hasMatch(handle))) {
      throw const FormatException('Invalid Status handle');
    }
    final name=author['displayName']??json['authorName'];
    if(name!=null&&name is! String)throw const FormatException('Invalid Status name');
    return FeedPost(
      id:json['id'] as String,authorMasanaId:type=='masana'?id:'',
      authorType:type as String,authorId:id,authorHandle:handle as String?,
      authorName:name as String?,kind:json['kind'] as String,
      body:json['body'] as String,
      mediaIds:List<String>.from(json['media'] as List<dynamic>? ?? const []),
      publishedAt:DateTime.parse(json['publishedAt'] as String),
      likeCount:json['likeCount'] as int? ?? 0,
      commentCount:json['commentCount'] as int? ?? 0,
      liked:json['viewerLiked'] as bool? ?? false,
      saved:json['viewerSaved'] as bool? ?? false,
      viewerReaction: reactionKinds.contains(json['viewerReaction'])
        ? json['viewerReaction'] as String : null,
      reactionCounts:_parseReactionCounts(json['reactionCounts'],json['likeCount'] as int? ?? 0));
  }
  FeedPost withReaction(String? kind) {
    if(kind!=null&&!reactionKinds.contains(kind)) {
      throw ArgumentError.value(kind,'kind','Unsupported reaction');
    }
    final counts=Map<String,int>.from(effectiveReactionCounts);
    final previous=currentReaction;
    if(previous==kind)return this;
    if(previous!=null && (counts[previous]??0)>0) {
      counts[previous]=counts[previous]!-1;
    }
    if(kind!=null)counts[kind]=(counts[kind]??0)+1;
    return FeedPost(id:id,authorMasanaId:authorMasanaId,kind:this.kind,
      authorName:authorName,authorType:authorType,authorId:authorId,
      authorHandle:authorHandle,body:body,mediaIds:mediaIds,
      publishedAt:publishedAt,likeCount:counts['like']??0,
      commentCount:commentCount,liked:kind=='like',saved:saved,
      viewerReaction:kind,reactionCounts:counts);
  }
  FeedPost withAction({bool? liked,bool? saved}) {
    final result=liked==null||liked==this.liked?this:
        withReaction(liked?'like':null);
    return FeedPost(id:result.id,authorMasanaId:result.authorMasanaId,
      kind:result.kind,authorName:result.authorName,authorType:result.authorType,
      authorId:result.authorId,authorHandle:result.authorHandle,
      body:result.body,mediaIds:result.mediaIds,publishedAt:result.publishedAt,
      likeCount:result.likeCount,commentCount:result.commentCount,
      liked:result.liked,saved:saved??result.saved,
      viewerReaction:result.viewerReaction,reactionCounts:result.reactionCounts);
  }
}
class FeedPage {
  const FeedPage(this.items,this.nextCursor);
  final List<FeedPost> items;
  final String? nextCursor;
  factory FeedPage.fromJson(Map<String,dynamic> body)=>FeedPage(
    (body['items'] as List<dynamic>? ?? const []).map((p)=>FeedPost.fromJson(Map<String,dynamic>.from(p as Map))).toList(),
    body['nextCursor'] as String?);
}
class FeedComment {
  const FeedComment({required this.id,required this.body,required this.state,
    required this.createdAt,this.parentId,this.authorType,this.authorId,
    this.authorName,this.authorHandle});
  final String id,body,state;
  final String? parentId,authorType,authorId,authorName,authorHandle;
  final DateTime createdAt;
  factory FeedComment.fromJson(Map<String,dynamic> json) {
    final raw=json['author'];
    final author=raw is Map?Map<String,dynamic>.from(raw):<String,dynamic>{};
    final type=author['type']??json['authorType'];
    if(type!=null&&type!='human'&&type!='masana') {
      throw const FormatException('Invalid comment author type');
    }
    final handle=author['handle']??json['authorHandle'];
    if(handle!=null&&(handle is! String||
        !RegExp(r'^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$').hasMatch(handle))) {
      throw const FormatException('Invalid comment author handle');
    }
    return FeedComment(
      id:json['id'] as String,body:json['body'] as String,
      state:json['state'] as String,
      createdAt:DateTime.parse(json['createdAt'] as String),
      parentId:json['parentId'] as String?,
      authorType:type as String?,
      authorId:(author['id']??json['authorId']) as String?,
      authorName:(author['displayName']??json['authorName']) as String?,
      authorHandle:handle as String?);
  }
}
abstract class FeedApi {
  Future<FeedPage> list({required String mode,String? cursor});
  Future<void> like(String postId,bool enabled);
  Future<void> save(String postId,bool enabled);
  Future<void> comment(String postId,String body,String idempotencyKey);
  Future<List<FeedComment>> comments(String postId);
}
abstract class HumanStatusPublisher {
  /// Public text only; the Gateway derives human owner from the current session.
  Future<FeedPost> publishHumanText(String body,String idempotencyKey);
}
abstract class ReactionFeedApi {
  /// One authoritative reaction per signed-in user and post; null clears it.
  Future<void> react(String postId,String? kind);
}
/// Uses the app's existing Dio (base URL, TLS policies) rather than a second network stack.
class DioFeedApi implements FeedApi, ReactionFeedApi, HumanStatusPublisher, SavedStatusLibraryApi {
  DioFeedApi(this._dio,this._getAccessToken);
  final Dio _dio;
  final Future<String?> Function() _getAccessToken;
  Future<Options> _options({String? key,bool authRequired=false}) async {
    final token=await _getAccessToken();
    if(authRequired&&(token==null||token.isEmpty))throw StateError('Sign in required');
    return Options(headers:{if(token!=null&&token.isNotEmpty)'Authorization':'Bearer $token',
      if(key!=null)'Idempotency-Key':key});
  }
  @override
  Future<FeedPage> list({required String mode,String? cursor}) async {
    final result=await _dio.get<Map<String,dynamic>>('/v1/feed',
      queryParameters:{'mode':mode,if(cursor!=null)'cursor':cursor},options:await _options());
    return FeedPage.fromJson(result.data??const {});
  }
  @override
  Future<void> like(String id,bool enabled) async {
    await _dio.put<void>('/v1/posts/${Uri.encodeComponent(id)}/like',
      data:{'enabled':enabled},options:await _options(authRequired:true));
  }
  @override
  Future<void> react(String id,String? kind) async {
    if(kind!=null&&!FeedPost.reactionKinds.contains(kind)) {
      throw ArgumentError.value(kind,'kind','Unsupported reaction');
    }
    await _dio.put<void>('/v1/posts/' + Uri.encodeComponent(id) + '/reaction',
      data:{'kind':kind},options:await _options(authRequired:true));
  }
  @override
  Future<FeedPost> publishHumanText(String body,String idempotencyKey) async {
    final r=await _dio.post<Map<String,dynamic>>('/v1/posts/human',
      data:{'body':body,'audience':'public'},
      options:await _options(key:idempotencyKey,authRequired:true));
    return FeedPost.fromJson(r.data??const <String,dynamic>{});
  }
  @override
  Future<void> save(String id,bool enabled) async {
    await _dio.put<void>('/v1/posts/${Uri.encodeComponent(id)}/save',
      data:{'enabled':enabled},options:await _options(authRequired:true));
  }
  @override
  Future<void> comment(String id,String body,String key) async {
    await _dio.post<void>('/v1/posts/${Uri.encodeComponent(id)}/comments',
      data:{'body':body},options:await _options(key:key,authRequired:true));
  }
  @override
  Future<List<FeedComment>> comments(String id) async {
    final result=await _dio.get<List<dynamic>>('/v1/posts/${Uri.encodeComponent(id)}/comments',
      options:await _options());
    return (result.data??const []).map((v)=>FeedComment.fromJson(Map<String,dynamic>.from(v as Map))).toList();
  }

  @override
  Future<SavedStatusPage> saved({String? cursor}) async {
    final result = await _dio.get<Map<String, dynamic>>(
      '/v1/saved',
      queryParameters: {if (cursor != null) 'cursor': cursor},
      options: await _options(authRequired: true),
    );
    return SavedStatusPage.fromJson(result.data ?? const {});
  }

  @override
  Future<void> removeSaved(SavedStatusItem item) async {
    if (item.isPost) {
      await save(item.id, false);
    } else if (item.video != null) {
      await _dio.put<void>(
        '/v1/videos/${Uri.encodeComponent(item.id)}/save',
        data: {'enabled': false},
        options: await _options(authRequired: true),
      );
    } else {
      throw const FormatException('Unsupported saved item');
    }
  }

  /// Reuse J06's authenticated Dio; never construct a second transport or session.
  Future<FeedPost> detail(String id) async {
    final r=await _dio.get<Map<String,dynamic>>('/v1/posts/${Uri.encodeComponent(id)}',
      options:await _options());
    return FeedPost.fromJson(r.data??const <String,dynamic>{});
  }
  Future<List<FeedComment>> thread(String id,String sort) async {
    final r=await _dio.get<List<dynamic>>('/v1/posts/${Uri.encodeComponent(id)}/comments',
      queryParameters:{'sort':sort},options:await _options());
    return (r.data??const []).map((v)=>FeedComment.fromJson(Map<String,dynamic>.from(v as Map))).toList();
  }
  Future<void> sendThreadComment(String id,String body,String key,String? parentId) async {
    await _dio.post<void>('/v1/posts/${Uri.encodeComponent(id)}/comments',
      data:{'body':body,if(parentId!=null)'parentId':parentId},
      options:await _options(key:key,authRequired:true));
  }

}
/// The existing /v1/saved library combines tenant-authorized Status posts
/// and currently approved provider videos. A missing/invalid projection fails
/// closed instead of displaying fabricated or stale media.
class SavedStatusItem {
  const SavedStatusItem({
    required this.id,
    required this.savedAt,
    this.post,
    this.video,
  });
  final String id;
  final DateTime savedAt;
  final FeedPost? post;
  final ExternalVideo? video;
  bool get isPost => post != null;

  factory SavedStatusItem.fromJson(Map<String, dynamic> data) {
    final kind = data['kind'];
    final id = data['id'];
    final savedAt = data['savedAt'];
    if (id is! String || id.isEmpty || savedAt is! String) {
      throw const FormatException('Invalid saved item');
    }
    final at = DateTime.tryParse(savedAt);
    if (at == null) throw const FormatException('Invalid saved timestamp');
    if (kind == 'post' && data['post'] is Map) {
      final post = FeedPost.fromJson(
        Map<String, dynamic>.from(data['post'] as Map),
      );
      if (post.id != id) throw const FormatException('Mismatched saved post');
      return SavedStatusItem(id: id, savedAt: at, post: post);
    }
    if (kind == 'video' && data['video'] is Map) {
      final video = ExternalVideo.fromJson(
        Map<String, dynamic>.from(data['video'] as Map),
      );
      if (video.id != id) throw const FormatException('Mismatched saved video');
      return SavedStatusItem(id: id, savedAt: at, video: video);
    }
    throw const FormatException('Unsupported saved item');
  }
}

class SavedStatusPage {
  const SavedStatusPage(this.items, this.nextCursor);
  final List<SavedStatusItem> items;
  final String? nextCursor;
  factory SavedStatusPage.fromJson(Map<String, dynamic> data) {
    final raw = data['items'];
    final next = data['nextCursor'];
    if (raw is! List || (next != null && (next is! String || next.isEmpty))) {
      throw const FormatException('Invalid saved collection');
    }
    return SavedStatusPage(
      raw
          .map(
            (item) => SavedStatusItem.fromJson(
              Map<String, dynamic>.from(item as Map),
            ),
          )
          .toList(growable: false),
      next as String?,
    );
  }
}

abstract class SavedStatusLibraryApi {
  Future<SavedStatusPage> saved({String? cursor});
  Future<void> removeSaved(SavedStatusItem item);
}
