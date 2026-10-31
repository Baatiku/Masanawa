import 'package:dio/dio.dart';

/// Typed Status authors preserve the legacy Masana projection without
/// misrouting human posts to Masana profiles.
class OfficialPostSource {
  const OfficialPostSource(this.platform, this.url, this.originalPublishedAt, this.revision);
  final String platform;
  final Uri url;
  final DateTime originalPublishedAt;
  final int revision;
  static OfficialPostSource? parse(Object? raw) {
    if (raw is! Map) return null;
    final platform = raw['platform'];
    final url = raw['url'] is String ? Uri.tryParse(raw['url'] as String) : null;
    final at = raw['originalPublishedAt'] is String ? DateTime.tryParse(raw['originalPublishedAt'] as String) : null;
    final revision = raw['revision'];
    if (url == null || url.scheme != 'https' || url.userInfo.isNotEmpty || url.hasFragment || url.hasPort || at == null || revision is! int || revision < 1) return null;
    final valid = platform == 'x'
      ? url.host == 'x.com' && RegExp(r'^/[A-Za-z0-9_]{1,15}/status/[0-9]+$').hasMatch(url.path)
      : platform == 'facebook' && ['facebook.com','www.facebook.com'].contains(url.host) &&
        (RegExp(r'^/[^/]+/posts/[^/]+/?$').hasMatch(url.path) || ['/permalink.php','/story.php'].contains(url.path) && RegExp(r'^[0-9]{1,30}$').hasMatch(url.queryParameters['story_fbid']??'') && RegExp(r'^[0-9]{1,30}$').hasMatch(url.queryParameters['id']??'') || ['/photo.php','/photo','/photo/'].contains(url.path) && RegExp(r'^[0-9]{1,30}$').hasMatch(url.queryParameters['fbid']??''));
    return valid ? OfficialPostSource(platform as String, url, at, revision) : null;
  }
}

/// Newsroom attribution is not a Masana identity or platform endorsement.
class NewsPublisher {
 const NewsPublisher({required this.id,required this.name,required this.title,
  required this.summary,required this.original,required this.verified,this.logoUrl});
 final String id,name,title,summary;
 final Uri original;
 final bool verified;
 final Uri? logoUrl;
 static NewsPublisher? parse(Object? raw){
  if(raw is! Map)return null;
  final id=raw['id'],name=raw['name'],title=raw['title'],
    summary=raw['summary'],url=raw['url'];
  if(id is! String||!RegExp(r'^[a-z][a-z0-9-]{1,39}$').hasMatch(id)||
    name is! String||name.isEmpty||title is! String||summary is! String||url is! String)return null;
  final original=Uri.tryParse(url);
  if(original==null||original.scheme!='https'||original.host.isEmpty||
    original.userInfo.isNotEmpty||original.hasPort)return null;
  final logo=raw['logoUrl'] is String?Uri.tryParse(raw['logoUrl'] as String):null;
  return NewsPublisher(id:id,name:name,title:title,summary:summary,original:original,
   verified:raw['verified']==true,
   logoUrl:logo!=null&&logo.scheme=='https'&&logo.userInfo.isEmpty&&!logo.hasPort?logo:null);
 }
}

