import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/agents/agent_directory.dart';

void main() {
  test('administrator portraits accept only the canonical public revision URL', () {
    const base =
        'https://api.masanawa.com/v1/personas/character_00000000-0000-4000-8000-000000000001/portrait';
    expect(isAdminPersonaPortraitUrl('$base?revision=2'), isTrue);
    for (final url in [
      base,
      '$base?revision=2&token=secret',
      '$base?revision=no',
      '$base?revision=2#private',
      '$base?revision=2&revision=3',
      base.replaceFirst('api.masanawa.com', 'evil.example') + '?revision=2',
    ]) {
      expect(isAdminPersonaPortraitUrl(url), isFalse);
    }
  });
  test('disk caching is admitted for only public immutable portraits', () {
    expect(
      isPublicMasanawaPortraitUrl(
        'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/gwani.webp',
      ),
      isTrue,
    );
    expect(
      isPublicMasanawaPortraitUrl(
        'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/amina.webp?sig=secret',
      ),
      isFalse,
    );
    expect(
      isPublicMasanawaPortraitUrl('https://media.example.com/private.webp'),
      isFalse,
    );
    expect(
      isPublicMasanawaPortraitUrl(
        'https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/../../wallet.webp',
      ),
      isFalse,
    );
  });
}
