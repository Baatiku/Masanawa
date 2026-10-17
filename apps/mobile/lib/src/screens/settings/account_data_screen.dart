import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/providers.dart';
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

  bool get _sameAccount {
    final s=ref.read(sessionProvider);
    return s is SessionSignedIn && s.user.id==_owner;
  }
  @override
  void initState() {
    super.initState();
    final s=ref.read(sessionProvider);
    if(s is SessionSignedIn)_owner=s.user.id;
    Future<void>.microtask(_refresh);
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

  Future<void> _export(bool financial) async {
    if(_exporting || !_sameAccount)return;
    final owner=_owner;
    setState(() {_exporting=true;_error=null;_progress='Preparing your export…';});
    File? file;
    IOSink? sink;
    try {
      final folder=await getTemporaryDirectory();
      final suffix=DateTime.now().microsecondsSinceEpoch;
      file=File('${folder.path}/masanawa-${financial?'wallet-statement':'conversations'}-$suffix.${financial?'csv':'json'}');
      sink=file.openWrite();
      final api=ref.read(apiClientProvider);
      if(financial) {
        final report=await api.exportFinancialStatement(
          from:_from==null?null:_day(_from!),
          to:_to==null?null:_day(_to!),
        );
        if(!_sameAccount || owner!=_owner)throw StateError('Account changed');
        sink.write(report['content'] as String? ?? '');
      }else{
        sink.write('{"format":"masanawa-conversations-v1","mediaFilesIncluded":false,'
          '"exportedAt":${jsonEncode(DateTime.now().toUtc().toIso8601String())},"messages":[');
        String? cursor;
        var first=true;
        var page=0;
        do {
          final response=await api.exportConversationPage(cursor:cursor);
          if(!_sameAccount || owner!=_owner)throw StateError('Account changed');
          final items=response['items'];
          if(items is! List)throw const FormatException('Invalid export response');
          for(final item in items){
            if(!first)sink.write(',');
            sink.write(jsonEncode(item));
            first=false;
          }
          cursor=response['nextCursor'] as String?;
          page++;
          if(mounted)setState(()=>_progress='Exporting conversations · page $page');
        }while(cursor!=null);
        sink.write(']}');
      }
      await sink.flush();
      await sink.close();
      sink=null;
      if(!mounted || !_sameAccount)throw StateError('Account changed');
      await SharePlus.instance.share(ShareParams(
        files:[XFile(file.path)],
        text:financial
          ? 'Masanawa wallet statement (activity, not an audited bank statement)'
          : 'Masanawa conversation text archive (media files not included)',
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
          Text(status=='active'?'Active':status=='pending_deletion'?
            'Account deletion requested — processing may depend on financial settlement':
            status=='suspended'?'Suspended — contact support to restore access':
            status=='archived'?'Archived':'Status unavailable'),
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
          _check('Display name',checks['displayName']==true,()=>context.push('/profile')),
          _check('Profile photo',checks['profilePhoto']==true,()=>context.push('/profile')),
          _check('Linked email address',checks['linkedEmail']==true,
            ()=>Navigator.of(context).push(MaterialPageRoute<void>(
              builder:(_)=>const VerifyAccountEmailScreen(),
            )).then((_)=>(_refresh()))),
          const SizedBox(height:24),
          Text('Request an account export',style:Theme.of(context).textTheme.titleLarge),
          const SizedBox(height:8),
          const Text('Conversation export contains text messages and replies; '
            'attached media files are not included. The export stays on your device '
            'until you choose an app to share it with.'),
          const SizedBox(height:12),
          FilledButton.icon(
            onPressed:_exporting?null:()=>_export(false),
            icon:const Icon(Icons.chat_bubble_outline),
            label:const Text('Export conversations (JSON)'),
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
