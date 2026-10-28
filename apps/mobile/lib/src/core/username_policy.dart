String normalizedUsername(String value) =>
    value.trim().replaceFirst(RegExp(r'^@'), '').toLowerCase();
bool validEditableUsername(String value) {
  final username = normalizedUsername(value);
  return username.length >= 2 &&
      username.length <= 40 &&
      RegExp(r'^[a-z][a-z0-9]*(?:[._][a-z0-9]+)*$').hasMatch(username);
}
