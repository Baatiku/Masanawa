/// IDs remain private transport keys, not labels shown in Rooms.
String roomVisibleIdentity(
  Map<String, dynamic> row, {
  bool masana = false,
  String fallback = 'Room member',
}) {
  final value = row['displayName'] ?? row['authorDisplayName'];
  if (value is String &&
      value.trim().isNotEmpty &&
      !RegExp(
        r'^(user_|character_|room_|[0-9a-f]{8}-[0-9a-f-]{27,})',
        caseSensitive: false,
      ).hasMatch(value.trim())) {
    return value.trim();
  }
  return masana || row['authorKind'] == 'masana' ? 'Masana' : fallback;
}

/// Group comments under their posts rather than mixing both chronologies.
List<Map<String, dynamic>> orderRoomTimeline(List<Map<String, dynamic>> items) {
  final roots = <Map<String, dynamic>>[];
  final children = <String, List<Map<String, dynamic>>>{};
  for (final item in items) {
    final parent = item['parentId'];
    if (parent == null || '$parent'.isEmpty) {
      roots.add(item);
    } else {
      children.putIfAbsent('$parent', () => []).add(item);
    }
  }
  int byTime(Map<String, dynamic> a, Map<String, dynamic> b) =>
      '${a['createdAt'] ?? ''}'.compareTo('${b['createdAt'] ?? ''}');
  roots.sort((a, b) {
    if (a['pinned'] == true && b['pinned'] != true) return -1;
    if (b['pinned'] == true && a['pinned'] != true) return 1;
    final order = byTime(b, a);
    return order != 0 ? order : '${a['id']}'.compareTo('${b['id']}');
  });
  for (final list in children.values) {
    list.sort(byTime);
  }
  final result = <Map<String, dynamic>>[];
  final seen = <String>{};
  void visit(Map<String, dynamic> item) {
    final id = '${item['id'] ?? ''}';
    if (!seen.add(id)) return;
    result.add(item);
    for (final child in children[id] ?? const <Map<String, dynamic>>[]) {
      visit(child);
    }
  }

  for (final post in roots) {
    visit(post);
  }
  for (final item in items) {
    visit(item);
  }
  return result;
}
