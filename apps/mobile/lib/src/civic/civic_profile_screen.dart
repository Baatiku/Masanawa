import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../agents/agent_directory.dart';
import '../state/agent_directory_state.dart';
import '../state/ai_chat_state.dart';
import '../theme/masanawa_theme.dart';
import 'civic_catalog.dart';
import 'civic_directory_screen.dart';

/// Reference profiles never claim to be official channels. A paid AI chat is
/// offered only for an independently admitted, currently visible Character.
class CivicProfileScreen extends ConsumerWidget {
  const CivicProfileScreen({super.key,required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entry = civicById(id);
    if (entry == null) return Scaffold(
      appBar:AppBar(title:const Text('Civic profile')),
      body:const Center(child:Text('This civic record is unavailable.')),
    );
    final theme = Theme.of(context);
    final colors = context.masanawa;
    final parent = entry.parentId == null ? null : civicById(entry.parentId!);
    final children = civicChildren(entry.id);
    final agents = ref.watch(agentDirectoryProvider).agents;
    // No name-only, fuzzy or institution-name impersonation binding.
    // Person links require reviewed official identity; institution links use
    // the independently approved canonical agency ID from the server.
    AgentDirectoryEntry? matched;
    for (final agent in agents) {
      if (entry.kind == CivicKind.institution &&
          agent.civicAgencyId == entry.id) {
        matched = agent;
        break;
      }
      if (entry.kind == CivicKind.person &&
          agent.publicOfficial?.current == true &&
            agent.publicOfficial?.officialName.toLowerCase() == entry.name.toLowerCase() &&
            agent.publicOfficialSimulation) {
          matched = agent;
          break;
      }
    }
    final admitted = matched;
    return DefaultTabController(
      length:3,
      child:Scaffold(
        backgroundColor:colors.surfaceBg,
        appBar:AppBar(title:Text(entry.shortName ?? 'Civic profile'),actions:[
          IconButton(tooltip:'Explore more civic profiles',icon:const Icon(Icons.account_balance_outlined),onPressed:()=>context.push('/civic')),
        ]),
        body:NestedScrollView(
          headerSliverBuilder:(context,_) => [SliverToBoxAdapter(child:Padding(
            padding:const EdgeInsets.fromLTRB(20,24,20,18),
            child:Column(crossAxisAlignment:CrossAxisAlignment.center,children:[
              CircleAvatar(radius:48,backgroundColor:colors.brand.withValues(alpha:0.1),child:Icon(
                entry.kind == CivicKind.person ? Icons.person_outline : Icons.account_balance_outlined,
                size:52,color:colors.brand,
              )),
              const SizedBox(height:16),
              Text(entry.name,textAlign:TextAlign.center,style:theme.textTheme.headlineSmall?.copyWith(fontWeight:FontWeight.bold)),
              const SizedBox(height:8),
              Text('${entry.category} · ${entry.level} · ${entry.sector}',textAlign:TextAlign.center,style:TextStyle(color:colors.textMuted)),
              const SizedBox(height:9),
              const Row(mainAxisAlignment:MainAxisAlignment.center,children:[
                Icon(Icons.smart_toy_outlined,size:15),SizedBox(width:5),
                Flexible(child:Text('Independent AI reference · not government affiliated',style:TextStyle(fontSize:11))),
              ]),
              const SizedBox(height:16),
              if (parent != null) OutlinedButton.icon(
                onPressed:()=>context.push('/civic/${parent.id}'),
                icon:const Icon(Icons.account_tree_outlined,size:18),
                label:Text('Part of ${parent.name}',maxLines:2,textAlign:TextAlign.center),
              ),
              const SizedBox(height:8),
              if (admitted != null) FilledButton.icon(
                onPressed:() {
                  ref.read(aiChatProvider.notifier).seedGreeting(admitted.characterId,admitted.greeting);
                  context.push('/chat/${Uri.encodeComponent(admitted.characterId)}');
                },
                icon:const Icon(Icons.chat_outlined),label:const Text('Chat with AI persona · ₦2/reply'),
              ) else Container(
                padding:const EdgeInsets.all(12),
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(12),color:theme.colorScheme.surfaceContainerHighest),
                child:const Row(children:[Icon(Icons.info_outline,size:19),SizedBox(width:10),
                  Expanded(child:Text('Read the verified reference below. An independent AI chat for this profile is not yet available.',style:TextStyle(fontSize:12.5))),
                ]),
              ),
            ]),
          )),
          SliverPersistentHeader(pinned:true,delegate:_CivicTabsDelegate(
            color:theme.colorScheme.surface,tabBar:const TabBar(tabs:[
              Tab(text:'About'),Tab(text:'Work & history'),Tab(text:'Sources'),
            ]),
          )),
          ],
          body:TabBarView(children:[
            _CivicTab(children:[
              _Section(title:'Overview',child:SelectableText(entry.summary,style:theme.textTheme.bodyLarge?.copyWith(height:1.55))),
              if (entry.tenures.isNotEmpty) _Section(title:'Offices held',child:Column(children:[
                for (final t in entry.tenures) _LineItem(icon:Icons.history_toggle_off,title:t.title,subtitle:'${t.from} — ${t.to}'),
              ])),
              if (entry.deceased) const _LineItem(icon:Icons.history,title:'Historical figure',subtitle:'Deceased; historical AI representation, not the living person'),
              if (parent != null) _Section(title:'Part of',child:CivicDirectoryTile(entry:parent)),
              if (children.isNotEmpty) _Section(title:'Explore related offices and directorates',child:Column(children:[for(final child in children) CivicDirectoryTile(entry:child)])),
            ]),
            _CivicTab(children:[
              if (entry.responsibilities.isNotEmpty) _Section(title:'Mandate and responsibilities',child:Column(children:[
                for (final text in entry.responsibilities) _LineItem(icon:Icons.check_circle_outline,title:text),
              ])),
              if (entry.services.isNotEmpty) _Section(title:'Citizen services',child:Column(children:[
                for(final text in entry.services) _LineItem(icon:Icons.people_outline,title:text),
              ])),
              if (entry.initiatives.isNotEmpty) _Section(title:'Documented initiatives',child:Column(children:[
                for(final text in entry.initiatives) _LineItem(icon:Icons.fact_check_outlined,title:text),
              ])),
              if (entry.tenures.isNotEmpty) _Section(title:'Career timeline',child:Column(children:[
                for(final t in entry.tenures) _LineItem(icon:Icons.timeline,title:t.title,subtitle:'${t.from} – ${t.to}'),
              ])),
              if (entry.responsibilities.isEmpty && entry.services.isEmpty && entry.initiatives.isEmpty && entry.tenures.isEmpty)
                const _Section(title:'Record status',child:Text('Detailed responsibilities, achievements and public ambitions are being reviewed. Nothing is inferred without a source.')),
              if (entry.kind == CivicKind.person) const _Section(title:'Achievements and ambitions',
                child:Text('Only sourced achievements, policy commitments and ambitions will appear here. A term in office alone is not evidence of an achievement.')),
            ]),
            _CivicTab(children:[
              _Section(title:'Primary reference',child:ListTile(
                contentPadding:EdgeInsets.zero,
                title:Text(Uri.parse(entry.sourceUrl).host),
                subtitle:Text(entry.sourceUrl),
                trailing:const Icon(Icons.open_in_new),
                onTap:()=>_openSource(context,entry.sourceUrl),
              )),
              if (entry.website != null) _Section(title:'Organisation website',child:ListTile(
                contentPadding:EdgeInsets.zero,
                title:Text(Uri.parse(entry.website!).host),
                trailing:const Icon(Icons.open_in_new),
                onTap:()=>_openSource(context,entry.website!),
              )),
              _Section(title:'Review information',child:Text(
                'Reference catalogue revision: ${entry.updatedAt}. Profiles are informational summaries; officeholders, structures and public services may change. Verify instructions on the official site.',
              )),
              const _Section(title:'Identity',child:Text(
                'Masanawa is an independent educational service. These profiles are neither government-verified accounts nor a channel for official applications, payments or complaints.',
              )),
            ]),
          ]),
        ),
      ),
    );
  }

