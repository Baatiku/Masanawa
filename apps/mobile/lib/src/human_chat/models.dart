typedef HumanJson = Map<String, dynamic>;

class HumanAttachment {
  HumanAttachment(this.json);
  final HumanJson json;
  String get id => json['id'] as String;
  String get kind => json['kind'] as String;
  String get name => json['name'] as String;
  String get mimeType => json['mimeType'] as String;
}

class HumanMessage {
  HumanMessage(this.json);
  final HumanJson json;
  String get id => json['id'] as String;
  String get text => json['text'] as String? ?? '';
  bool get mine => json['mine'] == true;
  bool get deleted => json['deleted'] == true;
  String get createdAt => json['createdAt'] as String;
  List<HumanAttachment> get attachments => (json['attachments'] as List? ?? [])
      .map((e) => HumanAttachment(Map<String, dynamic>.from(e as Map)))
      .toList();
}

class HumanConversation {
  HumanConversation(this.json);
  final HumanJson json;
  String get id => json['id'] as String;
  HumanJson get peer => Map<String, dynamic>.from(json['peer'] as Map);
  String get name => peer['displayName'] as String;
  String get handle => peer['handle'] as String;
  String get state => json['state'] as String;
  DateTime get updatedAt => DateTime.parse(json['updatedAt'] as String);
  int get unreadCount => (json['unreadCount'] as num?)?.toInt() ?? 0;
  bool get pinned => json['pinned'] == true;
  bool get archived => json['archived'] == true;
  bool get muted => json['muted'] == true;
  HumanMessage? get lastMessage => json['lastMessage'] == null
      ? null
      : HumanMessage(Map<String, dynamic>.from(json['lastMessage'] as Map));
  bool get initiator => json['initiator'] == true;
}
