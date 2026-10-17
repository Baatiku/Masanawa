import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'agent_directory.dart';

/// Curated offline portraits. Server-approved identity keys take priority over labels.
const _names = [
  "Mallam Gwani",
  "Malamah Gwana",
  "Dr. Amina Yusuf",
  "Nurse Fatima Abdullahi",
  "Pharm. Salim Ibrahim",
  "Barr. Zainab Bello",
  "Prof. Sadiq Musa",
  "Engr. Musa Garba",
  "Engr. Bello Shehu",
  "Engr. Umar Lawal",
  "Arc. Safiya Kabir",
  "Prof. Ruqayya Haruna",
  "Dr. Idris Muhammad",
  "Prof. Maryam Usman",
  "Dr. Kabir Ahmad",
  "Prof. Hauwa Sani",
  "Dr. Yusuf Danladi",
  "Prof. Haruna Adamu",
  "Dr. Bilkisu Suleiman",
  "Dr. Nura Abdullahi",
  "Dr. Aisha Tanko",
  "Prof. Abdulrahman Isah",
  "Ustazah Layla Hassan",
  "Prof. Grace Okonkwo",
  "Madam Asha Verma",
  "Prof. Mei Lin",
];

const _portraitKeys = [
  "gwani",
  "gwana",
  "amina",
  "fatima",
  "salim",
  "zainab",
  "sadiq",
  "musa",
  "bello",
  "umar",
  "safiya",
  "ruqayya",
  "idris",
  "maryam",
  "kabir",
  "hauwa",
  "yusuf",
  "haruna",
  "bilkisu",
  "nura",
  "aisha",
  "abdulrahman",
  "layla",
  "grace",
  "asha",
  "mei",
];

int _findNameIndex(String displayName) {
  final clean = displayName.trim();
  int index = _names.indexOf(clean);
  if (index >= 0) return index;
  final lower = clean.toLowerCase();
  int keyIndex = _portraitKeys.indexOf(lower);
  if (keyIndex >= 0) return keyIndex;
  // Match without voice names or legacy labels
  if (lower.contains("gwani")) return 0;
  if (lower.contains("gwana")) return 1;
  for (var i = 0; i < _names.length; i++) {
    final candidate = _names[i].toLowerCase();
    if (lower.contains(candidate) || candidate.contains(lower)) {
      return i;
    }
  }
  for (var i = 0; i < _portraitKeys.length; i++) {
    if (lower.contains(_portraitKeys[i])) {
      return i;
    }
  }
  return -1;
}

/// Never derive the bundled portrait of a server identity from its display name.
/// A missing or unknown approved key deliberately yields no bundled image.
String? portraitPhotoAssetForKey(String? key) {
  final index = key == null ? -1 : _portraitKeys.indexOf(key);
  return index < 0 ? null : 'assets/masana/portraits/${_portraitKeys[index]}.webp';
}
String? portraitAssetForKey(String? key) {
  final index = key == null ? -1 : _portraitKeys.indexOf(key);
  return index < 0 ? null : 'assets/masana/avatars/portrait_${index.toString().padLeft(2, '0')}.svg';
}
String? bannerAssetForKey(String? key) {
  final index = key == null ? -1 : _portraitKeys.indexOf(key);
  return index < 0 ? null : 'assets/masana/banners/banner_${index.toString().padLeft(2, '0')}.svg';
}

String? portraitPhotoAssetFor(String displayName) {
  final index = _findNameIndex(displayName);
  if (index >= 0 && index < _portraitKeys.length) {
    return 'assets/masana/portraits/${_portraitKeys[index]}.webp';
  }
  return null;
}

String? portraitAssetFor(String displayName) {
  final index = _findNameIndex(displayName);
  return index < 0 ? null : 'assets/masana/avatars/portrait_${index.toString().padLeft(2, '0')}.svg';
}

String? bannerAssetFor(String displayName) {
  final index = _findNameIndex(displayName);
  return index < 0 ? null : 'assets/masana/banners/banner_${index.toString().padLeft(2, '0')}.svg';
}

/// Persist only immutable, public official portraits. Never cache short-lived
/// account-owned signed URLs, which may contain temporary access credentials.
bool isPublicMasanawaPortraitUrl(String raw) {
  final uri = Uri.tryParse(raw);
  if (uri == null || uri.scheme != 'https' ||
      uri.host != 'raw.githubusercontent.com' ||
      uri.userInfo.isNotEmpty || uri.hasPort || uri.hasQuery || uri.hasFragment) {
    return false;
  }
  return RegExp(
    r'^/Baatiku/Masanawa/main/apps/mobile/assets/masana/portraits/[a-z][a-z0-9_-]{1,39}\.webp$',
  ).hasMatch(uri.path);
}

class MasanaPortraitAvatar extends StatelessWidget {
  const MasanaPortraitAvatar({
    super.key,
    this.agent,
    this.displayName,
    this.avatarUrl,
    this.size = 52,
  });

  final AgentDirectoryEntry? agent;
  final String? displayName;
  final String? avatarUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final name = (displayName ?? agent?.displayName ?? '').trim();
    // Agent objects have server-owned canonical IDs and must never use fuzzy
    // display-name matching, even when the stock portrait is unavailable.
    final photoAsset = agent == null
        ? portraitPhotoAssetFor(name)
        : portraitPhotoAssetForKey(agent!.portraitKey);
    final svgAsset = agent == null
        ? portraitAssetFor(name)
        : portraitAssetForKey(agent!.portraitKey);
    final url = avatarUrl ?? agent?.avatarUrl;
    final initial = agent?.initial ?? (name.isNotEmpty ? name[0].toUpperCase() : 'M');

    Widget fallbackSvgOrUrl() {
      if (url != null && url.isNotEmpty) {
        if (isPublicMasanawaPortraitUrl(url)) {
          return CachedNetworkImage(
            imageUrl: url,width: size,height: size,fit: BoxFit.cover,
            placeholder: (_, __) => _initial(initial),
            errorWidget: (_, __, ___) => _initial(initial),
          );
        }
        // Preserve memory-only loading for private/ephemeral media.
        return Image.network(
          url,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (_, error, stackTrace) => _initial(initial),
        );
      }
      if (svgAsset != null) {
        return SvgPicture.asset(
          svgAsset,
          width: size,
          height: size,
          fit: BoxFit.cover,
        );
      }
      return _initial(initial);
    }

    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: size,
        height: size,
        child: photoAsset != null
            ? Image.asset(
                photoAsset,
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (_, error, stackTrace) => fallbackSvgOrUrl(),
              )
            : fallbackSvgOrUrl(),
      ),
    );
  }

  Widget _initial(String letter) => ColoredBox(
        color: const Color(0xFF1E63D6),
        child: Center(
          child: Text(
            letter,
            style: TextStyle(
              color: Colors.white,
              fontSize: size * .37,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
