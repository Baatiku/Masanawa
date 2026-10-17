import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift/drift.dart' as drift;
import 'package:drift_flutter/drift_flutter.dart';

import 'agent_directory.dart';
import 'agent_directory_cache.dart';

/// Drift stores *directory projection metadata only*: never conversations,
/// voice recordings, signed URLs, tokens, wallets, entitlement grants or keys.
/// SQLite is not encrypted here. The canonical API always revalidates identity,
/// room availability, permissions and current presence.
class _RosterDatabase extends GeneratedDatabase {
  _RosterDatabase() : super.connect(driftDatabase(name: 'masanawa_roster_v1'));
  _RosterDatabase.test(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables => const [];

  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => const [];

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (_) async {
      await customStatement('''
        CREATE TABLE IF NOT EXISTS roster_cache (
          owner_id TEXT NOT NULL PRIMARY KEY,
          payload TEXT NOT NULL
        )
      ''');
    },
  );
}

/// Retains the previous JSON cache as a safe, one-time migration and fallback.
/// Every read is account-fenced. A successful replacement removes data for
/// other accounts and clears the legacy plaintext JSON file.
class DriftAgentDirectoryCache implements AgentDirectoryCache {
  DriftAgentDirectoryCache({
    AgentDirectoryCache? legacy,
    QueryExecutor? executor,
  }) : _legacy = legacy ?? const FileAgentDirectoryCache(),
       _db = executor == null ? _RosterDatabase() : _RosterDatabase.test(executor);

  final AgentDirectoryCache _legacy;
  final _RosterDatabase _db;

  Future<void> close() => _db.close();

  @override
  Future<List<AgentDirectoryEntry>?> read(String ownerId) async {
    if (ownerId.isEmpty) return null;
    try {
      final rows = await _db.customSelect(
        'SELECT payload FROM roster_cache WHERE owner_id = ? LIMIT 1',
        variables: [drift.Variable.withString(ownerId)],
      ).get();
      if (rows.isNotEmpty) {
        final decoded = jsonDecode(rows.first.read<String>('payload'));
        if (decoded is! List) return null;
        final agents = <AgentDirectoryEntry>[];
        for (final item in decoded) {
          if (item is! Map) return null;
          agents.add(AgentDirectoryEntry.fromJson(
            Map<String, dynamic>.from(item),
          ).withUnverifiedPresence());
        }
        return List.unmodifiable(agents);
      }
    } catch (_) {
      // Drift failure must not delay the independently starting live request.
    }

    // Read the old account-scoped cache on first launch after upgrade, or when
    // SQLite is temporarily unavailable on this handset.
    final previous = await _legacy.read(ownerId);
    if (previous != null && previous.isNotEmpty) {
      await write(ownerId, previous);
    }
    return previous;
  }

  @override
  Future<void> write(String ownerId, List<AgentDirectoryEntry> agents) async {
    if (ownerId.isEmpty) return;
    final payload = jsonEncode([
      for (final agent in agents) agent.withUnverifiedPresence().toJson(),
    ]);
    try {
      await _db.transaction(() async {
        await _db.customStatement(
          'DELETE FROM roster_cache WHERE owner_id <> ?', [ownerId],
        );
        await _db.customStatement(
          'INSERT INTO roster_cache (owner_id, payload) VALUES (?, ?) '
          'ON CONFLICT(owner_id) DO UPDATE SET payload=excluded.payload',
          [ownerId, payload],
        );
      });
      await _legacy.clear();
    } catch (_) {
      // Read-only cache failure is never fatal; retain the existing fallback.
      await _legacy.write(ownerId, agents);
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _db.customStatement('DELETE FROM roster_cache');
    } catch (_) {
      // A local cache must never block sign-out or the authorization denial.
    }
    await _legacy.clear();
  }
}
