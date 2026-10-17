import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';

void main() {
  test('disk caching is admitted for only public immutable portraits', () {
    expect(isPublicMasanawaPortraitUrl(
      'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/gwani.webp'), isTrue);
    expect(isPublicMasanawaPortraitUrl(
      'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/amina.webp?sig=secret'), isFalse);
    expect(isPublicMasanawaPortraitUrl('https://media.example.com/private.webp'), isFalse);
    expect(isPublicMasanawaPortraitUrl(
      'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/../../wallet.webp'), isFalse);
  });
}
