import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/providers.dart';
import '../../account/conversation_archive.dart';
import '../../state/session_state.dart';
import 'verify_account_email_screen.dart';

/// Account-owned exports remain local until the user chooses a share target.
class AccountDataScreen extends ConsumerStatefulWidget {
  const AccountDataScreen({super.key});
  @override
  ConsumerState<AccountDataScreen> createState()=>_AccountDataScreenState();
}

class _AccountDataScreenState extends ConsumerState<AccountDataScreen> {
  Map<String,dynamic>? _summary;
  String? _error;
  bool _loading=true;
  bool _exporting=false;
  String? _progress;
  DateTime? _from;
  DateTime? _to;
  String? _owner;
  int _epoch=0;
  int _accountGeneration=0;
  late final ProviderSubscription<SessionState> _sessionSubscription;

  bool get _sameAccount {
    final s=ref.read(sessionProvider);
    return s is SessionSignedIn && s.user.id==_owner;
  }
  @override
  void initState() {
    super.initState();
    final s=ref.read(sessionProvider);
    if(s is SessionSignedIn)_owner=s.user.id;
    _sessionSubscription=ref.listenManual<SessionState>(sessionProvider,(previous,next){
      final before=previous is SessionSignedIn?previous.user.id:null;
      final after=next is SessionSignedIn?next.user.id:null;
      if(before!=after){
        _accountGeneration++;
        _epoch++;
        if(mounted)setState((){_summary=null;_loading=false;});
      }
    });
    Future<void>.microtask(_refresh);
  }

  @override
  void dispose(){
    _accountGeneration++;
    _sessionSubscription.close();
    super.dispose();
  }

  Future<void> _refresh() async {
    final epoch=++_epoch;
    if(!_sameAccount)return;
    setState(() {_loading=true;_error=null;});
    try {
      final summary=await ref.read(apiClientProvider).accountSummary();
      if(!mounted || !_sameAccount || epoch!=_epoch)return;
      setState(() {_summary=summary;_loading=false;});
    }catch(_) {
      if(mounted && _sameAccount && epoch==_epoch)setState(() {
        _loading=false;_error='Account details are temporarily unavailable. Retry when online.';
      });
    }
  }

  Future<void> _exportAccountDetails() async {
    if(_exporting || !_sameAccount)return;
    final owner=_owner;
    setState(() {
      _exporting=true;_error=null;_progress='Preparing personal account details…';
    });
    File? file;
    try{
      final result=await ref.read(apiClientProvider).exportPersonalAccountData();
      if(!mounted||!_sameAccount||owner!=_owner)
        throw StateError('Account changed');
      final directory=await getTemporaryDirectory();
      file=File('${directory.path}/masanawa-account-${DateTime.now().microsecondsSinceEpoch}.json');
      await file.writeAsString(const JsonEncoder.withIndent('  ').convert(result),
        flush:true);
      if(!mounted||!_sameAccount||owner!=_owner)
        throw StateError('Account changed');
      await SharePlus.instance.share(ShareParams(
        files:[XFile(file.path)],
        text:'Masanawa private account details. Contains personal contact information.',
      ));
    }catch(_){
      if(mounted&&_sameAccount)setState(()=>
        _error='Account export failed. Check your connection and try again.');
    }finally{
      try{
        if(file!=null&&await file.exists())await file.delete();
      }catch(_){}
      if(mounted)setState(() {_exporting=false;_progress=null;});
    }
  }

