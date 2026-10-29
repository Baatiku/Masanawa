import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../state/session_state.dart';
import '../../state/talk_social_profile_state.dart';

/// The current account's public photo, scoped to its owner; never a Masana portrait.
class CurrentAccountAvatar extends ConsumerWidget {
  const CurrentAccountAvatar({super.key, this.size = 28});
  final double size;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn ? session.user.id : null;
    final name = session is SessionSignedIn ? session.user.name.trim() : '';
    final photo = owner == null
        ? null
        : ref.watch(humanProfileByUserIdProvider(owner)).valueOrNull?.avatarUrl;
    final uri = photo == null ? null : Uri.tryParse(photo);
    final fallback = ColoredBox(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Center(
        child: Text(
          name.isEmpty ? 'M' : name.characters.first.toUpperCase(),
          style: TextStyle(
            fontSize: size * .42,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
    return Semantics(
      image: true,
      label: 'Your profile',
      child: ExcludeSemantics(
        child: ClipOval(
          child: SizedBox(
            width: size,
            height: size,
            child: uri != null && uri.scheme == 'https' && uri.host.isNotEmpty
                ? Image.network(
                    photo!,
                    key: ValueKey('profile-photo-$owner-$photo'),
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => fallback,
                  )
                : fallback,
          ),
        ),
      ),
    );
  }
}