class FeedPost {
  const FeedPost({
    required this.id,
    required this.authorMasanaId,
    required this.kind,
    this.authorName,
    this.source,
    this.news,
    this.authorType = 'masana',
    this.authorId,
    this.authorHandle,
    required this.body,
    required this.mediaIds,
    required this.publishedAt,
    required this.likeCount,
    required this.commentCount,
    required this.liked,
    required this.saved,
    this.viewerReaction,
    this.reactionCounts = const {},
    this.verifiedViewCount,
    this.promotionDeliveredViews,
    this.promotionActive = false,
    this.shareEarnEligible = false,
    this.boostEligible = false,
  });
  final OfficialPostSource? source;
  final NewsPublisher? news;
  bool get isNews => news!=null && authorType=='publisher';
  final String id, authorMasanaId, kind, body, authorType;
  final String? authorName, authorId, authorHandle;
  final List<String> mediaIds;
  final DateTime publishedAt;
  final int likeCount, commentCount;
  final bool liked, saved;
  final String? viewerReaction;
  final Map<String, int> reactionCounts;
  /// Authoritative completed qualified exposures, never a local impression count.
  final int? verifiedViewCount, promotionDeliveredViews;
  final bool promotionActive, shareEarnEligible, boostEligible;
  static const reactionKinds = [
    'like',
    'love',
    'care',
    'haha',
    'wow',
    'sad',
    'angry',
  ];
  static const reactionEmoji = {
    'like': '👍',
    'love': '❤️',
    'care': '🤗',
    'haha': '😂',
    'wow': '😮',
    'sad': '😢',
    'angry': '😠',
  };
  String? get currentReaction => viewerReaction ?? (liked ? 'like' : null);
  Map<String, int> get effectiveReactionCounts =>
      reactionCounts.isNotEmpty ? reactionCounts : {'like': likeCount};
  int get totalReactions =>
      effectiveReactionCounts.values.fold<int>(0, (sum, count) => sum + count);
  static Map<String, int> _parseReactionCounts(Object? raw, int likes) {
    if (raw is! Map) return {'like': likes};
    final result = <String, int>{};
    for (final entry in raw.entries) {
      if (entry.key is String &&
          reactionKinds.contains(entry.key) &&
          entry.value is int &&
          (entry.value as int) >= 0) {
        result[entry.key as String] = entry.value as int;
      }
    }
    return result;
  }

  bool get isHuman => authorType == 'human';
  String get displayAuthor => (authorName?.trim().isNotEmpty ?? false)
      ? authorName!.trim()
      : isHuman
      ? (authorHandle == null ? 'Member' : '@' + authorHandle!)
      : authorMasanaId;

  factory FeedPost.fromJson(Map<String, dynamic> json) {
    final raw = json['author'];
    final author = raw is Map
        ? Map<String, dynamic>.from(raw)
        : <String, dynamic>{};
    final type = author['type'] ?? json['authorType'] ?? 'masana';
    if (type != 'masana' && type != 'human' && type != 'publisher')
      throw const FormatException('Invalid Status author type');
    final legacy = json['authorMasanaId'];
    final typed = author['id'] ?? json['authorId'];
    if (legacy != null && legacy is! String ||
        typed != null && typed is! String) {
      throw const FormatException('Invalid Status identity');
    }
    final id = type == 'masana'
        ? ((typed ?? legacy) as String? ?? '')
        : (typed as String? ?? '');
    if (id.isEmpty) throw const FormatException('Missing Status author');
    final handle = author['handle'] ?? json['authorHandle'];
    if (handle != null &&
        (handle is! String ||
            !RegExp(r'^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$').hasMatch(handle))) {
      throw const FormatException('Invalid Status handle');
    }
    final name = author['displayName'] ?? json['authorName'];
    if (name != null && name is! String)
      throw const FormatException('Invalid Status name');
    return FeedPost(
      id: json['id'] as String,
      source: OfficialPostSource.parse(json['source']),
      news: NewsPublisher.parse(json['news']),
      authorMasanaId: type == 'masana' ? id : '',
      authorType: type as String,
      authorId: id,
      authorHandle: handle as String?,
      authorName: name as String?,
      kind: json['kind'] as String,
      body: json['body'] as String,
      mediaIds: List<String>.from(json['media'] as List<dynamic>? ?? const []),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      likeCount: json['likeCount'] as int? ?? 0,
      commentCount: json['commentCount'] as int? ?? 0,
      liked: json['viewerLiked'] as bool? ?? false,
      saved: json['viewerSaved'] as bool? ?? false,
      viewerReaction: reactionKinds.contains(json['viewerReaction'])
          ? json['viewerReaction'] as String
          : null,
      reactionCounts: _parseReactionCounts(
        json['reactionCounts'],
        json['likeCount'] as int? ?? 0,
      ),
      verifiedViewCount: json['verifiedViewCount'] is int &&
          (json['verifiedViewCount'] as int) >= 0
          ? json['verifiedViewCount'] as int : null,
      promotionDeliveredViews: json['promotionDeliveredViews'] is int &&
          (json['promotionDeliveredViews'] as int) >= 0
          ? json['promotionDeliveredViews'] as int : null,
      promotionActive: json['promotionActive'] == true,
      shareEarnEligible: json['shareEarnEligible'] == true,
      boostEligible: json['boostEligible'] == true,
    );
  }
  FeedPost withReaction(String? kind) {
    if (kind != null && !reactionKinds.contains(kind)) {
      throw ArgumentError.value(kind, 'kind', 'Unsupported reaction');
    }
    final counts = Map<String, int>.from(effectiveReactionCounts);
    final previous = currentReaction;
    if (previous == kind) return this;
    if (previous != null && (counts[previous] ?? 0) > 0) {
      counts[previous] = counts[previous]! - 1;
    }
    if (kind != null) counts[kind] = (counts[kind] ?? 0) + 1;
    return FeedPost(
      id: id,
      source: source,
      news: news,
      authorMasanaId: authorMasanaId,
      kind: this.kind,
      authorName: authorName,
      authorType: authorType,
      authorId: authorId,
      authorHandle: authorHandle,
      body: body,
      mediaIds: mediaIds,
      publishedAt: publishedAt,
      likeCount: counts['like'] ?? 0,
      commentCount: commentCount,
      liked: kind == 'like',
      saved: saved,
      viewerReaction: kind,
      reactionCounts: counts,
      verifiedViewCount: verifiedViewCount,
      promotionDeliveredViews: promotionDeliveredViews,
      promotionActive: promotionActive,
      shareEarnEligible: shareEarnEligible,
      boostEligible: boostEligible,
    );
  }

