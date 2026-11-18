import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

enum StatusPostBodyMode { feed, detail, saved }

/// One readable body projection for feed, detail and Saved. Long feed text can
/// be expanded in place without treating See more as a post-navigation tap.
/// No body is cached across a changed account or post identity.
class StatusPostBody extends StatefulWidget {
  const StatusPostBody({
    super.key,
    required this.accountKey,
    required this.postId,
    required this.body,
    this.mode = StatusPostBodyMode.feed,
  });

  final String accountKey, postId, body;
  final StatusPostBodyMode mode;

  @override
  State<StatusPostBody> createState() => _StatusPostBodyState();
}

class _StatusPostBodyState extends State<StatusPostBody> {
  bool expanded = false;
  final List<TapGestureRecognizer> _linkRecognizers=[];

  @override void dispose(){for(final r in _linkRecognizers)r.dispose();super.dispose();}
  String get _storageId=>'status-expansion-${widget.accountKey}-${widget.postId}';
  @override void didChangeDependencies(){
    super.didChangeDependencies();
    final saved=PageStorage.maybeOf(context)?.readState(context,identifier:_storageId);
    if(saved is bool)expanded=saved;
  }

  Future<void> _openExternal(Uri url)async{
    final approved=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
      title:Text(t('Open external link?','Buɗe hanyar yanar gizo?')),
      content:Text('${url.host}\n${t('This link leaves Masanawa.','Wannan hanyar zata fita daga Masanawa.')}'),
      actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Cancel')),
        FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Open'))]));
    if(approved!=true||!mounted)return;
    if(!await launchUrl(url,mode:LaunchMode.externalApplication)&&mounted){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Could not open this link.')));
    }
  }

  TextSpan _linkedText(){
    for(final r in _linkRecognizers)r.dispose();
    _linkRecognizers.clear();
    final spans=<InlineSpan>[],text=widget.body;
    final matcher=RegExp(r'https?://[^\s<>()]+',caseSensitive:false);
    var offset=0,links=0;
    for(final found in matcher.allMatches(text)){
      if(links>=20)break;
      final raw=found.group(0)!;
      final clean=raw.replaceFirst(RegExp(r'[.,!?;:]+$'),'');
      final uri=Uri.tryParse(clean);
      if(uri==null||uri.scheme!='https'||uri.host.isEmpty||
        uri.userInfo.isNotEmpty||uri.hasPort||uri.host.length>253)continue;
      if(found.start>offset)spans.add(TextSpan(text:text.substring(offset,found.start)));
      final recognizer=TapGestureRecognizer()..onTap=()=>_openExternal(uri);
      _linkRecognizers.add(recognizer);
      spans.add(TextSpan(text:clean,recognizer:recognizer,
        style:TextStyle(color:Theme.of(context).colorScheme.primary,
          decoration:TextDecoration.underline)));
      offset=found.start+clean.length;
      links++;
    }
    if(offset<text.length)spans.add(TextSpan(text:text.substring(offset)));
    return TextSpan(children:spans);
  }

  Widget _bodyText(TextStyle? style,{int? maxLines,TextOverflow overflow=TextOverflow.clip})=>
    Text.rich(_linkedText(),style:style,maxLines:maxLines,overflow:overflow);

  @override
  void didUpdateWidget(covariant StatusPostBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountKey != widget.accountKey ||
        oldWidget.postId != widget.postId ||
        oldWidget.body != widget.body ||
        oldWidget.mode != widget.mode) {
      expanded = false;
    }
  }

  String t(String en, String ha) =>
      Localizations.localeOf(context).languageCode == 'ha' ? ha : en;

  @override
  Widget build(BuildContext context) {
    if (widget.body.isEmpty) return const SizedBox.shrink();
    final style = Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.4);
    if (widget.mode == StatusPostBodyMode.detail) {
      return _bodyText(style);
    }
    if (widget.mode == StatusPostBodyMode.saved) {
      return _bodyText(style,maxLines:4,overflow:TextOverflow.ellipsis);
    }

    return LayoutBuilder(builder: (context, constraints) {
      final measurement = TextPainter(
        text: TextSpan(text: widget.body, style: style),
        textDirection: Directionality.of(context),
        textScaler: MediaQuery.textScalerOf(context),
        maxLines: 5,
      )..layout(maxWidth: constraints.maxWidth);
      final truncated = measurement.didExceedMaxLines;
      measurement.dispose();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bodyText(style,
              maxLines: expanded ? null : 5,
              overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis),
          if (truncated)
            TextButton(
              onPressed: () {setState(() => expanded = !expanded);
                PageStorage.maybeOf(context)?.writeState(context,expanded,identifier:_storageId);},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                minimumSize: const Size(0, 48),
              ),
              child: Text(expanded
                  ? t('See less', 'Nuna kadan')
                  : t('See more', 'Nuna kari')),
            ),
        ],
      );
    });
  }
}
