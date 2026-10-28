import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/providers.dart';
import '../../core/shell_deep_link.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../gb_wallet/gb_promotion_journal.dart';

const notificationCategories = <String, (String, IconData, String)>{
  'messages': ('Masana messages', Icons.chat_bubble_outline,
      'Replies and conversation updates'),
  'calls': ('Calls', Icons.call_outlined,
      'Incoming and missed Masana calls'),
  'status': ('Status posts', Icons.auto_awesome_outlined,
      'New Masana posts and updates'),
  'wallet': ('Wallet events', Icons.account_balance_wallet_outlined,
      'MB transfers, verified deposits and data redemption'),
};

// Keep the old keys in the wire payload until Gateway preferences migrate.
// They are never displayed as subscription options or clickable history.
const _retiredNotificationKeys = <String>{'rooms', 'p2p'};

class NotificationPreferences {
  const NotificationPreferences(this.categories, this.start, this.end,
      this.utcOffsetMinutes);
  final Map<String, bool> categories;
  final int? start, end, utcOffsetMinutes;
  bool get quiet => start != null && end != null;

  factory NotificationPreferences.read(Object? raw) {
    if (raw is! Map) throw const FormatException('Invalid settings response');
    final map = Map<String, dynamic>.from(raw);
    final categories = <String, bool>{};
    for (final key in notificationCategories.keys) {
      if (map[key] is! bool) {
        throw const FormatException('Invalid category setting');
      }
      categories[key] = map[key] as bool;
    }
    // Disable retired categories in subsequent writes while accepting historical
    // preference responses from older servers.
    for (final key in _retiredNotificationKeys) {
      categories[key] = false;
    }
    final start = map['quietStart'], end = map['quietEnd'];
    final offset = map['utcOffsetMinutes'];
    if (start != null && (start is! int || start < 0 || start > 1439) ||
        end != null && (end is! int || end < 0 || end > 1439) ||
        (start == null) != (end == null) ||
        offset is! int || offset < -840 || offset > 840) {
      throw const FormatException('Invalid quiet hours');
    }
    return NotificationPreferences(categories, start,
        end, offset);
  }

  NotificationPreferences update({
    String? category,
    bool? enabled,
    int? quietStart,
    int? quietEnd,
    bool disableQuiet = false,
    int? offset,
  }) => NotificationPreferences(
    {...categories, if (category != null && enabled != null) category: enabled},
    disableQuiet ? null : quietStart ?? start,
    disableQuiet ? null : quietEnd ?? end,
    offset ?? utcOffsetMinutes);

  Map<String, dynamic> toJson() => {
    ...categories,
    'quietStart': start, 'quietEnd': end,
    'utcOffsetMinutes': utcOffsetMinutes ??
        DateTime.now().timeZoneOffset.inMinutes,
  };
}

class NotificationHistoryRow {
  const NotificationHistoryRow(this.id, this.category, this.title,
      this.createdAt, this.link, this.readAt);
  final String id, category, title;
  final DateTime createdAt;
  final Uri? link;
  final DateTime? readAt;

  NotificationHistoryRow markedRead(DateTime timestamp) =>
      NotificationHistoryRow(id, category, title, createdAt, link, timestamp);

  factory NotificationHistoryRow.read(Object? raw) {
    if (raw is! Map) throw const FormatException('Invalid notification');
    final data = Map<String, dynamic>.from(raw);
    final id = data['id'], category = data['category'],
        title = data['title'], created = data['createdAt'];
    if (id is! String || id.length > 160 ||
        !(notificationCategories.containsKey(category) ||
            _retiredNotificationKeys.contains(category)) ||
        title is! String || title.length > 120 ||
        created is! String) {
      throw const FormatException('Invalid notification');
    }
    final date = DateTime.tryParse(created);
    if (date == null) throw const FormatException('Invalid notification date');
    final rawLink = data['deepLink'];
    final link = rawLink is String ? Uri.tryParse(rawLink) : null;
    final rawReadAt = data['readAt'];
    final readAt = rawReadAt is String ? DateTime.tryParse(rawReadAt) : null;
    if (rawReadAt != null && readAt == null) {
      throw const FormatException('Invalid notification read acknowledgement');
    }
    return NotificationHistoryRow(id, category as String, title,
        date.toLocal(),
        link != null && shellDeepLinkRoute(link) != null ? link : null,
        readAt?.toLocal());
  }
}

/// Compact WhatsApp-like preferences and account-scoped alert history.
/// No account IDs or private notification details are written to local prefs.
class NotificationPreferencesScreen extends ConsumerStatefulWidget {
  const NotificationPreferencesScreen({super.key});
  @override
  ConsumerState<NotificationPreferencesScreen> createState() =>
      _NotificationPreferencesScreenState();
}

