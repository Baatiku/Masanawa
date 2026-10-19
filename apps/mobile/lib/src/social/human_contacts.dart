import '../core/network/api_client.dart';

class HumanContact {
  const HumanContact({
    required this.handle,
    required this.displayName,
    this.bio = '',
    this.avatarUrl,
  });
  final String handle, displayName, bio;
  final String? avatarUrl;
  factory HumanContact.fromJson(Map<String, dynamic> json) {
    final handle = json['handle'];
    final name = json['displayName'];
    if (handle is! String ||
        !RegExp(r'^[a-z0-9_][a-z0-9_.-]{1,39}$').hasMatch(handle) ||
        name is! String ||
        name.trim().isEmpty) {
      throw const FormatException('Invalid public contact');
    }
    return HumanContact(
      handle: handle,
      displayName: name,
      bio: json['bio'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String?,
    );
  }
}

class HumanContactPage {
  const HumanContactPage({required this.items, this.nextCursor});
  final List<HumanContact> items;
  final String? nextCursor;
}

abstract interface class HumanContactsTransport {
  Future<HumanContactPage> load({String query = '', String? after});
}

class GatewayHumanContactsTransport implements HumanContactsTransport {
  GatewayHumanContactsTransport(this.api);
  final ApiClient api;
  @override
  Future<HumanContactPage> load({String query = '', String? after}) async {
    final response = await api.dio.get<dynamic>(
      '/v1/profiles/contacts',
      queryParameters: {
        if (query.isNotEmpty) 'q': query,
        if (after != null) 'after': after,
      },
    );
    final data = response.data;
    if (data is! Map ||
        data['items'] is! List ||
        (data['nextCursor'] != null && data['nextCursor'] is! String)) {
      throw const FormatException('Invalid contact page');
    }
    return HumanContactPage(
      items: List.unmodifiable([
        for (final raw in data['items'] as List)
          if (raw is Map)
            HumanContact.fromJson(raw.cast<String, dynamic>())
          else
            throw const FormatException('Invalid contact row'),
      ]),
      nextCursor: data['nextCursor'] as String?,
    );
  }
}