  Future<void> _exportConversations() async {
    if(_exporting||!_sameAccount)return;
    final generation=_accountGeneration;
    bool current()=>mounted&&_sameAccount&&generation==_accountGeneration;
    setState((){_exporting=true;_error=null;_progress='Preparing conversations and media…';});
    Directory? directory;
    try{
      final temporary=await getTemporaryDirectory();
      if(!current())throw StateError('Account changed');
      directory=await temporary.createTemp('masanawa-conversation-export-');
      final result=await createConversationArchive(
        directory:directory,
        source:GatewayConversationArchiveSource(ref.read(apiClientProvider)),
        isCurrent:current,
        onProgress:(messages,media){
          if(current())setState(()=>_progress='Exporting $messages messages · $media media files');
        },
      );
      if(!current())throw StateError('Account changed');
      await SharePlus.instance.share(ShareParams(
        files:[XFile(result.file.path)],
        text:'Masanawa private conversation archive. ${result.mediaCount} media files included; '
          '${result.unavailableCount} unavailable or limited. See conversations.json for details.',
      ));
    }catch(_){
      if(current())setState(()=>_error='Conversation export could not be completed. '
        'Check your connection and available storage, then retry.');
    }finally{
      try{if(directory!=null&&await directory.exists())await directory.delete(recursive:true);}catch(_){}
      if(mounted)setState((){_exporting=false;_progress=null;});
    }
  }

  Future<void> _export(bool financial) async {
    if(!financial)return _exportConversations();
    if(_exporting || !_sameAccount)return;
    final owner=_owner;
    setState(() {_exporting=true;_error=null;_progress='Preparing your export…';});
    File? file;
    IOSink? sink;
    try {
      final folder=await getTemporaryDirectory();
      final suffix=DateTime.now().microsecondsSinceEpoch;
      file=File('${folder.path}/masanawa-wallet-statement-$suffix.csv');
      sink=file.openWrite();
      final api=ref.read(apiClientProvider);
      if(financial) {
        final report=await api.exportFinancialStatement(
          from:_from==null?null:_day(_from!),
          to:_to==null?null:_day(_to!),
        );
        if(!_sameAccount || owner!=_owner)throw StateError('Account changed');
        sink.write(report['content'] as String? ?? '');
      }
      await sink.flush();
      await sink.close();
      sink=null;
      if(!mounted || !_sameAccount)throw StateError('Account changed');
      await SharePlus.instance.share(ShareParams(
        files:[XFile(file.path)],
        text:'Masanawa wallet statement (activity, not an audited bank statement)',
      ));
      if(mounted)setState(()=>_progress=null);
    }catch(_) {
      if(mounted && _sameAccount)setState(() {
        _error='Export could not be completed. Try again or choose a shorter date range for wallet activity.';
      });
    }finally{
      try{await sink?.close();}catch(_){}
      try{if(file!=null && await file.exists())await file.delete();}catch(_){}
      if(mounted)setState(() {_exporting=false;_progress=null;});
    }
  }

  static String _day(DateTime d)=>
    '${d.year.toString().padLeft(4,'0')}-${d.month.toString().padLeft(2,'0')}-${d.day.toString().padLeft(2,'0')}';

  Future<void> _chooseDate(bool start) async {
    final d=await showDatePicker(context:context,
      firstDate:DateTime(2020),lastDate:DateTime.now(),
      initialDate:(start?_from:_to)??DateTime.now());
    if(d!=null && mounted)setState((){
      if(start)_from=d;else _to=d;
    });
  }

  Widget _check(String label,bool complete,VoidCallback onTap) => ListTile(
    dense:true,
    leading:Icon(complete?Icons.check_circle_outline:Icons.radio_button_unchecked,
      color:complete?Colors.green:null),
    title:Text(label),
    trailing:complete?null:const Icon(Icons.chevron_right),
    onTap:complete?null:onTap,
  );

