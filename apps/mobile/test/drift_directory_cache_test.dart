import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/agent_directory_cache.dart';
import 'package:masanawa/src/agents/drift_directory_cache.dart';

class EmptyLegacy implements AgentDirectoryCache {
  @override Future<List<AgentDirectoryEntry>?> read(String ownerId) async=>null;
  @override Future<void> write(String ownerId,List<AgentDirectoryEntry> agents)async{}
  @override Future<void> clear()async{}
}
AgentDirectoryEntry row(String name)=>AgentDirectoryEntry(
  characterId:'masana_$name',characterVersionId:'version1',
  displayName:name,roleLabel:'Professor',about:'An approved professional',
  presence:AgentPresence.available,
);
void main(){
  test('Drift directory metadata is scoped to active account and evicted on switch',()async{
    final cache=DriftAgentDirectoryCache(
      executor:NativeDatabase.memory(),legacy:EmptyLegacy());
    addTearDown(cache.close);
    await cache.write('account-a',[row('amina')]);
    expect((await cache.read('account-a'))?.single.displayName,'amina');
    expect((await cache.read('account-a'))?.single.presence,AgentPresence.unknown);
    expect(await cache.read('account-b'),isNull);
    await cache.write('account-b',[row('mei')]);
    expect(await cache.read('account-a'),isNull);
    expect((await cache.read('account-b'))?.single.displayName,'mei');
    await cache.clear();
    expect(await cache.read('account-b'),isNull);
  });
}
