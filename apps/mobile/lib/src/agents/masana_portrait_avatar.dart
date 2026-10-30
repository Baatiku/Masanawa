import '../tokens/feature_colors.dart';
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
  return index < 0
      ? null
      : 'assets/masana/portraits/${_portraitKeys[index]}.webp';
}

String? portraitAssetForKey(String? key) {
  final index = key == null ? -1 : _portraitKeys.indexOf(key);
  return index < 0
      ? null
      : 'assets/masana/avatars/portrait_${index.toString().padLeft(2, '0')}.svg';
}

String? bannerAssetForKey(String? key) {
  final index = key == null ? -1 : _portraitKeys.indexOf(key);
  return index < 0
      ? null
      : 'assets/masana/banners/banner_${index.toString().padLeft(2, '0')}.svg';
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
  return index < 0
      ? null
      : 'assets/masana/avatars/portrait_${index.toString().padLeft(2, '0')}.svg';
}

String? bannerAssetFor(String displayName) {
  final index = _findNameIndex(displayName);
  return index < 0
      ? null
      : 'assets/masana/banners/banner_${index.toString().padLeft(2, '0')}.svg';
}

/// Persist only immutable, public official portraits. Never cache short-lived
/// account-owned signed URLs, which may contain temporary access credentials.
bool isPublicMasanawaPortraitUrl(String raw) {
  final uri = Uri.tryParse(raw);
  if (uri == null ||
      uri.scheme != 'https' ||
      uri.host != 'raw.githubusercontent.com' ||
      uri.userInfo.isNotEmpty ||
      uri.hasPort ||
      uri.hasQuery ||
      uri.hasFragment) {
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
    this.characterId,
    this.displayName,
    this.avatarUrl,
    this.size = 52,
  });

  final AgentDirectoryEntry? agent;

  /// When provided, never select a bundled portrait by a potentially stale
  /// call-history or remote-inbox display name. Only the matching canonical
  /// directory entry can supply an approved portrait key.
  final String? characterId;
  final String? displayName;
  final String? avatarUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final matchesIdentity =
        agent != null &&
        (characterId == null || agent!.characterId == characterId);
    final name =
        (displayName ?? (matchesIdentity ? agent!.displayName : null) ?? '')
            .trim();
    // Agent objects have server-owned canonical IDs and must never use fuzzy
    // display-name matching, even when the stock portrait is unavailable.
    final canonical = characterId != null || agent != null;
    final approvedKey = matchesIdentity ? agent!.portraitKey : null;
    final photoAsset = canonical
        ? portraitPhotoAssetForKey(approvedKey)
        : portraitPhotoAssetFor(name);
    final svgAsset = canonical
        ? portraitAssetForKey(approvedKey)
        : portraitAssetFor(name);
    // Canonical platform Masana use only the approved bundled media projection.
    // An unverified history/status URL or a cached legacy avatarUrl cannot
    // substitute for a missing/revoked server-owned portrait key.
    final officialPhoto =
        matchesIdentity && agent!.publicOfficial?.current == true
        ? agent!.publicOfficial?.portrait
        : null;
    final url = canonical ? officialPhoto?.url : avatarUrl;
    final initial = matchesIdentity
        ? agent!.initial
        : (name.isNotEmpty ? name[0].toUpperCase() : 'M');

    Widget fallbackSvgOrUrl() {
      if (url != null && url.isNotEmpty) {
        if (isPublicMasanawaPortraitUrl(url) || isOfficialPublicMediaUrl(url)) {
          return CachedNetworkImage(
            imageUrl: url,
            width: size,
            height: size,
            fit: BoxFit.cover,
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

    return Semantics(
      label: name.isEmpty
          ? 'Masana profile avatar'
          : 'Profile avatar for $name',
      image: true,
      child: ExcludeSemantics(
        child: ClipOval(
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
        ),
      ),
    );
  }

  Widget _initial(String letter) => ColoredBox(
    color: MasanawaFeatureColors.informationBlue,
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
