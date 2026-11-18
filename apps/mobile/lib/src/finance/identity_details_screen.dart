import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/network/api_client.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'msnw_identity_enrollment.dart';

class IdentityDetailsScreen extends ConsumerStatefulWidget {
  const IdentityDetailsScreen({super.key});
  @override
  ConsumerState<IdentityDetailsScreen> createState() => _IdentityDetailsState();
}

class _IdentityDetailsState extends ConsumerState<IdentityDetailsScreen> {
  String? owner;
  @override
  void initState() {
    super.initState();
    final s = ref.read(sessionProvider);
    owner = s is SessionSignedIn ? s.user.id : null;
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(sessionProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Identity details')),
      body: SafeArea(
        child: s is! SessionSignedIn || s.user.id != owner
            ? const Center(child: Text('Sign in to view identity details'))
            : ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  MsnwIdentityEnrollment(
                    key: ValueKey(owner),
                    dio: ref.read(dioProvider),
                    baseUrl: kApiBaseUrl,
                    expectedUserId: owner!,
                    currentUserId: () => switch (ref.read(sessionProvider)) {
                      SessionSignedIn(:final user) => user.id,
                      _ => null,
                    },
                    accessToken: () => ref.read(apiClientProvider).accessToken,
                    onQualified: () {},
                  ),
                ],
              ),
      ),
    );
  }
}
