import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'room_community_api.dart';

/// Only the pending request identity is retained, never an invitation code.
abstract interface class RoomInvitationRequestStore {
  Future<String?> read();
  Future<void> write(String? requestId);
}

class _RequestStore implements RoomInvitationRequestStore {
  _RequestStore(this.api, this.roomId);
  final RoomCommunityApi api;
  final String roomId;
  String? memory;
  final storage = const FlutterSecureStorage();
  String? get key {
    final bound = api;
    if (bound is! AccountBoundRoomCommunityApi) return null;
    bound.assertActive();
    return 'room-invitation-v1:${Uri.encodeComponent(bound.ownerAccount)}:${Uri.encodeComponent(roomId)}:request';
  }

  @override
  Future<String?> read() async {
    final scope = key;
    final result = scope == null ? memory : await storage.read(key: scope);
    key;
    if (result != null && (result.isEmpty || result.length > 160)) {
      throw const FormatException('Invalid pending invitation');
    }
    return result;
  }

  @override
  Future<void> write(String? requestId) async {
    final scope = key;
    if (scope == null) {
      memory = requestId;
    } else if (requestId == null) {
      await storage.delete(key: scope);
    } else {
      await storage.write(key: scope, value: requestId);
    }
    key;
  }
}

/// Room Info → Manage → codes. Unknown issuance is retried with the same key;
/// a lost one-time code must be revoked before an explicit new issuance.
class RoomInvitationLinks extends StatefulWidget {
  const RoomInvitationLinks({
    super.key,
    required this.api,
    required this.roomId,
    required this.newRequestId,
    this.store,
  });
  final RoomCommunityApi api;
  final String roomId;
  final String Function() newRequestId;
  final RoomInvitationRequestStore? store;
  @override
  State<RoomInvitationLinks> createState() => _InvitationLinksState();
}

class _InvitationLinksState extends State<RoomInvitationLinks> {
  late RoomInvitationRequestStore journal;
  List<Map<String, dynamic>> rows = [];
  Map<String, dynamic>? original;
  String? pending, code, error;
  bool restored = false,
      compatible = false,
      busy = false,
      checking = false,
      restoring = false;
  int generation = 0, readGeneration = 0;
  @override
  void initState() {
    super.initState();
    reset();
  }

