import '../../finance/bill_beneficiary_book.dart';
import '../../tokens/feature_colors.dart';
import 'dart:async';
import '../../finance/wallet_flow_page.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/api/billing_models.dart';
import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';
import '../../finance/msnw_paystack_funding_sheet.dart';
import '../../finance/msnw_billing_checkout.dart';
import '../../theme/masanawa_theme.dart';

BillCategory? billingCategoryForHomeService(
  List<BillCategory> categories,
  String? service,
) {
  final initial = service?.trim().toLowerCase();
  if (initial == null || initial.isEmpty) return null;
  final terms = switch (initial) {
    'data' => const ['data', 'internet', 'mobile_data'],
    'airtime' => const ['airtime', 'air time', 'mobile recharge'],
    'electricity' => const ['electricity', 'power'],
    'tv' => const ['tv', 'cable', 'television'],
    _ => <String>[initial],
  };
  for (final value in categories) {
    final haystack = '${value.code} ${value.name}'.toLowerCase();
    if (terms.any(haystack.contains)) return value;
  }
  return null;
}

String? normalizeNigerianBillingPhone(String input) {
  if (!RegExp(r'^\+?[0-9 ()-]+$').hasMatch(input)) return null;
  var value = input.replaceAll(RegExp(r'[ ()-]'), '');
  if (value.startsWith('+234')) value = '0${value.substring(4)}';
  else if (value.startsWith('234')) value = '0${value.substring(3)}';
  return RegExp(r'^0[789][01][0-9]{8}$').hasMatch(value) ? value : null;
}

enum NigerianNetwork {
  mtn('MTN', MasanawaFeatureColors.mtnYellow, MasanawaFeatureColors.black),
  airtel('Airtel', MasanawaFeatureColors.airtelRed, MasanawaFeatureColors.white),
  glo('Glo', MasanawaFeatureColors.gloGreen, MasanawaFeatureColors.white),
  nineMobile('9mobile', MasanawaFeatureColors.nineMobileGreen, MasanawaFeatureColors.white);

  const NigerianNetwork(this.label, this.brandColor, this.textColor);
  final String label;
  final Color brandColor;
  final Color textColor;
}

NigerianNetwork? detectNetworkFromPhone(String phone) {
  final clean = phone.replaceAll(RegExp(r'\D'), '');
  String prefix = '';
  if (clean.startsWith('234') && clean.length >= 6) {
    prefix = '0${clean.substring(3, 6)}';
  } else if (clean.startsWith('0') && clean.length >= 4) {
    prefix = clean.substring(0, 4);
  }
  if (prefix.isEmpty) return null;

  const mtn = {'0803', '0806', '0703', '0706', '0813', '0816', '0810', '0814', '0903', '0906', '0913', '0916'};
  const airtel = {'0802', '0808', '0708', '0812', '0701', '0902', '0901', '0904', '0907', '0912'};
  const glo = {'0805', '0807', '0705', '0815', '0811', '0905', '0915'};
  const nineMobile = {'0809', '0817', '0818', '0909', '0908'};

  if (mtn.contains(prefix)) return NigerianNetwork.mtn;
  if (airtel.contains(prefix)) return NigerianNetwork.airtel;
  if (glo.contains(prefix)) return NigerianNetwork.glo;
  if (nineMobile.contains(prefix)) return NigerianNetwork.nineMobile;
  return null;
}

/// Repeating a bill never reuses an expired amount or historical package.
BillItem? billingCurrentRepeatProduct(
  List<BillItem> currentItems,
  BillingQuote historical,
) {
  final matches=currentItems.where((candidate) =>
    candidate.itemCode==historical.itemCode &&
    candidate.billerCode==historical.billerCode &&
    candidate.currency.toUpperCase()==historical.currency.toUpperCase(),
  ).toList(growable:false);
  return matches.length==1?matches.first:null;
}

