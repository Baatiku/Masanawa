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
  mtn('MTN', Color(0xFFFFCC00), Color(0xFF000000)),
  airtel('Airtel', Color(0xFFED1C24), Color(0xFFFFFFFF)),
  glo('Glo', Color(0xFF00843D), Color(0xFFFFFFFF)),
  nineMobile('9mobile', Color(0xFF005C2B), Color(0xFFFFFFFF));

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
  BillCategory? category;
  BillBiller? biller;
  BillItem? item;
  BillingCheckoutView? current;
  BillingWalletActionView? walletAction;
  int _generation = 0;
  bool _manualNetwork = false;
  String? historyError;
  String? get _owner => switch(ref.read(sessionProvider)) {SessionSignedIn(:final user) => user.id, _ => null};
  bool valid(int generation, String? owner) => mounted && generation == _generation && owner == _owner;
  bool busy = false;
  bool loading = true;
  String? error;

  NigerianNetwork selectedNetwork = NigerianNetwork.mtn;
  String selectedFilter = 'All';

  ApiClient get api => ref.read(apiClientProvider);
  bool get mobileCategory => category?.code.replaceAll('_', '') == 'AIRTIME' ||
    category?.code.replaceAll('_', '') == 'MOBILEDATA';

  @override
  void initState() {
    super.initState();
    customer.addListener(_onPhoneChanged);
    load();
  }

  void _onPhoneChanged() {
    final text = customer.text;
    if (!mobileCategory || _manualNetwork || busy) return;
    final detected = detectNetworkFromPhone(text);
    if (detected != null && detected != selectedNetwork) {
      setState(() {
        selectedNetwork = detected;
      });
      _matchBillerForNetwork(detected);
    }
  }

  @override
  void dispose() {
    customer.removeListener(_onPhoneChanged);
    customer.dispose();
    super.dispose();
  }

  String safeError(Object value, String fallback) =>
      value is ApiException && value.message.trim().isNotEmpty
          ? value.message
          : fallback;

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
      _manualNetwork = false;
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
        if (mobileCategory) {
          await _matchBillerForNetwork(selectedNetwork);
        } else if (next.isNotEmpty) {
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

  void onSelectBundle(BillItem selected) {
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
    _showPurchaseConfirmation(selected);
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
    if (mounted && _owner == expected) await refreshHistory();
  }

  /// Reload provider catalog, match original recipient and product by
  /// server IDs, then request a NEW quote with current provider terms.
  Future<void> repeatPreviousBill(BillingCheckoutView historical) async {
    if (busy) return;
    final owner=_owner, previous=historical.quote;
    final code=previous.categoryCode;
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
        (v)=>v.billerCode==previous.billerCode).toList();
      if(selectedBillers.length!=1)
        throw StateError('Previous provider no longer available');
      final freshItems=await api.billingItems(previous.billerCode);
      if(!valid(generation,owner))return;
      final selected=billingCurrentRepeatProduct(freshItems,previous);
      if(selected==null)throw StateError('Previous package no longer available');
      final phone=(code.replaceAll('_','')=='AIRTIME' ||
        code.replaceAll('_','')=='MOBILEDATA');
      final recipient=phone
        ? normalizeNigerianBillingPhone(previous.customerId)
        : previous.customerId.trim();
      if(recipient==null||recipient.isEmpty)
        throw StateError('Previous recipient needs correction');
      setState((){
        category=candidates.single;
        billers=freshBillers;biller=selectedBillers.single;
        items=freshItems;item=selected;
        categories=freshCategories;
        selectedFilter='All';
        _manualNetwork=true;
        customer.text=recipient;
        if(phone){
          selectedNetwork=detectNetworkFromPhone(recipient)??selectedNetwork;
        }
        busy=false;
      });
      if(valid(generation,owner)){
        await _showPurchaseConfirmation(selected);
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
    ref.listen<SessionState>(sessionProvider, (previous, next) {
      final before = previous is SessionSignedIn ? previous.user.id : null;
      final after = next is SessionSignedIn ? next.user.id : null;
      if (before == after) return;
      ++_generation;
      customer.clear();
      setState(() {history = const []; historyError = null; categories = const [];
        billers = const []; items = const []; category = null; biller = null;
        item = null; current = null; walletAction = null; loading = true; busy = false;});
      unawaited(load());
    });

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: Text(category?.name ?? 'Bills & Services'),
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
            // Available Wallet Balance Banner
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: u.surfaceMuted,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet_rounded, color: u.textPrimary, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MSNW Wallet',
                          style: TextStyle(color: u.textMuted, fontSize: 12),
                        ),
                        Text(
                          'Fund wallet',
                          style: TextStyle(
                            color: u.textPrimary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: u.textPrimary,
                      side: BorderSide(color: u.structuralBorder),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      minimumSize: Size.zero,
                    ),
                    onPressed: _showFundingSheet,
                    icon: const Icon(Icons.add, size: 16),
                    label: const Text('Fund', style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),

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
            const SizedBox(height: 8),
            if (mobileCategory) Row(
              children: NigerianNetwork.values.map((net) {
                final isSelected = selectedNetwork == net;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: InkWell(
                      onTap: busy || !billers.any((b) => b.name.toLowerCase().contains(net.label.toLowerCase())) ? null : () {
                        setState(() {selectedNetwork = net; _manualNetwork = true;});
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
                  onTap: () async {
                    final owner = _owner;
                    if(owner == null)return;
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
                  },
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