  @override
  void didUpdateWidget(covariant RoomInvitationLinks oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId ||
        !identical(oldWidget.store, widget.store))
      reset();
  }

  void reset() {
    generation++;
    readGeneration++;
    journal = widget.store ?? _RequestStore(widget.api, widget.roomId);
    rows = [];
    original = null;
    pending = null;
    code = null;
    error = null;
    restored = false;
    compatible = false;
    busy = false;
    checking = false;
    restoring = false;
    initialize();
  }

  @override
  void dispose() {
    generation++;
    code = null;
    super.dispose();
  }

  bool authorized() {
    try {
      final api = widget.api;
      if (api is AccountBoundRoomCommunityApi) api.assertActive();
      return true;
    } catch (_) {
      return false;
    }
  }

  bool current(int version) => mounted && version == generation && authorized();
  Future<void> initialize() async {
    if (restoring) return;
    final version = generation;
    setState(() {
      restoring = true;
      error = null;
    });
    try {
      final result = await journal.read();
      if (!current(version)) return;
      setState(() {
        pending = result;
        restored = true;
      });
      await refresh();
    } catch (_) {
      if (current(version))
        setState(
          () => error = 'Could not restore the invitation request. Retry.',
        );
    } finally {
      if (current(version)) setState(() => restoring = false);
    }
  }

  static bool valid(Map<String, dynamic> row) =>
      row['inviteId'] is String &&
      (row['inviteId'] as String).isNotEmpty &&
      const [
        'active',
        'revoked',
        'accepted',
        'expired',
      ].contains(row['status']);
  Future<void> finishIfInactive(int version) async {
    if (original == null || original!['status'] == 'active') return;
    await journal.write(null);
    if (current(version))
      setState(() {
        pending = null;
        code = null;
        original = null;
      });
  }

  Future<void> refresh() async {
    final version = generation, api = widget.api, roomId = widget.roomId;
    final read = ++readGeneration;
    setState(() {
      compatible = false;
      checking = true;
      error = null;
    });
    try {
      final result = await api.request(roomId, 'GET', 'invites', {});
      if (!current(version) || read != readGeneration) return;
      if (result['issuanceVersion'] != 1 || result['items'] is! List)
        throw const FormatException('Unavailable issuance protocol');
      final values = (result['items'] as List)
          .map((value) => Map<String, dynamic>.from(value as Map))
          .toList();
      if (!values.every(valid))
        throw const FormatException('Invalid invitation list');
      final matches = values.where(
        (value) =>
            value['kind'] == 'code' &&
            pending != null &&
            value['requestId'] == pending,
      );
      setState(() {
        compatible = true;
        rows = values;
        // Absence from a capped list is not proof that a request never committed.
        original = matches.isEmpty ? null : matches.first;
        if (original == null || original!['status'] != 'active') code = null;
      });
      await finishIfInactive(version);
    } catch (e) {
      if (!current(version) || read != readGeneration) return;
      setState(() {
        compatible = false;
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          code = null;
          rows = [];
          original = null;
        }
        error = 'Could not verify invitation status. Refresh before creating or copying a code.';
      });
    } finally {
      if (current(version) && read == readGeneration)
        setState(() => checking = false);
    }
  }

  Future<void> issue() async {
    if (busy || restoring || !restored || !compatible || !authorized()) return;
    final version = generation,
        api = widget.api,
        roomId = widget.roomId,
        store = journal;
    readGeneration++;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      var key = pending;
      if (key == null) {
        key = widget.newRequestId();
        if (key.isEmpty || key.length > 160)
          throw const FormatException('Invalid request');
        await store.write(key);
        if (!current(version)) return;
        setState(() => pending = key);
      }
      // The distinct keyed endpoint fails safely against older Gateways.
      final result = await api.request(roomId, 'POST', 'invites/issue', {
        'requestId': key,
      });
      if (!current(version)) return;
      if (!valid(result) || result['replayed'] is! bool)
        throw const FormatException('Invalid issuance response');
      final secret = result['token'];
      if (secret != null &&
          (secret is! String ||
              !RegExp(r'^[A-Za-z0-9_-]{43}$').hasMatch(secret)))
        throw const FormatException('Invalid invitation code');
      if (result['replayed'] == true && secret != null)
        throw const FormatException('Unexpected repeated code');
      setState(() {
        original = result;
        code = result['status'] == 'active' ? secret as String? : null;
      });
      await finishIfInactive(version);
    } catch (_) {
      if (current(version))
        setState(
          () => error = pending == null
              ? 'Could not save the invitation request on this device. Retry.'
              : 'Invitation outcome is unknown. Retry the original request; do not create another code.',
        );
    } finally {
      if (current(version)) setState(() => busy = false);
    }
  }

  Future<void> revoke(String inviteId) async {
    if (busy || !authorized()) return;
    final version = generation, api = widget.api, roomId = widget.roomId;
    readGeneration++;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      await api.revoke(roomId, inviteId);
      if (!current(version)) return;
      // Re-read status before clearing the pending key or allowing a new code.
      await refresh();
    } catch (_) {
      if (current(version))
        setState(
          () => error =
              'Revocation is unconfirmed. Refresh status or retry Revoke.',
        );
    } finally {
      if (current(version)) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!authorized()) return const Text('Session changed. Return to Rooms.');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (busy || checking || (!restored && error == null))
          const LinearProgressIndicator(),
        if (error != null) Text(error!),
        if (!restored)
          TextButton(
            onPressed: restoring ? null : initialize,
            child: const Text('Retry invitation recovery'),
          ),
        if (restored)
          TextButton(
            onPressed: busy || checking ? null : refresh,
            child: const Text('Refresh invitations'),
          ),
        if (pending == null)
          TextButton.icon(
            onPressed: busy || !restored || !compatible ? null : issue,
            icon: const Icon(Icons.link),
            label: const Text('Create invitation code'),
          ),
        if (pending != null && code == null) ...[
          const Text(
            'This request may already have created an invitation. A code is shown only once. Revoke the original before creating a replacement.',
          ),
          TextButton(
            onPressed: busy || !compatible ? null : issue,
            child: const Text('Retry original invitation request'),
          ),
        ],
        if (code != null) ...[
          const Text(
            'Keep this code private. It will not be shown again after leaving this screen.',
          ),
          SelectableText(code!),
          TextButton(
            onPressed: busy || !compatible
                ? null
                : () {
                    if (authorized())
                      Clipboard.setData(ClipboardData(text: code!));
                  },
            child: const Text('Copy invitation code'),
          ),
        ],
        if (pending != null && original?['status'] == 'active')
          TextButton(
            onPressed: busy
                ? null
                : () => revoke(original!['inviteId'] as String),
            child: const Text('Revoke original invitation'),
          ),
        for (final row in rows)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  row['kind'] == 'code'
                      ? 'Invitation code'
                      : 'Personal invitation',
                ),
                Text('${row['status']} · Expires ${row['expiresAt'] ?? ''}'),
                if (row['status'] == 'active' &&
                    row['inviteId'] != original?['inviteId'])
                  TextButton(
                    onPressed: busy
                        ? null
                        : () => revoke(row['inviteId'] as String),
                    child: const Text('Revoke'),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
