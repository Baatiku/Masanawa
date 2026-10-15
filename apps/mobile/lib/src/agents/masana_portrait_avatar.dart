import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'agent_directory.dart';

/// Curated offline portraits, keyed by the server display label.
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

/// Canonical Room ID survives staff changes to the visible profile name.
int _roomPortraitIndex(String? roomId) {
  if (roomId == null) return -1;
  final match = RegExp(r'^room_masana_([0-9]{2})_([a-z0-9_]+)$').firstMatch(roomId);
  if (match == null) return -1;
  final index = int.tryParse(match.group(1)!) ?? -1;
  if (index < 0 || index >= _portraitKeys.length ||
      _portraitKeys[index] != match.group(2)) return -1;
  return index;
}

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

String? portraitPhotoAssetFor(String displayName, {String? roomId}) {
  final seeded = _roomPortraitIndex(roomId);
  final index = seeded >= 0 ? seeded : _findNameIndex(displayName);
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

class MasanaPortraitAvatar extends StatelessWidget {
  const MasanaPortraitAvatar({
    super.key,
    this.agent,
    this.displayName,
    this.avatarUrl,
    this.roomId,
    this.size = 52,
  });

  final AgentDirectoryEntry? agent;
  final String? displayName;
  final String? avatarUrl;
  final String? roomId;
  final double size;

  @override
  Widget build(BuildContext context) {
    final name = (displayName ?? agent?.displayName ?? '').trim();
    final photoAsset = portraitPhotoAssetFor(name, roomId: roomId ?? agent?.roomId);
    final svgAsset = portraitAssetFor(name);
    final url = avatarUrl ?? agent?.avatarUrl;
    final initial = agent?.initial ?? (name.isNotEmpty ? name[0].toUpperCase() : 'M');

    Widget fallbackSvgOrUrl() {
      if (url != null && url.isNotEmpty) {
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
                // Never replace a bundled professional portrait with an old cartoon.
                errorBuilder: (_, error, stackTrace) => _initial(initial),
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