  @override
  Widget build(BuildContext context) {
    final status=_summary?['state'] as String? ?? 'unavailable';
    final checks=(_summary?['profileCompletion'] as Map?) ?? const {};
    return Scaffold(
      appBar:AppBar(title:const Text('Account and my data')),
      body:RefreshIndicator(
        onRefresh:_refresh,
        child:ListView(padding:const EdgeInsets.all(16),children:[
          Text('Account status',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:8),
          Text(status=='active'?'Active':
            status=='restricted'?'Restricted — financial actions are unavailable. Contact support.':
            status=='recovery'?'Account recovery — financial actions paused for security':
            status=='pending_deletion'?
              'Pending deletion — financial settlement and data-retention checks continue':
            status=='suspended'?'Suspended — please contact support for reinstatement':
            status=='archived'?'Archived — sign-in access may be unavailable':
            'Status unavailable'),
          if(_summary?['recoveryMessage'] is String)
            Padding(padding:const EdgeInsets.only(top:8),
              child:Text(_summary!['recoveryMessage'] as String)),
          if(_loading)const LinearProgressIndicator(),
          if(_error!=null) ...[
            const SizedBox(height:8),
            Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
            TextButton.icon(onPressed:_refresh,icon:const Icon(Icons.refresh),
              label:const Text('Retry')),
          ],
          const SizedBox(height:24),
          Text('Complete your profile',style:Theme.of(context).textTheme.titleLarge),
          const Text('You can complete optional details later. Financial services may need additional verified identity.'),
          _check('Display name',checks['displayName']==true,()=>context.push('/profile').then((_)=>_refresh())),
          _check('Profile photo',checks['profilePhoto']==true,()=>context.push('/profile').then((_)=>_refresh())),
          _check('Linked email address',checks['linkedEmail']==true,
            ()=>Navigator.of(context).push(MaterialPageRoute<void>(
              builder:(_)=>const VerifyAccountEmailScreen(),
            )).then((_)=>(_refresh()))),
          const SizedBox(height:24),
          Text('Request an account export',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:8),
          const Text('Account details include your profile, verified contact details, '
            'current signed-in devices and up to 100 recent security events. '
            'Your PIN, codes and session tokens are excluded.'),
          const SizedBox(height:12),
          FilledButton.icon(
            key:const Key('account-personal-data-export'),
            onPressed:_exporting?null:_exportAccountDetails,
            icon:const Icon(Icons.person_outline),
            label:const Text('Export my account details (JSON)'),
          ),
          const SizedBox(height:24),
          const Text('Conversation archive',
            style:TextStyle(fontSize:17,fontWeight:FontWeight.w600)),
          const SizedBox(height:8),
          const Text('Export messages, replies and available private attachments as a ZIP. '
            'Expired or missing media and export limits are listed in the archive. '
            'Maximum 128 MiB, 4,096 files and 100,000 messages. '
            'Choose a share target to save your archive; temporary files are then removed.'),
          const SizedBox(height:12),
          FilledButton.icon(
            onPressed:_exporting?null:()=>_export(false),
            icon:const Icon(Icons.chat_bubble_outline),
            label:const Text('Export conversations and media (ZIP)'),
          ),
          const SizedBox(height:24),
          const Text('Wallet activity statement',style:TextStyle(fontSize:17,fontWeight:FontWeight.w600)),
          const Text('This statement reports wallet transactions and their status. '
            'It is not an audited financial statement or proof of a bank balance.'),
          Wrap(spacing:8,children:[
            OutlinedButton(
              onPressed:_exporting?null:()=>_chooseDate(true),
              child:Text(_from==null?'Start date':_day(_from!)),
            ),
            OutlinedButton(
              onPressed:_exporting?null:()=>_chooseDate(false),
              child:Text(_to==null?'End date':_day(_to!)),
            ),
            if(_from!=null || _to!=null)TextButton(
              onPressed:_exporting?null:()=>setState(() {_from=null;_to=null;}),
              child:const Text('Clear dates')),
          ]),
          const SizedBox(height:12),
          FilledButton.icon(
            onPressed:_exporting?null:()=>_export(true),
            icon:const Icon(Icons.receipt_long_outlined),
            label:const Text('Export wallet statement (CSV)'),
          ),
          if(_exporting) ...[
            const SizedBox(height:12),
            const LinearProgressIndicator(),
            Text(_progress??'Exporting…'),
          ],
          const SizedBox(height:24),
        ]),
      ),
    );
  }
}