/// A recent receipt is advisory only: the Gateway remains the authority for
/// duplicate admission, fulfillment status, fees and new purchase approval.
/// Unknown/pending operations should be reconciled under their original ID.
class BillingRepeatRisk {
  const BillingRepeatRisk(this.receipt, {required this.pending});
  final BillingCheckoutView receipt;
  final bool pending;
}

int? _fixedBillKobo(String amount) {
  if (!RegExp(r'^[0-9]{1,15}(\.[0-9]{1,2})?$').hasMatch(amount)) return null;
  final parts = amount.split('.');
  return int.parse(parts.first) * 100 +
      int.parse(parts.length == 2 ? parts.last.padRight(2, '0') : '0');
}

BillingRepeatRisk? recentBillingRepeatRisk(
  List<BillingCheckoutView> receipts,
  BillItem product,
  String recipient, {
  DateTime? now,
}) {
  final clock = (now ?? DateTime.now()).toUtc();
  final amountKobo = _fixedBillKobo(product.amount);
  final ordered = receipts.toList()
    ..sort((a, b) => b.quote.createdAt.compareTo(a.quote.createdAt));
  for (final entry in ordered) {
    final quote = entry.quote;
    if (quote.billerCode != product.billerCode ||
        quote.itemCode != product.itemCode ||
        quote.currency.toUpperCase() != product.currency.toUpperCase() ||
        quote.customerId.trim() != recipient.trim()) continue;
    final created = DateTime.tryParse(quote.createdAt)?.toUtc();
    if (created == null) continue;
    final age = clock.difference(created);
    if (age < const Duration(seconds: -30) ||
        age > const Duration(minutes: 5)) continue;
    if (entry.phase == 'quoted' || entry.phase == 'failed' ||
        entry.phase == 'refunded') continue;
    final pending = !entry.isTerminal;
    if (pending || (entry.phase == 'fulfilled' &&
        amountKobo != null && amountKobo == quote.serviceAmountKobo)) {
      return BillingRepeatRisk(entry, pending: pending);
    }
  }
  return null;
}

class BillingScreen extends ConsumerStatefulWidget {
  const BillingScreen({super.key, this.initialService});

  final String? initialService;

