import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'room_community_api.dart';

/// Only the current owner offers; the intended member must separately accept.
/// GET recovers the server's original transfer after an uncertain response.
class RoomOwnershipTransferPanel extends StatefulWidget {
  const RoomOwnershipTransferPanel({
    super.key,
    required this.api,
    required this.roomId,
    required this.onChanged,
  });
  final RoomCommunityApi api;
  final String roomId;
  final Future<void> Function() onChanged;
  @override
  State<RoomOwnershipTransferPanel> createState() => _OwnershipTransferState();
}

class _OwnershipTransferState extends State<RoomOwnershipTransferPanel> {
  Map<String, dynamic>? transfer;
  bool loading = true, busy = false, verified = false, canOffer = false;
  String? error;
  int generation = 0, scopeGeneration = 0;
  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void didUpdateWidget(covariant RoomOwnershipTransferPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.api, widget.api) ||
        oldWidget.roomId != widget.roomId) {
      generation++;
      scopeGeneration++;
      transfer = null;
      canOffer = false;
      verified = false;
      busy = false;
      error = null;
      load();
    }
  }

  @override
  void dispose() {
    generation++;
    scopeGeneration++;
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
  bool valid(Map<String, dynamic> data) {
    if (data['ownershipVersion'] != 1 || data['canOffer'] is! bool)
      return false;
    final value = data['transfer'];
    if (value == null) return true;
    return value is Map &&
        value['transferId'] is String &&
        (value['transferId'] as String).isNotEmpty &&
        const [
          'pending',
          'accepted',
          'declined',
          'cancelled',
          'expired',
        ].contains(value['status']) &&
        value['canAccept'] is bool &&
        value['canDecline'] is bool &&
        value['canCancel'] is bool;
  }

  Future<void> load({bool refreshRoom = false}) async {
    final version = ++generation, api = widget.api, roomId = widget.roomId;
    setState(() {
      loading = true;
      verified = false;
      error = null;
    });
    try {
      final data = await api.request(roomId, 'GET', 'ownership-transfer', {});
      if (!current(version)) return;
      if (!valid(data))
        throw const FormatException('Unavailable transfer protocol');
      setState(() {
        transfer = data['transfer'] == null
            ? null
            : Map<String, dynamic>.from(data['transfer'] as Map);
        canOffer = data['canOffer'] as bool;
        verified = true;
      });
      if (refreshRoom) await widget.onChanged();
    } catch (e) {
      if (!current(version)) return;
      setState(() {
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          transfer = null;
          canOffer = false;
        }
        error = 'Could not verify the ownership offer. Refresh its status.';
      });
    } finally {
      if (current(version)) setState(() => loading = false);
    }
  }

  Future<void> decide(String action) async {
    if (busy || loading || !verified || transfer == null || !authorized())
      return;
    final field = action == 'accept'
        ? 'canAccept'
        : action == 'decline'
        ? 'canDecline'
        : 'canCancel';
    if (transfer![field] != true) return;
    final version = generation,
        scope = scopeGeneration,
        api = widget.api,
        roomId = widget.roomId,
        id = transfer!['transferId'] as String;
    bool sameScope() =>
        mounted &&
        scope == scopeGeneration &&
        identical(api, widget.api) &&
        roomId == widget.roomId &&
        authorized();
    setState(() => busy = true);
    try {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            action == 'accept'
                ? 'Accept Room ownership?'
                : action == 'decline'
                ? 'Decline ownership offer?'
                : 'Cancel ownership offer?',
          ),
          content: Text(
            action == 'accept'
                ? 'You become the Room owner and take responsibility for membership and moderation. The current owner becomes an admin.'
                : action == 'decline'
                ? 'The current owner keeps control of this Room.'
                : 'Ownership stays with you. This offer can no longer be accepted.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Back'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Confirm'),
            ),
          ],
        ),
      );
      if (!current(version) || confirmed != true) return;
      final result = await api.request(
        roomId,
        'POST',
        'ownership-transfer/${Uri.encodeComponent(id)}/$action',
        {},
      );
      if (!current(version)) return;
      if (!valid(result) || (result['transfer'] as Map?)?['transferId'] != id)
        throw const FormatException('Mismatched ownership response');
      // No optimistic role change: parent and panel re-read canonical state.
      await load();
      if (sameScope()) await widget.onChanged();
    } catch (e) {
      if (!sameScope()) return;
      setState(() {
        verified = false;
        if (e is DioException &&
            const [401, 403, 404].contains(e.response?.statusCode)) {
          transfer = null;
          canOffer = false;
        }
        error = e is DioException && e.response?.statusCode == 409
            ? 'This ownership offer changed. Refresh its status.'
            : 'The outcome is unconfirmed. Refresh the original offer before deciding again.';
      });
    } finally {
      if (sameScope()) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!authorized()) return const Text('Session changed. Return to Rooms.');
    if (!loading && error == null && transfer == null && !canOffer)
      return const SizedBox.shrink();
    final status = transfer?['status'];
    final labels = {
      'pending': 'Awaiting acceptance',
      'accepted': 'Ownership accepted',
      'declined': 'Ownership offer declined',
      'cancelled': 'Ownership offer cancelled',
      'expired': 'Ownership offer expired',
    };
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Room ownership',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (loading || busy) const LinearProgressIndicator(),
          if (error != null) Text(error!),
          if (transfer == null && canOffer)
            const Text(
              'Choose a member to offer ownership. You stay owner until they accept in Room info.',
            ),
          if (transfer != null) ...[
            Text(labels[status] ?? 'Ownership status unavailable'),
            Text(
              'From ${transfer!['fromName'] ?? 'Room owner'} to ${transfer!['targetName'] ?? 'Room member'}',
            ),
            if (status == 'pending')
              const Text(
                'Ownership changes only after the intended member accepts.',
              ),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                if (transfer!['canAccept'] == true)
                  FilledButton(
                    onPressed: busy || loading || !verified
                        ? null
                        : () => decide('accept'),
                    child: const Text('Accept ownership'),
                  ),
                if (transfer!['canDecline'] == true)
                  TextButton(
                    onPressed: busy || loading || !verified
                        ? null
                        : () => decide('decline'),
                    child: const Text('Decline offer'),
                  ),
                if (transfer!['canCancel'] == true)
                  TextButton(
                    onPressed: busy || loading || !verified
                        ? null
                        : () => decide('cancel'),
                    child: const Text('Cancel offer'),
                  ),
              ],
            ),
          ],
          TextButton(
            onPressed: busy || loading ? null : () => load(refreshRoom: true),
            child: const Text('Refresh ownership status'),
          ),
        ],
      ),
    );
  }
}
