import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/providers.dart';
import '../../core/shell_deep_link.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';

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
      this.createdAt, this.link);
  final String id, category, title;
  final DateTime createdAt;
  final Uri? link;

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
    return NotificationHistoryRow(id, category as String, title,
        date.toLocal(),
        link != null && shellDeepLinkRoute(link) != null ? link : null);
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
  NotificationPreferences? _prefs;
  List<NotificationHistoryRow> _history = [];
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
    if (account == _owner) return;
    ++_generation;
    ++_preferencesRequest;
    ++_historyRequest;
    _owner = account;
    _prefs = null;
    _history = [];
    _error = _historyError = null;
    _loading = _historyLoading = _saving = false;
    if (account != null) {
      unawaited(_refresh());
      unawaited(_refreshHistory());
    }
  }

  bool _same(int ticket, String owner) {
    if (!mounted || ticket != _generation || _owner != owner) return false;
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
    if (_owner != account) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) { setState(() => _bind(ref.read(sessionProvider))); }
      });
    }
    final colors = context.masanawa;
    return DefaultTabController(
      key: ValueKey(account),
      length: 2,
      child: Scaffold(
        backgroundColor: colors.surfaceBg,
        appBar: AppBar(
          title: const Text('Notifications'),
          bottom: const TabBar(tabs: [
            Tab(text: 'Activity'), Tab(text: 'Preferences'),
          ]),
        ),
        body: account == null || account != _owner
          ? const Center(child: Text('Sign in to manage notifications.'))
          : TabBarView(children: [
              RefreshIndicator(onRefresh: _refreshHistory,
                child: _historyLoading && _history.isEmpty
                ? ListView(children: const [
                    ListTile(title: Text('Loading recent alerts…')),
                  ])
                : _historyError != null && _history.isEmpty
                ? ListView(children: [
                    ListTile(title: Text(_historyError!)),
                    ListTile(title: const Text('Retry'),
                      onTap: _refreshHistory),
                  ])
                : _history.isEmpty
                ? ListView(children: const [
                    SizedBox(height: 64),
                    Icon(Icons.notifications_none_outlined, size: 48),
                    Center(child: Padding(padding: EdgeInsets.all(20),
                      child: Text('No recent alerts yet.'))),
                  ])
                : ListView.separated(
                  itemCount: _history.length + (_historyError == null ? 0 : 1),
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, i) {
                    if (_historyError != null && i == 0) {
                      return ListTile(
                        leading: Icon(Icons.refresh, color: colors.brand),
                        title: Text(_historyError!),
                        subtitle: const Text('Recent alerts remain available'),
                        onTap: _refreshHistory,
                      );
                    }
                    final event = _history[i - (_historyError == null ? 0 : 1)];
                    final date = MaterialLocalizations.of(context)
                        .formatMediumDate(event.createdAt);
                    final time = TimeOfDay.fromDateTime(event.createdAt)
                        .format(context);
                    return ListTile(
                      leading: Icon(notificationCategories[event.category]!.$2,
                          color: colors.brand),
                      title: Text(event.title),
                      subtitle: Text('${notificationCategories[event.category]!.$1} · $date · $time'),
                      trailing: event.link == null ? null : const Icon(Icons.chevron_right),
                      onTap: event.link == null ? null : () {
                        final target = shellDeepLinkRoute(event.link!);
                        if (target != null) context.push(target);
                      },
                    );
                  },
                )),
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
