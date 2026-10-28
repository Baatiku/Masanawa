import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers.dart';
import '../../core/phone/country_codes.dart';
import '../../core/phone/country_subdivisions.dart';
import '../../state/session_state.dart';
import '../../ui/components/phone_field.dart';

/// Private account details, not public profile or verified sign-in identity.
class AccountContactRegionScreen extends ConsumerStatefulWidget {
  const AccountContactRegionScreen({super.key});
  @override ConsumerState<AccountContactRegionScreen> createState()=>_AccountContactRegionScreenState();
}
class _AccountContactRegionScreenState extends ConsumerState<AccountContactRegionScreen>{
  final _phone=TextEditingController();
  CountrySubdivisions? _regions;
  PhoneCountry _country=kDefaultCountry;
  String? _subdivision,_error,_provenance;
  bool _loading=true,_saving=false;
  String? _owner;
  int _epoch=0;
  bool _same(int epoch){
    final session=ref.read(sessionProvider);
    return mounted&&epoch==_epoch&&session is SessionSignedIn&&
      session.user.id==_owner;
  }
  @override void initState(){super.initState();
    final session=ref.read(sessionProvider);
    _owner=session is SessionSignedIn?session.user.id:null;
    WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)_load();});
  }
  @override void dispose(){_epoch++;_phone.dispose();super.dispose();}
  Future<void> _load() async{
    final epoch=++_epoch;
    setState((){_loading=true;_error=null;});
    try{
      final regions=await CountrySubdivisions.load();
      final data=await ref.read(apiClientProvider).contactGeography();
      if(!_same(epoch))return;
      final iso=data['countryIso'];
      final selected=kPhoneCountries.where((c)=>c.iso==iso).firstOrNull??kDefaultCountry;
      final region=data['subdivisionIso'] as String?;
      setState((){
        _regions=regions;_country=selected;
        _subdivision=regions.forCountry(selected.iso).any((s)=>s.code==region)?region:null;
        _phone.text=(data['contactPhone'] as String?)??'+${selected.dialCode}';
        _provenance=data['provenance'] as String?;
        _loading=false;
      });
    }catch(_){if(_same(epoch))setState((){
      _loading=false;_error='Cannot load private contact details. Retry when online.';
    });}
  }
  Future<void> _save()async{
    if(_saving||_loading)return;
    final phone=normalizeE164(_phone.text,country:_country);
    final options=_regions?.forCountry(_country.iso)??const <PhoneSubdivision>[];
    if(!isPlausibleSignupContact(phone,_country)||_regions==null||
      (options.isNotEmpty&&!options.any((s)=>s.code==_subdivision))){
      setState(()=>_error='Check your phone and select your state or region.');return;
    }
    final epoch=_epoch;
    setState((){_saving=true;_error=null;});
    try{
      await ref.read(apiClientProvider).updateContactGeography(contactPhone:phone,
        countryIso:_country.iso,subdivisionIso:_subdivision);
      if(!_same(epoch))return;
      setState((){_provenance='user_selected';_saving=false;});
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Private contact region saved.')));
    }catch(_){if(_same(epoch))setState((){
      _saving=false;_error='Save outcome is unknown. Refresh the stored details before retrying.';
    });}
  }
  @override Widget build(BuildContext context){
    ref.listen(sessionProvider,(previous,next){
      if(next is! SessionSignedIn||next.user.id!=_owner){
        _epoch++;Navigator.of(context).maybePop();
      }
    });
    final options=_regions?.forCountry(_country.iso)??const <PhoneSubdivision>[];
    return Scaffold(appBar:AppBar(title:const Text('Private contact & region')),
      body:ListView(padding:const EdgeInsets.all(16),children:[
        const Text('Your country and state are self-selected. The contact number is not verified for sign-in, and this is not permission for location-based ads.'),
        const SizedBox(height:12),
        if(_loading)const LinearProgressIndicator(),
        if(!_loading&&_regions!=null)...[
          const Text('Contact phone'),const SizedBox(height:6),
          PhoneField(key:ValueKey('private-contact-${_country.iso}'),
            controller:_phone,initialCountry:_country,enabled:!_saving,
            nationalEntry:true,
            onCountryChanged:(selected)=>setState((){
              _country=selected;_subdivision=null;
            })),
          const SizedBox(height:12),
          if(options.isNotEmpty)DropdownButtonFormField<String>(
            key:ValueKey('private-region-${_country.iso}'),
            initialValue:_subdivision,isExpanded:true,
            decoration:const InputDecoration(labelText:'State / province / region',
              border:OutlineInputBorder()),
            items:[for(final region in options)DropdownMenuItem(
              value:region.code,child:Text(region.name,overflow:TextOverflow.ellipsis))],
            onChanged:_saving?null:(value)=>setState(()=>_subdivision=value),
          )else const Text('No listed subdivisions for this country.'),
          const SizedBox(height:12),
          Text('Recorded source: ${_provenance=='user_selected'?'Your selection':
            _provenance=='legacy_phone_hint'?'Legacy phone-code hint':'Not yet confirmed'}'),
          const Text('Wallet funding and mobile data remain Nigeria-only until providers qualify other countries.'),
          const SizedBox(height:12),
          FilledButton(onPressed:_saving?null:_save,
            child:Text(_saving?'Saving…':'Save private contact')),
        ],
        if(_error!=null)...[
          Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error)),
          TextButton.icon(onPressed:_saving?null:_load,icon:const Icon(Icons.refresh),
            label:const Text('Refresh saved details')),
        ],
      ]));
  }
}