  Future<void> _openSource(BuildContext context,String value) async {
    final uri = Uri.tryParse(value);
    if (uri == null || uri.scheme != 'https' || uri.userInfo.isNotEmpty) return;
    final success = await launchUrl(uri,mode:LaunchMode.externalApplication);
    if (!success && context.mounted) ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content:Text('The source could not be opened.')),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title,required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) => Padding(
    padding:const EdgeInsets.only(bottom:26),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(title,style:Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight:FontWeight.bold)),
      const SizedBox(height:10),child,
    ]),
  );
}

class _LineItem extends StatelessWidget {
  const _LineItem({required this.icon,required this.title,this.subtitle});
  final IconData icon;
  final String title;
  final String? subtitle;
  @override
  Widget build(BuildContext context) => ListTile(
    contentPadding:EdgeInsets.zero,dense:true,leading:Icon(icon,size:20),
    title:Text(title),subtitle:subtitle == null ? null : Text(subtitle!),
  );
}

class _CivicTab extends StatelessWidget {
  const _CivicTab({required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => ListView(padding:const EdgeInsets.fromLTRB(20,24,20,80),children:children);
}

class _CivicTabsDelegate extends SliverPersistentHeaderDelegate {
  const _CivicTabsDelegate({required this.tabBar,required this.color});
  final TabBar tabBar;
  final Color color;
  @override double get minExtent => tabBar.preferredSize.height;
  @override double get maxExtent => tabBar.preferredSize.height;
  @override bool shouldRebuild(_CivicTabsDelegate oldDelegate) => oldDelegate.color != color;
  @override Widget build(BuildContext context,double shrinkOffset,bool overlapsContent) => ColoredBox(color:color,child:tabBar);
}