  FeedPost withAction({bool? liked, bool? saved}) {
    final result = liked == null || liked == this.liked
        ? this
        : withReaction(liked ? 'like' : null);
    return FeedPost(
      id: result.id,
      source: result.source,
      news: result.news,
      authorMasanaId: result.authorMasanaId,
      kind: result.kind,
      authorName: result.authorName,
      authorType: result.authorType,
      authorId: result.authorId,
      authorHandle: result.authorHandle,
      body: result.body,
      mediaIds: result.mediaIds,
      publishedAt: result.publishedAt,
      likeCount: result.likeCount,
      commentCount: result.commentCount,
      liked: result.liked,
      saved: saved ?? result.saved,
      viewerReaction: result.viewerReaction,
      reactionCounts: result.reactionCounts,
      verifiedViewCount: result.verifiedViewCount,
      promotionDeliveredViews: result.promotionDeliveredViews,
      promotionActive: result.promotionActive,
      shareEarnEligible: result.shareEarnEligible,
      boostEligible: result.boostEligible,
    );
  }
}

class FeedPage {
  const FeedPage(this.items, this.nextCursor);
  final List<FeedPost> items;
  final String? nextCursor;
  factory FeedPage.fromJson(Map<String, dynamic> body) => FeedPage(
    (body['items'] as List<dynamic>? ?? const [])
        .map((p) => FeedPost.fromJson(Map<String, dynamic>.from(p as Map)))
        .toList(),
    body['nextCursor'] as String?,
  );
}