  @override
  ConsumerState<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends ConsumerState<BillingScreen> {
  final customer = TextEditingController();

  List<BillCategory> categories = const [];
  List<BillBiller> billers = const [];
  List<BillItem> items = const [];
  List<BillingCheckoutView> history = const [];
  List<Map<String,String>> beneficiaries=[];
  BillCategory? category;
  BillBiller? biller;
  BillItem? item;
  BillingCheckoutView? current;
  BillingWalletActionView? walletAction;
  int _generation = 0;
  String? historyError;
  String? get _owner => switch(ref.read(sessionProvider)) {SessionSignedIn(:final user) => user.id, _ => null};
  bool valid(int generation, String? owner) => mounted && generation == _generation && owner == _owner;
  bool busy = false;
  bool loading = true;
  String? error;

  NigerianNetwork? selectedNetwork;
  String selectedFilter = 'All';

  ApiClient get api => ref.read(apiClientProvider);
  bool get mobileCategory => category?.code.replaceAll('_', '') == 'AIRTIME' ||
    category?.code.replaceAll('_', '') == 'MOBILEDATA';

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void dispose() {
    customer.dispose();
    super.dispose();
  }

  String safeError(Object value, String fallback) =>
      value is ApiException && value.message.trim().isNotEmpty
          ? value.message
          : fallback;

  Future<void> loadBeneficiaries()async{
    final owner=_owner,generation=_generation;if(owner==null)return;
    try{final rows=await BillBeneficiaryBook(owner).read();if(valid(generation,owner))setState(()=>beneficiaries=rows);}
    catch(_){if(valid(generation,owner))setState(()=>error='Saved beneficiaries are unavailable. Enter the recipient manually.');}
  }
  Future<void> removeBeneficiary(Map<String,String> value)async{
    final owner=_owner,generation=_generation;if(busy||owner==null)return;
    setState(()=>busy=true);
    try{await BillBeneficiaryBook(owner).remove(value);if(valid(generation,owner))await loadBeneficiaries();}
    catch(_){if(valid(generation,owner))setState(()=>error='Saved beneficiary could not be removed.');}
    finally{if(valid(generation,owner))setState(()=>busy=false);}
  }
  Future<void> refreshHistory() async {
    final generation = _generation, owner = _owner;
    try {
      final next = await api.billingHistory(limit: 30);
      if (!valid(generation, owner)) return;
      setState(() {history = next; historyError = null;});
    } catch (_) {
      if (valid(generation, owner)) setState(() => historyError = 'Receipts unavailable');
    }
  }

  Future<void> load() async {
    final generation = ++_generation, owner = _owner;
    setState(() {loading = true; busy = false; error = null;});
    unawaited(refreshHistory());
    unawaited(loadBeneficiaries());
    try {
      final next = await api.billingCategories();
      if (!valid(generation, owner)) return;
      setState(() {categories = next; loading = false;});
      final target = billingCategoryForHomeService(next, widget.initialService ?? 'data') ??
          (next.isEmpty ? null : next.first);
      if (target != null) await selectCategory(target);
    } catch (value) {
      if (valid(generation, owner)) setState(() {
        loading = false; error = safeError(value, 'Billing is unavailable right now.');
      });
    }
  }

  Future<void> selectCategory(BillCategory? value) async {
    if (value == null || busy) return;
    final generation = _generation, owner = _owner;
    setState(() {
      selectedFilter = 'All';
      selectedNetwork = null;
      category = value;
      biller = null;
      item = null;
      billers = const [];
      items = const [];
      busy = true;
      error = null;
    });
    try {
      final next = await api.billingBillers(value.code);
      if (valid(generation, owner)) {
        // Release the category fetch guard before loading the selected biller.
        setState(() { billers = next; busy = false; });
        if (!mobileCategory && next.isNotEmpty) {
          await selectBiller(next.first);
        }
      }
    } catch (value) {
      if (valid(generation, owner)) setState(() => error = safeError(value, 'Could not load providers.'));
    } finally {
      if (valid(generation, owner)) setState(() => busy = false);
    }
  }

  Future<void> _matchBillerForNetwork(NigerianNetwork network) async {
    if (billers.isEmpty) return;
    final name = network.label.toLowerCase();
    BillBiller? matched;
    for (final b in billers) {
      if (b.name.toLowerCase().contains(name)) {
        matched = b;
        break;
      }
    }
    if (matched == null) {
      setState(() {biller = null; items = const []; error = '${network.label} is unavailable';});
      return;
    }
    await selectBiller(matched);
  }

  Future<void> selectBiller(BillBiller? value) async {
    if (value == null || busy) return;
    final generation = _generation, owner = _owner;
    setState(() {
      biller = value;
      item = null;
      items = const [];
      busy = true;
      error = null;
    });
    try {
      final next = await api.billingItems(value.billerCode);
      if (valid(generation, owner)) setState(() => items = next);
    } catch (value) {
      if (valid(generation, owner)) setState(() => error = safeError(value, 'Could not load services.'));
    } finally {
      if (valid(generation, owner)) setState(() => busy = false);
    }
  }

  List<BillItem> get filteredItems {
    if (items.isEmpty) return <BillItem>[];
    if (selectedFilter == 'All') return items;
    return items.where((i) {
      final text = i.name.toLowerCase();
      if (selectedFilter == 'Daily') {
        return text.contains('daily') || RegExp(r'\b1 day(s)?\b|\b24 (hrs|hours)\b').hasMatch(text);
      } else if (selectedFilter == 'Weekly') {
        return text.contains('week') || text.contains('7 days') || text.contains('14 days');
      } else if (selectedFilter == 'Monthly') {
        return text.contains('month') || text.contains('30 days') || text.contains('monthly');
      }
      return true;
    }).toList(growable: false);
  }

  Future<void> onSelectBundle(BillItem selected) async {
    final raw = customer.text.trim();
    final phone = mobileCategory ? normalizeNigerianBillingPhone(raw) : raw;
    if (phone == null || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(mobileCategory
          ? 'Please enter a valid Nigerian phone number.'
          : 'Please enter the customer meter/card/reference number.')),
      );
      return;
    }
    setState(() => item = selected);
    await _reviewWithRepeatGuard(selected, phone);
  }

  Future<void> _openExistingBill(BillingCheckoutView entry) async {
    final owner = _owner;
    if(owner == null)return;
    // A pending/unknown operation must be recovered by its original
    // provider-backed reference; never open a fresh payable quote here.
    if (!entry.isTerminal && entry.quote.fulfillmentReference == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('The original payment reference is unavailable. Check bill activity or contact support before trying again.'),
      ));
      return;
    }
    await openWalletPage<void>(context:context,title:'Bill receipt',
      builder:(_)=>MsnwBillingCheckoutSheet(
        api:api,dio:ref.read(dioProvider),baseUrl:kApiBaseUrl,
        categoryCode:entry.quote.categoryCode ?? '',
        item:BillItem(billerCode:entry.quote.billerCode,itemCode:entry.quote.itemCode,
          name:entry.quote.itemName,amount:entry.quote.serviceAmount,
          currency:entry.quote.currency,labelName:null),
        customerId:entry.quote.customerId,expectedUserId:owner,
        currentUserId:()=>_owner,accessToken:()=>api.accessToken,
        initialQuote:entry.quote,onFund:_showFundingSheet));
    if(mounted && _owner == owner)await refreshHistory();
  }

  Future<void> _reviewWithRepeatGuard(BillItem selected, String recipient) async {
    final owner=_owner, run=_generation, selectedBiller=biller?.billerCode;
    if(owner==null)return;
    List<BillingCheckoutView>? fresh;
    try {
      fresh=await api.billingHistory(limit:30);
    } catch (_) {
      // A history outage is not proof of no pending transaction.
    }
    if(!valid(run,owner) || customer.text.trim().isEmpty ||
        biller?.billerCode!=selectedBiller || item?.itemCode!=selected.itemCode ||
        (mobileCategory ? normalizeNigerianBillingPhone(customer.text.trim()) : customer.text.trim()) != recipient) return;
    final risk=fresh==null?null:recentBillingRepeatRisk(fresh,selected,recipient);
    if(risk!=null){
      if (!mounted) return;
      final selection=await showDialog<String>(context:context,builder:(ctx)=>AlertDialog(
        title:Text(risk.pending?'Previous purchase is still pending':'Possible repeat purchase'),
        content:Text(risk.pending
          ? 'A recent purchase for this recipient and service has not been confirmed as complete. Check the original order rather than paying again.'
          : 'A matching bill was recently fulfilled. A second purchase will be a new charge. Review only if you intend another purchase.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,'cancel'),child:const Text('Cancel')),
          if(risk.pending)
            TextButton(onPressed:()=>Navigator.pop(ctx,'original'),child:const Text('Check original order'))
          else
            FilledButton(onPressed:()=>Navigator.pop(ctx,'repeat'),child:const Text('Review another purchase')),
        ],
      ));
      if(!mounted||!valid(run,owner))return;
      if(selection=='original') {await _openExistingBill(risk.receipt);return;}
      if(selection!='repeat')return;
    } else if(fresh==null){
      if (!mounted) return;
      final proceed=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
        title:const Text('Recent purchase status unavailable'),
        content:const Text('We could not check recent bill receipts. If an earlier payment may be pending, return to Activity to check it before starting another.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Review a new purchase')),
        ],
      ));
      if(proceed!=true||!mounted||!valid(run,owner))return;
    }
    if (item?.itemCode!=selected.itemCode ||
      biller?.billerCode!=selectedBiller ||
      (mobileCategory ? normalizeNigerianBillingPhone(customer.text.trim()) : customer.text.trim()) != recipient) return;
    await _showPurchaseConfirmation(selected);
  }

  /// Qualified Flutterwave catalog and exact MSNW-only custody billing.
  /// The user must explicitly review the rate, provider price and recipient.
  Future<void> _showPurchaseConfirmation(BillItem selected) async {
    if (!mounted) return;
    final session = ref.read(sessionProvider);
    final chosenCategory = category;
    if (session is! SessionSignedIn || chosenCategory == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Sign in and select a bill category to pay with MSNW.'),
      ));
      return;
    }
    final expected = session.user.id;
    await openWalletPage<void>(
      context: context,
      builder: (sheet) => MsnwBillingCheckoutSheet(
        api: api, dio: ref.read(dioProvider), baseUrl: kApiBaseUrl,
        categoryCode: chosenCategory.code,
        item: selected, customerId: mobileCategory ? normalizeNigerianBillingPhone(customer.text.trim())! : customer.text.trim(),
        expectedUserId: expected,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id,
          _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
        onFund: _showFundingSheet,
      ),
    );
    if (mounted && _owner == expected) {await refreshHistory();await loadBeneficiaries();}
  }

  /// Reload provider catalog, match original recipient and product by
  /// server IDs, then request a NEW quote with current provider terms.
  Future<void> repeatPreviousBill(BillingCheckoutView historical)=>repeatBeneficiary({
    'categoryCode':historical.quote.categoryCode??'','billerCode':historical.quote.billerCode,
    'itemCode':historical.quote.itemCode,'customerId':historical.quote.customerId,'currency':historical.quote.currency,'name':historical.quote.itemName,
  });
  Future<void> repeatBeneficiary(Map<String,String> previous) async {
    if (busy) return;
    final owner=_owner;
    final code=previous['categoryCode'];
    if(owner==null || code==null || code.isEmpty){
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content:Text('Sign in again to repeat this bill.')));
      return;
    }
    final generation=++_generation;
    setState((){busy=true;error=null;});
    try {
      final freshCategories=await api.billingCategories();
      if(!valid(generation,owner))return;
      final candidates=freshCategories.where((c)=>c.code==code).toList();
      if(candidates.length!=1)throw StateError('Previous category no longer available');
      final freshBillers=await api.billingBillers(code);
      if(!valid(generation,owner))return;
      final selectedBillers=freshBillers.where(
        (v)=>v.billerCode==previous['billerCode']!).toList();
      if(selectedBillers.length!=1)
        throw StateError('Previous provider no longer available');
      final freshItems=await api.billingItems(previous['billerCode']!);
      if(!valid(generation,owner))return;
      final matches=freshItems.where((v)=>v.billerCode==previous['billerCode']&&v.itemCode==previous['itemCode']&&v.currency==previous['currency']).toList();
      final selected=matches.length==1?matches.single:null;
      if(selected==null)throw StateError('Previous package no longer available');
      final phone=(code.replaceAll('_','')=='AIRTIME' ||
        code.replaceAll('_','')=='MOBILEDATA');
      final recipient=phone
        ? normalizeNigerianBillingPhone(previous['customerId']!)
        : previous['customerId']!.trim();
      if(recipient==null||recipient.isEmpty)
        throw StateError('Previous recipient needs correction');
      setState((){
        category=candidates.single;
        billers=freshBillers;biller=selectedBillers.single;
        items=freshItems;item=selected;
        categories=freshCategories;
        selectedFilter='All';
        customer.text=recipient;
        if(phone){
          selectedNetwork=NigerianNetwork.values.where((network) =>
            selectedBillers.single.name.toLowerCase().contains(network.label.toLowerCase()))
            .firstOrNull;
        }
        busy=false;
      });
      if(valid(generation,owner)){
        await _reviewWithRepeatGuard(selected, recipient);
      }
    }catch(_){
      if(valid(generation,owner))setState((){
        error='This old bill cannot be repeated using its saved price. '
          'Choose a current package and check the recipient again.';
      });
    }finally {
      if(valid(generation,owner) && busy)setState(()=>busy=false);
    }
  }

  void _showFundingSheet() {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Sign in for a verified MSNW funding account.')));
      return;
    }
    final expected = session.user.id;
    openWalletPage<void>(
      context: context,
      builder: (_) => MsnwPaystackFundingSheet(
        dio: ref.read(dioProvider),
        baseUrl: kApiBaseUrl,
        expectedUserId: expected,
        currentUserId: () => switch (ref.read(sessionProvider)) {
          SessionSignedIn(:final user) => user.id,
          _ => null,
        },
        accessToken: () => ref.read(apiClientProvider).accessToken,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final phoneHint = mobileCategory ? detectNetworkFromPhone(customer.text) : null;
    ref.listen<SessionState>(sessionProvider, (previous, next) {
      final before = previous is SessionSignedIn ? previous.user.id : null;
      final after = next is SessionSignedIn ? next.user.id : null;
      if (before == after) return;
      ++_generation;
      customer.clear();
      setState(() {history = const []; beneficiaries=[]; historyError = null; categories = const [];
        billers = const []; items = const []; category = null; biller = null;
        item = null; current = null; walletAction = null; loading = true; busy = false;});
      unawaited(load());
    });

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: Text(category?.name ?? 'Pay bills'),
        backgroundColor: u.surfaceCard,
        foregroundColor: u.textPrimary,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: load,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            // Only server-catalog billing controls appear here. The previous
            // static "Fund wallet" banner was not a balance readback and
            // falsely looked like a live wallet amount or bill prerequisite.
            // Category and live Flutterwave provider selection.
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(children: categories.map((entry) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(label: Text(entry.name),
                  selected: category?.code == entry.code,
                  onSelected: busy ? null : (_) => selectCategory(entry)),
              )).toList())),
            const SizedBox(height: 14),
            Text(
              mobileCategory ? 'Recipient Phone Number' :
                (category?.code == 'ELECTRICITY' ? 'Meter Number' :
                  category?.code == 'CABLETV' ? 'Smartcard Number' :
                  'Customer Reference'),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: u.textPrimary,
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: customer,
              onChanged: (_) {if (mobileCategory) setState(() {});},
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: mobileCategory ? '0803 000 0000' : 'Customer account number',
                prefixIcon: const Icon(Icons.phone_android),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              ),
            ),
            const SizedBox(height: 16),

            // Network Selector
            if (mobileCategory) Text(
              'Select Network',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: u.textPrimary,
              ),
            ),
            if (mobileCategory) const Text(
              'Phone prefixes are hints, not proof of your network. If your number was ported, choose its current operator.',
            ),
            if (mobileCategory && phoneHint != null)
              Text('Check your operator: prefix suggests ${phoneHint.label}.'),
            if (mobileCategory && biller == null)
              const Text('Select your operator.'),
            const SizedBox(height: 8),
            if (mobileCategory) Row(
              children: NigerianNetwork.values.map((net) {
                final isSelected = selectedNetwork == net;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: InkWell(
                      onTap: busy || !billers.any((b) => b.name.toLowerCase().contains(net.label.toLowerCase())) ? null : () {
                        setState(() {selectedNetwork = net;});
                        _matchBillerForNetwork(net);
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected ? net.brandColor : u.surfaceMuted,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected ? net.brandColor : u.structuralBorder,
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: net.brandColor,
                              child: Text(
                                net.label[0],
                                style: TextStyle(
                                  color: net.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              net.label,
                              style: TextStyle(
                                fontSize: 11.5,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? net.textColor : u.textPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            if (mobileCategory && billers.isNotEmpty) WalletSelectionField<String>(
              value: biller?.billerCode,
              items: billers.map((entry) => DropdownMenuItem(
                value: entry.billerCode, child: Text(entry.name))).toList(),
              onChanged: busy ? null : (code) {
                for (final entry in billers) {
                  if (entry.billerCode != code) continue;
                  setState(() => selectedNetwork = NigerianNetwork.values.where(
                    (network) => entry.name.toLowerCase().contains(network.label.toLowerCase()),
                  ).firstOrNull);
                  selectBiller(entry);
                  break;
                }
              },
              decoration: const InputDecoration(labelText: 'Current operator from provider catalog'),
            ),
            const SizedBox(height: 16),

            if (!mobileCategory && billers.isNotEmpty) WalletSelectionField<String>(
              value: biller?.billerCode,
              items: billers.map((entry) => DropdownMenuItem(
                value: entry.billerCode, child: Text(entry.name))).toList(),
              onChanged: busy ? null : (code) {
                for (final entry in billers) {
                  if (entry.billerCode == code) {selectBiller(entry);break;}
                }
              },
              decoration: const InputDecoration(labelText: 'Verified Provider'),
            ),
            const SizedBox(height: 12),
            // Validity Filter Tabs
            if (mobileCategory) SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ['All', 'Daily', 'Weekly', 'Monthly'].map((filter) {
                  final isSelected = selectedFilter == filter;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(filter),
                      selected: isSelected,
                      selectedColor: u.brand,
                      labelStyle: TextStyle(
                        color: u.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                      onSelected: (_) => setState(() => selectedFilter = filter),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 12),

            // Bundle Cards List
            if (loading || busy)
              const MasanawaListSkeleton(
                itemCount: 4, shrinkWrap: true,
                semanticLabel: 'Loading verified billing services',
              )
            else if (filteredItems.isEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(error ??
                  'No verified billing packages are available for this selection.',
                  textAlign: TextAlign.center),
              ),
              OutlinedButton.icon(
                onPressed: () => category == null ? load() : selectCategory(category),
                icon: const Icon(Icons.refresh),
                label: Text(error != null ? 'Retry services' : 'Refresh packages'),
              ),
            ]
            else
              ...filteredItems.map((pkg) => _BundleCard(
                    item: pkg,
                    network: mobileCategory ? selectedNetwork : null,
                    onTap: () => onSelectBundle(pkg),
                  )),
            const SizedBox(height: 20),
            if (historyError != null) Center(child: TextButton(onPressed: refreshHistory, child: const Text('Retry receipts'))),
            if(beneficiaries.isNotEmpty)...[
              Text('Saved bill beneficiaries',style:Theme.of(context).textTheme.titleMedium),
              for(final entry in beneficiaries)ListTile(title:Text(entry['name']!),subtitle:Text(entry['customerId']!),
                onTap:busy?null:()=>repeatBeneficiary(entry),trailing:IconButton(tooltip:'Remove bill beneficiary',onPressed:busy?null:()=>removeBeneficiary(entry),icon:const Icon(Icons.delete_outline))),
            ],
            if (history.isNotEmpty) ...[
              Text('Recent bill receipts',
                style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              for (final entry in history.take(8))
                ListTile(
                  leading: const Icon(Icons.receipt_long),
                  title: Text(entry.quote.itemName),
                  subtitle: Text('Status: '+entry.phase+
                    ' · ₦'+entry.quote.totalAmount+
                    ' · '+entry.quote.customerId),
                  trailing: IconButton(
                    tooltip:'Buy again at current price',
                    icon:const Icon(Icons.replay_outlined),
                    onPressed:busy?null:()=>repeatPreviousBill(entry),
                  ),
                  onTap: ()=>_openExistingBill(entry),
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class _BundleCard extends StatelessWidget {
  const _BundleCard({
    required this.item,
    required this.network,
    required this.onTap,
  });

  final BillItem item;
  final NigerianNetwork? network;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: u.structuralBorder),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: u.surfaceMuted,
                child: Icon(network == null ? Icons.receipt_long : Icons.wifi, color: u.textPrimary, size: 20),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.5,
                        color: u.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      item.currency,
                      style: TextStyle(fontSize: 12, color: u.textMuted),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    item.variableAmount ? 'Enter amount' : '${item.currency} ${item.amount}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: u.brand,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

