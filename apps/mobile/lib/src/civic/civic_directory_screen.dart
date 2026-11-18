import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/masanawa_theme.dart';
import 'civic_catalog.dart';

/// WhatsApp-like compact directory, backed by attributed public reference
/// records. This is separate from the account-scoped live AI Character roster.
class CivicDirectoryScreen extends StatefulWidget {
  const CivicDirectoryScreen({super.key,this.initialCategory = 'All'});
  final String initialCategory;

  @override
  State<CivicDirectoryScreen> createState() => _CivicDirectoryScreenState();
}

class _CivicDirectoryScreenState extends State<CivicDirectoryScreen> {
  final _search = TextEditingController();
  String _category = 'All';
  String _sector = 'All';
  String _query = '';

  @override
  void initState() {
    super.initState();
    if (const ['All','People','Agencies','Government','Directorates','History'].contains(widget.initialCategory)) {
      _category = widget.initialCategory;
    }
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final results = searchCivicDirectory(query: _query, category: _category, sector: _sector);
    final sectors = <String>{'All', ...civicCatalog.map((e) => e.sector)}.toList()..sort();
    return Scaffold(
      backgroundColor: colors.surfaceBg,
      appBar: AppBar(title: const Text('Explore Nigeria')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 8),
          child: TextField(
            controller: _search,
            onChanged: (value) => setState(() => _query = value),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Search people, agencies and responsibilities',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: _query.isEmpty ? null : IconButton(
                tooltip: 'Clear search',
                icon: const Icon(Icons.close),
                onPressed: () => setState(() { _search.clear(); _query = ''; }),
              ),
              isDense: true,
              filled: true,
              fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide:BorderSide.none),
            ),
          ),
        ),
        SizedBox(
          height: 47,
          child: ListView(scrollDirection: Axis.horizontal, padding: const EdgeInsets.symmetric(horizontal: 12), children: [
            for (final category in const ['All','People','Agencies','Government','Directorates','History'])
              Padding(padding: const EdgeInsets.symmetric(horizontal: 3),child: ChoiceChip(
                label: Text(category), selected: _category == category,
                onSelected: (_) => setState(() => _category = category),
              )),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
          child: Row(children: [
            Expanded(child: Text('${results.length} civic profiles',style:TextStyle(color:colors.textMuted,fontSize:13))),
            PopupMenuButton<String>(
              tooltip:'Filter by sector',
              onSelected: (value) => setState(() => _sector = value),
              itemBuilder: (_) => [for(final sector in sectors) PopupMenuItem(value:sector,child:Text(sector))],
              child: Row(mainAxisSize:MainAxisSize.min,children:[const Icon(Icons.tune,size:18),const SizedBox(width:6),Text(_sector == 'All' ? 'All sectors' : _sector)]),
            ),
          ]),
        ),
        Expanded(child: results.isEmpty
          ? const Center(child:Padding(padding:EdgeInsets.all(24),child:Text('No matching civic profiles. Try another search or category.',textAlign:TextAlign.center)))
          : ListView.separated(
              key: PageStorageKey('civic-$_category-$_sector-$_query'),
              padding: const EdgeInsets.only(bottom: 90),
              itemCount: results.length,
              separatorBuilder: (_, __) => Divider(height:1,indent:76,color:colors.structuralBorder),
              itemBuilder: (context,index) => CivicDirectoryTile(entry:results[index]),
            ),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(16,8,16,12),child:Text(
          'Independent AI civic guide · not an official government service. Profiles cite public sources.',
          textAlign:TextAlign.center,style:TextStyle(fontSize:11,color:colors.textMuted),
        )),
      ]),
    );
  }
}

class CivicDirectoryTile extends StatelessWidget {
  const CivicDirectoryTile({super.key,required this.entry});
  final CivicEntry entry;

  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final icon = switch(entry.kind) {
      CivicKind.person => Icons.person_outline,
      CivicKind.institution => Icons.account_balance_outlined,
      CivicKind.office => Icons.assured_workload_outlined,
      CivicKind.department => Icons.account_tree_outlined,
      CivicKind.jurisdiction => Icons.map_outlined,
    };
    return ListTile(
      key:ValueKey('civic-${entry.id}'),
      contentPadding:const EdgeInsets.symmetric(horizontal:14,vertical:4),
      leading: CircleAvatar(radius:23,backgroundColor: colors.brand.withValues(alpha:0.10),child:Icon(icon,color:colors.brand)),
      title:Text(entry.name,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontSize:15.5,fontWeight:FontWeight.w600)),
      subtitle:Text('${entry.shortName == null ? entry.category : '${entry.shortName} · ${entry.category}'} · ${entry.level}',maxLines:1,overflow:TextOverflow.ellipsis),
      trailing:const Icon(Icons.chevron_right,size:20),
      onTap:() => context.push('/civic/${Uri.encodeComponent(entry.id)}'),
    );
  }
}