class FeedComment {
  const FeedComment({
    required this.id,
    required this.body,
    required this.state,
    required this.createdAt,
    this.parentId,
    this.authorType,
    this.authorId,
    this.authorName,
    this.authorHandle,
    this.revision = 1,
    this.editedAt,
    this.replyCount = 0,
    this.viewerReaction,
    this.reactionCounts = const {},
  });
  final String id, body, state;
  final String? parentId, authorType, authorId, authorName, authorHandle;
  final DateTime createdAt;
  final int revision, replyCount;
  final DateTime? editedAt;
  final String? viewerReaction;
  final Map<String,int> reactionCounts;
  int get totalReactions => reactionCounts.values.fold(0,(sum,n)=>sum+n);
  bool ownedBy(String account) => authorType=='human'&&authorId==account;
  factory FeedComment.fromJson(Map<String, dynamic> json) {
    final raw = json['author'];
    final author = raw is Map
        ? Map<String, dynamic>.from(raw)
        : <String, dynamic>{};
    final type = author['type'] ?? json['authorType'];
    if (type != null && type != 'human' && type != 'masana') {
      throw const FormatException('Invalid comment author type');
    }
    final handle = author['handle'] ?? json['authorHandle'];
    if (handle != null &&
        (handle is! String ||
            !RegExp(r'^[A-Za-z0-9_][A-Za-z0-9_.-]{0,63}$').hasMatch(handle))) {
      throw const FormatException('Invalid comment author handle');
    }
    return FeedComment(
      id: json['id'] as String,
      body: json['body'] as String,
      state: json['state'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      parentId: json['parentId'] as String?,
      authorType: type as String?,
      authorId: (author['id'] ?? json['authorId']) as String?,
      authorName: (author['displayName'] ?? json['authorName']) as String?,
      authorHandle: handle as String?,
      revision: json['revision'] is int ? json['revision'] as int : 1,
      editedAt: json['editedAt'] is String ? DateTime.tryParse(json['editedAt'] as String) : null,
      replyCount: json['replyCount'] is int ? json['replyCount'] as int : 0,
      viewerReaction: FeedPost.reactionKinds.contains(json['viewerReaction'])
          ? json['viewerReaction'] as String : null,
      reactionCounts: FeedPost._parseReactionCounts(json['reactionCounts'],0),
    );
  }
}

abstract class FeedApi {
  Future<FeedPage> list({required String mode, String? cursor});
  Future<void> like(String postId, bool enabled);
  Future<void> save(String postId, bool enabled);
  Future<void> comment(String postId, String body, String idempotencyKey);
  Future<List<FeedComment>> comments(String postId);
}

abstract class NewsFeedApi {
 Future<FeedPage> newsList({String? cursor,String? query,String? publisher});
 Future<List<NewsPublisherChoice>> newsPublishers();
}
class NewsPublisherChoice {
 const NewsPublisherChoice(this.id,this.name);
 final String id,name;
}
abstract class FeedSafetyApi {
  Future<void> hidePost(String postId, bool hidden, bool Function() isCurrent);
  Future<String> reportPost(String postId, String reason, bool Function() isCurrent);
}

abstract class ReactionFeedApi {
  /// One authoritative reaction per signed-in user and post; null clears it.
  Future<void> react(String postId, String? kind);
}

/// Search is an opt-in transport extension. Existing stubbed/author feeds keep
/// their unmodified list behavior; the server searches ALL visible older posts.
abstract class SearchFeedApi {
  Future<FeedPage> searchPosts({
    required String mode,
    required String query,
    String? cursor,
  });
}

/// Optional transport extension: combinations are applied by SQL *before* pagination.
abstract class FilteredFeedApi {
  Future<FeedPage> filteredPosts({required String mode,String? query,String? cursor,
    String? source,String? authorMasanaId,DateTime? from,DateTime? to});
}

abstract class CommentConversationApi {
  Future<List<FeedComment>> threadPage(String id,String sort,
    {String? before,String? scope,String? parentId});
  Future<void> reactComment(String id,String? kind);
  Future<void> editComment(String id,String body,int revision);
  Future<void> removeComment(String id);
  Future<void> reportComment(String id,String reason);
}

/// Uses the app's existing Dio (base URL, TLS policies) rather than a second network stack.
class DioFeedApi
    implements FeedApi, SearchFeedApi, FilteredFeedApi, NewsFeedApi, ReactionFeedApi,
      CommentConversationApi, SavedStatusLibraryApi, FeedSafetyApi {
  DioFeedApi(this._dio, this._getAccessToken);
  final Dio _dio;
  final Future<String?> Function() _getAccessToken;
  Future<Options> _options({String? key, bool authRequired = false}) async {
    final token = await _getAccessToken();
    if (authRequired && (token == null || token.isEmpty))
      throw StateError('Sign in required');
    return Options(
      headers: {
        if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
        if (key != null) 'Idempotency-Key': key,
      },
    );
  }

  @override
  Future<void> hidePost(String postId, bool hidden, bool Function() isCurrent) async {
    final options = await _options(authRequired: true);
    if (!isCurrent()) throw StateError('Account changed');
    options.followRedirects = false;
    options.extra={...options.extra??{},'masanawaAccountGuard':isCurrent};
    final result = await _dio.put<Map<String,dynamic>>(
      '/v1/posts/${Uri.encodeComponent(postId)}/hidden',
      data: {'hidden': hidden}, options: options);
    if (!isCurrent()) throw StateError('Account changed');
    if (result.data?['hidden'] != hidden) throw const FormatException('Unverified hide');
  }

  @override
  Future<String> reportPost(String postId, String reason, bool Function() isCurrent) async {
    final options = await _options(authRequired: true);
    if (!isCurrent()) throw StateError('Account changed');
    options.followRedirects = false;
    options.extra={...options.extra??{},'masanawaAccountGuard':isCurrent};
    final result = await _dio.post<Map<String,dynamic>>(
      '/v1/posts/${Uri.encodeComponent(postId)}/reports',
      data: {'reason': reason}, options: options);
    if (!isCurrent()) throw StateError('Account changed');
    final id = result.data?['id'], state = result.data?['state'];
    if (id is! String || !RegExp(r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-8][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$').hasMatch(id) ||
        !['open','reviewed','dismissed'].contains(state)) {
      throw const FormatException('Unverified report');
    }
    return id;
  }

  @override
  Future<FeedPage> newsList({String? cursor,String? query,String? publisher}) async {
   final data=await _dio.get<Map<String,dynamic>>('/v1/news',
    queryParameters:{if(cursor!=null)'cursor':cursor,if(query!=null)'search':query,
      if(publisher!=null)'publisher':publisher},options:await _options(authRequired:true));
   return FeedPage.fromJson(data.data??const {});
  }
  @override
  Future<List<NewsPublisherChoice>> newsPublishers() async {
   final data=await _dio.get<List<dynamic>>('/v1/news/publishers',options:await _options(authRequired:true));
   return [for(final raw in data.data??const [])if(raw is Map&&raw['id'] is String&&raw['name'] is String)
    NewsPublisherChoice(raw['id'] as String,raw['name'] as String)];
  }
  @override
  Future<FeedPage> list({required String mode, String? cursor}) async {
    final result = await _dio.get<Map<String, dynamic>>(
      '/v1/feed',
      queryParameters: {'mode': mode, if (cursor != null) 'cursor': cursor},
      options: await _options(),
    );
    return FeedPage.fromJson(result.data ?? const {});
  }

  @override
  Future<FeedPage> searchPosts({
    required String mode,
    required String query,
    String? cursor,
  }) async {
    final result = await _dio.get<Map<String, dynamic>>(
      '/v1/feed',
      queryParameters: {
        'mode': mode,
        'search': query,
        if (cursor != null) 'cursor': cursor,
      },
      options: await _options(authRequired: true),
    );
    return FeedPage.fromJson(result.data ?? const {});
  }

  @override
  Future<FeedPage> filteredPosts({required String mode,String? query,String? cursor,
    String? source,String? authorMasanaId,DateTime? from,DateTime? to}) async {
    final r=await _dio.get<Map<String,dynamic>>('/v1/feed',
      queryParameters:{'mode':mode,if(query!=null)'search':query,
        if(cursor!=null)'cursor':cursor,if(source!=null)'source':source,
        if(authorMasanaId!=null)'authorMasanaId':authorMasanaId,
        if(from!=null)'from':'${from.year.toString().padLeft(4,'0')}-${from.month.toString().padLeft(2,'0')}-${from.day.toString().padLeft(2,'0')}',
        if(to!=null)'to':'${to.year.toString().padLeft(4,'0')}-${to.month.toString().padLeft(2,'0')}-${to.day.toString().padLeft(2,'0')}'},
      options:await _options());
    return FeedPage.fromJson(r.data??const {});
  }

  @override
  Future<void> like(String id, bool enabled) async {
    await _dio.put<void>(
      '/v1/posts/${Uri.encodeComponent(id)}/like',
      data: {'enabled': enabled},
      options: await _options(authRequired: true),
    );
  }

  @override
  Future<void> react(String id, String? kind) async {
    if (kind != null && !FeedPost.reactionKinds.contains(kind)) {
      throw ArgumentError.value(kind, 'kind', 'Unsupported reaction');
    }
    await _dio.put<void>(
      '/v1/posts/' + Uri.encodeComponent(id) + '/reaction',
      data: {'kind': kind},
      options: await _options(authRequired: true),
    );
  }

  @override
  Future<void> save(String id, bool enabled) async {
    await _dio.put<void>(
      '/v1/posts/${Uri.encodeComponent(id)}/save',
      data: {'enabled': enabled},
      options: await _options(authRequired: true),
    );
  }

  @override
  Future<void> comment(String id, String body, String key) async {
    await _dio.post<void>(
      '/v1/posts/${Uri.encodeComponent(id)}/comments',
      data: {'body': body},
      options: await _options(key: key, authRequired: true),
    );
  }

  @override
  Future<List<FeedComment>> comments(String id) async {
    final result = await _dio.get<List<dynamic>>(
      '/v1/posts/${Uri.encodeComponent(id)}/comments',
      options: await _options(),
    );
    return (result.data ?? const [])
        .map((v) => FeedComment.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList();
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
  Future<void> removeSaved(SavedStatusItem item) => save(item.id, false);

  /// Reuse J06's authenticated Dio; never construct a second transport or session.
  Future<FeedPost> detail(String id) async {
    final r = await _dio.get<Map<String, dynamic>>(
      '/v1/posts/${Uri.encodeComponent(id)}',
      options: await _options(),
    );
    return FeedPost.fromJson(r.data ?? const <String, dynamic>{});
  }

  /// Server pages are ordered by the requested sort, with the last comment ID
  /// as the continuation token. Never use post IDs, timestamps or local offsets.
  Future<List<FeedComment>> threadPage(
    String id,
    String sort, {
    String? before,
    String? scope,
    String? parentId,
  }) async {
    if (sort != 'newest' && sort != 'oldest')
      throw ArgumentError.value(sort, 'sort');
    final r = await _dio.get<List<dynamic>>(
      '/v1/posts/${Uri.encodeComponent(id)}/comments',
      queryParameters: {'sort': sort, if (before != null) 'before': before,
        if(scope!=null)'scope':scope,if(parentId!=null)'parentId':parentId},
      options: await _options(),
    );
    return (r.data ?? const [])
        .map((v) => FeedComment.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList();
  }

  Future<List<FeedComment>> thread(String id, String sort) =>
      threadPage(id, sort);
  Future<void> sendThreadComment(
    String id,
    String body,
    String key,
    String? parentId,
  ) async {
    await _dio.post<void>(
      '/v1/posts/${Uri.encodeComponent(id)}/comments',
      data: {'body': body, if (parentId != null) 'parentId': parentId},
      options: await _options(key: key, authRequired: true),
    );
  }

  @override
  Future<void> reactComment(String id,String? kind) async {
    if(kind!=null&&!FeedPost.reactionKinds.contains(kind))throw ArgumentError.value(kind);
    await _dio.put<void>('/v1/comments/${Uri.encodeComponent(id)}/reaction',
      data:{'kind':kind},options:await _options(authRequired:true));
  }
  @override
  Future<void> editComment(String id,String body,int revision) async {
    await _dio.patch<void>('/v1/comments/${Uri.encodeComponent(id)}',
      data:{'body':body,'revision':revision},options:await _options(authRequired:true));
  }
  @override
  Future<void> removeComment(String id) async {
    await _dio.delete<void>('/v1/comments/${Uri.encodeComponent(id)}',
      options:await _options(authRequired:true));
  }
  @override
  Future<void> reportComment(String id,String reason) async {
    await _dio.post<void>('/v1/comments/${Uri.encodeComponent(id)}/reports',
      data:{'reason':reason},options:await _options(authRequired:true));
  }
}

/// Account-scoped saved platform Masana posts. Retired bookmarks never mount media.
class SavedStatusItem {
  const SavedStatusItem({required this.id, required this.savedAt, this.post});
  final String id;
  final DateTime savedAt;
  final FeedPost? post;
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
          .where((item) {
            if(item is! Map)return true;
            if(item['kind']=='video')return false;
            final post=item['post'];
            if(post is! Map)return true;
            final author=post['author'];
            // Backward-incompatible retired/free human bookmarks must never
            // bypass the server-funded active-promotion projection.
            return author is! Map || author['type']!='human' ||
              post['promotionActive']==true;
          })
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