class _NotificationPreferencesScreenState
    extends ConsumerState<NotificationPreferencesScreen> {
  String? _owner;
  int? _ownerEpoch;
  NotificationPreferences? _prefs;
  List<NotificationHistoryRow> _history = [];
  final Set<String> _reading = {}, _readErrors = {};
  bool _loading = false, _saving = false, _historyLoading = false;
  String? _error, _historyError;
  int _generation = 0;
  int _preferencesRequest = 0, _historyRequest = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _bind(ref.read(sessionProvider));
    });
  }

  void _bind(SessionState session) {
    final account = session is SessionSignedIn ? session.user.id : null;
    final epoch = account == null ? null
        : ref.read(sessionProvider.notifier).authorizationEpoch;
    if (account == _owner && epoch == _ownerEpoch) return;
    ++_generation;
    ++_preferencesRequest;
    ++_historyRequest;
    _owner = account;
    _ownerEpoch = epoch;
    _prefs = null;
    _history = [];
    _reading.clear();
    _readErrors.clear();
    _error = _historyError = null;
    _loading = _historyLoading = _saving = false;
    if (account != null) {
      unawaited(_refresh());
      unawaited(_refreshHistory());
    }
  }

  bool _same(int ticket, String owner) {
    if (!mounted || ticket != _generation || _owner != owner ||
        _ownerEpoch != ref.read(sessionProvider.notifier).authorizationEpoch) {
      return false;
    }
    final active = ref.read(sessionProvider);
    return active is SessionSignedIn && active.user.id == owner;
  }

  Future<void> _refresh() async {
    final owner = _owner;
    if (owner == null || _saving) return;
    final ticket = _generation;
    final request = ++_preferencesRequest;
    setState(() { _loading = true; _error = null; });
    try {
      final result = await ref.read(apiClientProvider).dio
          .get<Map<String, dynamic>>('/agent/notifications/preferences');
      final value = NotificationPreferences.read(result.data?['preferences']);
      if (!_same(ticket, owner) || request != _preferencesRequest) return;
      setState(() => _prefs = value);
    } catch (_) {
      if (_same(ticket, owner) && request == _preferencesRequest) {
        setState(() => _error = 'Could not load notification settings. Check your connection and retry.');
      }
    } finally {
      if (_same(ticket, owner) && request == _preferencesRequest) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _save(NotificationPreferences requested) async {
    final owner = _owner;
    if (owner == null || _saving || _prefs == null) return;
    final ticket = _generation;
    final request = ++_preferencesRequest;
    setState(() { _saving = true; _loading = false; _error = null; });
    try {
      final response = await ref.read(apiClientProvider).dio
          .put<Map<String, dynamic>>('/agent/notifications/preferences',
            data: {'preferences': requested.toJson()});
      final confirmed = NotificationPreferences.read(response.data?['preferences']);
      if (!_same(ticket, owner) || request != _preferencesRequest) return;
      setState(() => _prefs = confirmed);
    } catch (_) {
      if (_same(ticket, owner) && request == _preferencesRequest) setState(() {
        _error = 'Could not save notification preferences. Try again.';
      });
    } finally {
      if (_same(ticket, owner) && request == _preferencesRequest) {
        setState(() => _saving = false);
      }
    }
  }

  Future<void> _refreshHistory() async {
    final owner = _owner;
    if (owner == null) return;
    final ticket = _generation;
    final request = ++_historyRequest;
    setState(() { _historyLoading = true; _historyError = null; });
    try {
      final result = await ref.read(apiClientProvider).dio
          .get<Map<String, dynamic>>('/agent/notifications/history');
      final raw = result.data?['items'];
      if (raw is! List || raw.length > 100) {
        throw const FormatException('Invalid notification history');
      }
      final items = raw.map(NotificationHistoryRow.read)
          .where((event) => notificationCategories.containsKey(event.category))
          .toList();
      if (!_same(ticket, owner) || request != _historyRequest) return;
      setState(() => _history = items);
    } catch (_) {
      if (_same(ticket, owner) && request == _historyRequest) setState(() {
        _historyError = 'Could not load alerts. Pull down to retry.';
      });
    } finally {
      if (_same(ticket, owner) && request == _historyRequest) {
        setState(() => _historyLoading = false);
      }
    }
  }

  Future<void> _markRead(NotificationHistoryRow event) async {
    final owner = _owner;
    if (owner == null || event.readAt != null || !_reading.add(event.id)) return;
    final ticket = _generation;
    setState(() => _readErrors.remove(event.id));
    try {
      final result = await ref.read(apiClientProvider).dio
          .put<Map<String, dynamic>>(
            '/agent/notifications/history/${Uri.encodeComponent(event.id)}/read');
      final raw = result.data?['readAt'];
      final timestamp = raw is String ? DateTime.tryParse(raw) : null;
      if (timestamp == null) {
        throw const FormatException('Missing read acknowledgement');
      }
      if (!_same(ticket, owner)) return;
      // A slower history GET must not revert a newer server-confirmed read.
      ++_historyRequest;
      setState(() {
        _historyLoading = false;
        _history = [
          for (final item in _history)
            item.id == event.id ? item.markedRead(timestamp.toLocal()) : item,
        ];
        _readErrors.remove(event.id);
      });
    } catch (_) {
      if (_same(ticket, owner)) setState(() => _readErrors.add(event.id));
    } finally {
      if (_same(ticket, owner)) setState(() => _reading.remove(event.id));
    }
  }

  TimeOfDay _clock(int minute) =>
      TimeOfDay(hour: minute ~/ 60, minute: minute % 60);
  int _minute(TimeOfDay time) => time.hour * 60 + time.minute;

  Future<void> _chooseTime({required bool start}) async {
    final prefs = _prefs;
    if (prefs == null || _saving) return;
    final current = start ? prefs.start ?? 22 * 60 : prefs.end ?? 7 * 60;
    final selected = await showTimePicker(
      context: context, initialTime: _clock(current));
    if (!mounted || selected == null || _prefs != prefs || _owner == null) return;
    await _save(prefs.update(
      quietStart: start ? _minute(selected) : prefs.start ?? 22 * 60,
      quietEnd: start ? prefs.end ?? 7 * 60 : _minute(selected),
      offset: DateTime.now().timeZoneOffset.inMinutes));
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final account = session is SessionSignedIn ? session.user.id : null;
    final epoch = account == null ? null
        : ref.read(sessionProvider.notifier).authorizationEpoch;
    final promotionHistory = account == null || epoch == null ? null :
        ref.watch(gbPromotionJournalProvider((accountId:account,authorizationEpoch:epoch)));
    if (_owner != account || _ownerEpoch != epoch) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) { setState(() => _bind(ref.read(sessionProvider))); }
      });
    }
    final colors = context.masanawa;
    return DefaultTabController(
      key: ValueKey('$account-$epoch'),
      length: 2,
      child: Scaffold(
        backgroundColor: colors.surfaceBg,
        appBar: AppBar(
          title: const Text('Notifications'),
          bottom: const TabBar(tabs: [
            Tab(text: 'Activity'), Tab(text: 'Preferences'),
          ]),
        ),
        body: account == null || account != _owner || _ownerEpoch != epoch
          ? const Center(child: Text('Sign in to manage notifications.'))
          : TabBarView(children: [
              RefreshIndicator(onRefresh: () async {
                  ref.invalidate(gbPromotionJournalProvider((accountId:account,authorizationEpoch:epoch)));
                  await _refreshHistory();
                },child:ListView(children:[
                  const ListTile(title:Text('Promotion updates',
                    style:TextStyle(fontWeight:FontWeight.w700)),
                    subtitle:Text('Private campaign events from the audit log. '
                      'These are not push-delivery or read-receipt confirmations.')),
                  if(promotionHistory!.isLoading&&promotionHistory.valueOrNull==null)
                    const ListTile(title:Text('Loading promotion updates…'))
                  else if(promotionHistory.hasError||promotionHistory.valueOrNull==null)
                    ListTile(title:const Text('Promotion updates unavailable.'),
                      trailing:IconButton(tooltip:'Retry promotion updates',
                        icon:const Icon(Icons.refresh),onPressed:()=>ref.invalidate(
                          gbPromotionJournalProvider((accountId:account,authorizationEpoch:epoch)))))
                  else if(promotionHistory.valueOrNull!.notices.isEmpty)
                    const ListTile(title:Text('No campaign updates yet.'))
                  else for(final update in promotionHistory.valueOrNull!.notices.take(20))
                    ListTile(key:ValueKey('notification-promotion-${update.id}'),
                      leading:const Icon(Icons.campaign_outlined),
                      title:Text(update.label),
                      subtitle:Text('${MaterialLocalizations.of(context).formatMediumDate(update.occurredAt.toLocal())}'
                        '${update.reason==null?'':' · ${update.reason}'}\nPost: ${update.postId}'),
                      isThreeLine:update.reason!=null),
                  const Divider(height:20),
                  const ListTile(title:Text('Other account alerts',
                    style:TextStyle(fontWeight:FontWeight.w700))),
                  if(_historyLoading&&_history.isEmpty)
                    const ListTile(title:Text('Loading recent alerts…'))
                  else if(_historyError!=null&&_history.isEmpty)
                    ListTile(title:Text(_historyError!),
                      trailing:TextButton(onPressed:_refreshHistory,child:const Text('Retry')))
                  else if(_history.isEmpty)
                    const ListTile(title:Text('No recent alerts yet.')),
                  if(_historyError!=null&&_history.isNotEmpty)
                    ListTile(leading:Icon(Icons.refresh,color:colors.brand),
                      title:Text(_historyError!),onTap:_refreshHistory),
                  for(final event in _history)...[
                    const Divider(height:1),
                    ListTile(
                      leading:Icon(notificationCategories[event.category]!.$2,
                        color:event.readAt==null?colors.brand:
                          Theme.of(context).colorScheme.outline),
                      title:Text(event.title),
                      subtitle:Text('${notificationCategories[event.category]!.$1} · '
                        '${MaterialLocalizations.of(context).formatMediumDate(event.createdAt)} · '
                        '${TimeOfDay.fromDateTime(event.createdAt).format(context)}'
                        '${_readErrors.contains(event.id)?' · Read failed — retry':''}'),
                      trailing:event.readAt!=null
                        ?const Icon(Icons.done_all,semanticLabel:'Read')
                        :IconButton(tooltip:_readErrors.contains(event.id)
                          ?'Retry mark as read':'Mark as read',
                          onPressed:_reading.contains(event.id)?null:
                            ()=>unawaited(_markRead(event)),
                          icon:Icon(_readErrors.contains(event.id)
                            ?Icons.refresh:Icons.circle_outlined)),
                      onTap:(){unawaited(_markRead(event));
                        if(event.link==null)return;
                        final target=shellDeepLinkRoute(event.link!);
                        if(target!=null)context.push(target);
                      }),
                  ],
                ])),
              RefreshIndicator(onRefresh: _refresh,
                child: ListView(children: [
                  if (_loading || _saving) const LinearProgressIndicator(minHeight: 2),
                  if (_error != null) ListTile(
                    title: Text(_error!),
                    trailing: TextButton(
                      onPressed: _loading ? null : _refresh,
                      child: const Text('Retry'))),
                  const ListTile(
                    title: Text('Choose your updates',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                    subtitle: Text('Calls and financial security alerts may still need urgent attention.'),
                  ),
                  if (_prefs == null && _loading)
                    const ListTile(title: Text('Loading preferences…')),
                  if (_prefs != null) ...[
                    for (final entry in notificationCategories.entries)
                      SwitchListTile(
                        key: Key('notification-${entry.key}'),
                        secondary: Icon(entry.value.$2, color: colors.brand),
                        title: Text(entry.value.$1),
                        subtitle: Text(entry.value.$3),
                        value: _prefs!.categories[entry.key]!,
                        onChanged: _saving ? null : (value) =>
                            unawaited(_save(_prefs!.update(
                                category: entry.key, enabled: value))),
                      ),
                    const Divider(height: 20),
                    SwitchListTile(
                      key: const Key('notification-quiet-hours'),
                      secondary: Icon(Icons.bedtime_outlined,
                          color: colors.brand),
                      title: const Text('Quiet hours'),
                      subtitle: const Text('Silence nonurgent push alerts during selected hours'),
                      value: _prefs!.quiet,
                      onChanged: _saving ? null : (enabled) {
                        final p = _prefs!;
                        unawaited(_save(enabled
                          ? p.update(quietStart: 22 * 60, quietEnd: 7 * 60,
                              offset: DateTime.now().timeZoneOffset.inMinutes)
                          : p.update(disableQuiet: true)));
                      },
                    ),
                    if (_prefs!.quiet) ...[
                      ListTile(
                        title: const Text('Start'),
                        trailing: Text(_clock(_prefs!.start!).format(context)),
                        onTap: _saving ? null : () => _chooseTime(start: true)),
                      ListTile(
                        title: const Text('End'),
                        trailing: Text(_clock(_prefs!.end!).format(context)),
                        onTap: _saving ? null : () => _chooseTime(start: false)),
                    ],
                    const Padding(padding: EdgeInsets.all(16),
                      child: Text('Quiet hours use your current device timezone. '
                          'Updates appear in Activity even when push is silenced.')),
                  ],
                ])),
            ]),
      ),
    );
  }
}
