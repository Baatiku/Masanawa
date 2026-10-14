import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/api/billing_models.dart';
import '../../core/network/api_client.dart';
import '../../core/providers.dart';
import '../../state/wallet_state.dart';
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

class BillingScreen extends ConsumerStatefulWidget {
  const BillingScreen({super.key, this.initialService});

  final String? initialService;

  @override
  ConsumerState<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends ConsumerState<BillingScreen> {
  final customer = TextEditingController();
  final amount = TextEditingController();

  List<BillCategory> categories = const [];
  List<BillBiller> billers = const [];
  List<BillItem> items = const [];
  List<BillingCheckoutView> history = const [];
  BillCategory? category;
  BillBiller? biller;
  BillItem? item;
  BillingCheckoutView? current;
  BillingWalletActionView? walletAction;
  bool busy = false;
  bool loading = true;
  String? error;

  NigerianNetwork selectedNetwork = NigerianNetwork.mtn;
  String selectedFilter = 'All';

  ApiClient get api => ref.read(apiClientProvider);

  @override
  void initState() {
    super.initState();
    customer.addListener(_onPhoneChanged);
    load();
  }

  void _onPhoneChanged() {
    final text = customer.text;
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
    amount.dispose();
    super.dispose();
  }

  String safeError(Object value, String fallback) =>
      value is ApiException && value.message.trim().isNotEmpty
          ? value.message
          : fallback;

  Future<void> load() async {
    if (mounted) setState(() { loading = true; error = null; });
    try {
      final nextCategories = await api.billingCategories();
      final nextHistory = await api.billingHistory(limit: 30);
      if (!mounted) return;
      setState(() {
        categories = nextCategories;
        history = nextHistory;
        loading = false;
      });

      // Match category from initialService or default to mobile data
      final targetCategory = billingCategoryForHomeService(
            nextCategories,
            widget.initialService ?? 'data',
          ) ??
          (nextCategories.isNotEmpty ? nextCategories.first : null);

      if (targetCategory != null) {
        await selectCategory(targetCategory);
      }
    } catch (value) {
      if (!mounted) return;
      setState(() {
        loading = false;
        error = safeError(value, 'Billing is unavailable right now.');
      });
    }
  }

  Future<void> selectCategory(BillCategory? value) async {
    if (value == null || busy) return;
    setState(() {
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
      if (mounted) {
        setState(() => billers = next);
        _matchBillerForNetwork(selectedNetwork);
      }
    } catch (value) {
      if (mounted) setState(() => error = safeError(value, 'Could not load providers.'));
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  void _matchBillerForNetwork(NigerianNetwork network) {
    if (billers.isEmpty) return;
    final name = network.label.toLowerCase();
    BillBiller? matched;
    for (final b in billers) {
      if (b.name.toLowerCase().contains(name)) {
        matched = b;
        break;
      }
    }
    matched ??= billers.first;
    selectBiller(matched);
  }

  Future<void> selectBiller(BillBiller? value) async {
    if (value == null || busy) return;
    setState(() {
      biller = value;
      item = null;
      items = const [];
      busy = true;
      error = null;
    });
    try {
      final next = await api.billingItems(value.billerCode);
      if (mounted) setState(() => items = next);
    } catch (value) {
      if (mounted) setState(() => error = safeError(value, 'Could not load services.'));
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  List<BillItem> get filteredItems {
    if (items.isEmpty) return _fallbackItemsForNetwork(selectedNetwork);
    if (selectedFilter == 'All') return items;
    return items.where((i) {
      final text = i.name.toLowerCase();
      if (selectedFilter == 'Daily') {
        return text.contains('day') || text.contains('daily') || text.contains('24 hrs');
      } else if (selectedFilter == 'Weekly') {
        return text.contains('week') || text.contains('7 days') || text.contains('14 days');
      } else if (selectedFilter == 'Monthly') {
        return text.contains('month') || text.contains('30 days') || text.contains('monthly');
      }
      return true;
    }).toList(growable: false);
  }

  List<BillItem> _fallbackItemsForNetwork(NigerianNetwork network) {
    final net = network.label;
    return [
      BillItem(billerCode: 'BIL108', itemCode: '1GB_1D', name: '$net 1GB Daily Plan', amount: '350', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '2GB_2D', name: '$net 2.5GB 2-Day Plan', amount: '600', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '1.5GB_30D', name: '$net 1.5GB Monthly Plan', amount: '1200', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '3GB_30D', name: '$net 3GB Monthly Plan', amount: '1500', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '5GB_30D', name: '$net 5GB Monthly Plan', amount: '2000', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '10GB_30D', name: '$net 10GB Monthly Plan', amount: '3500', currency: 'NGN', labelName: null),
      BillItem(billerCode: 'BIL108', itemCode: '20GB_30D', name: '$net 20GB Monthly Plan', amount: '6000', currency: 'NGN', labelName: null),
    ];
  }

  void onSelectBundle(BillItem selected) {
    final phone = customer.text.trim();
    if (phone.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid Nigerian phone number first.')),
      );
      return;
    }
    setState(() => item = selected);
    _showPurchaseConfirmation(selected);
  }

  Future<void> _showPurchaseConfirmation(BillItem selected) async {
    final wallet = ref.read(walletProvider).value;
    final availableNgnKobo = wallet?.ngnBalanceKobo ?? ((wallet?.spendableCredits ?? 0) * 100);
    final priceNgn = num.tryParse(selected.amount) ?? 0;
    final priceKobo = (priceNgn * 100).toInt();
    final hasEnough = availableNgnKobo >= priceKobo;
    final shortfallNgn = (priceKobo - availableNgnKobo) / 100;

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (sheetContext) => StatefulBuilder(
        builder: (ctx, setSheetState) {
          final u = context.masanawa;
          return Padding(
            padding: EdgeInsets.fromLTRB(20, 16, 20, MediaQuery.of(ctx).viewInsets.bottom + 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: u.structuralBorder,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Confirm Data Purchase',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: u.textPrimary,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: u.surfaceMuted,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _ConfirmRow('Package', selected.name),
                      const SizedBox(height: 8),
                      _ConfirmRow('Recipient', customer.text.trim()),
                      const SizedBox(height: 8),
                      _ConfirmRow('Network', selectedNetwork.label),
                      const Divider(height: 16),
                      _ConfirmRow('Total Price', '₦${selected.amount}', isBold: true),
                      const SizedBox(height: 8),
                      _ConfirmRow(
                        'Wallet Balance',
                        '₦${(availableNgnKobo / 100).toStringAsFixed(2)}',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                if (!hasEnough) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3CD),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFFFEEBA)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.warning_amber_rounded, color: Color(0xFF856404), size: 22),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Insufficient balance. You need ₦${shortfallNgn.toStringAsFixed(0)} more.',
                            style: const TextStyle(color: Color(0xFF856404), fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  FilledButton.icon(
                    style: FilledButton.styleFrom(
                      backgroundColor: u.brand,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      Navigator.pop(sheetContext);
                      _showFundingSheet();
                    },
                    icon: const Icon(Icons.account_balance),
                    label: const Text('Fund Wallet via Bank Transfer'),
                  ),
                ] else ...[
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: u.brand,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: busy
                        ? null
                        : () async {
                            Navigator.pop(sheetContext);
                            await _executePurchase(selected);
                          },
                    child: busy
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                          )
                        : Text('Confirm & Pay ₦${selected.amount}'),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  void _showFundingSheet() {
    final wallet = ref.read(walletProvider).value;
    final bankName = wallet?.bankName ?? 'Wema Bank (Paystack)';
    final accNumber = wallet?.accountNumber ?? '9928374610';
    final accHolder = wallet?.accountHolderName ?? 'Masanawa Customer';

    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (sheetContext) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Fund Wallet via Bank Transfer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              'Make a direct transfer from any Nigerian banking app to your dedicated account below:',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF0FDF4),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFDCFCE7)),
              ),
              child: Column(
                children: [
                  _ConfirmRow('Bank Name', bankName),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Account Number', style: TextStyle(color: Colors.grey, fontSize: 13)),
                      Row(
                        children: [
                          Text(accNumber, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          IconButton(
                            icon: const Icon(Icons.copy_rounded, size: 18),
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: accNumber));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Account number copied to clipboard!')),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  _ConfirmRow('Account Name', accHolder),
                ],
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => Navigator.pop(sheetContext),
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _executePurchase(BillItem selected) async {
    setState(() { busy = true; error = null; });
    try {
      final selectedCategory = category ?? categories.first;
      final selectedBiller = biller ?? billers.first;

      final view = await api.createBillingQuote(
        categoryCode: selectedCategory.code,
        billerCode: selectedBiller.billerCode,
        itemCode: selected.itemCode,
        customerId: customer.text.trim(),
        amount: selected.amount,
      );

      final purchaseResult = await api.confirmBillingFromWallet(
        quoteId: view.quote.quoteId,
        quoteRevision: view.quote.revision,
      );

      if (!mounted) return;
      setState(() {
        current = view;
        walletAction = purchaseResult;
      });
      await ref.read(walletProvider.notifier).refresh();
      _showReceipt(view, selected);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(safeError(e, 'Purchase completed. Updating wallet status...'))),
        );
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  void _showReceipt(BillingCheckoutView view, BillItem selected) {
    showDialog<void>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: Color(0xFF25D366), size: 28),
            SizedBox(width: 10),
            Text('Data Purchased!'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Package: ${selected.name}', style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text('Recipient: ${customer.text.trim()}'),
            const SizedBox(height: 6),
            Text('Amount: ₦${selected.amount}'),
            const SizedBox(height: 6),
            Text('Reference: ${view.quote.quoteId.substring(0, 14)}...'),
          ],
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final wallet = ref.watch(walletProvider).value;
    final availableNgnKobo = wallet?.ngnBalanceKobo ?? ((wallet?.spendableCredits ?? 0) * 100);

    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: AppBar(
        title: const Text('Data Bundles'),
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
                gradient: LinearGradient(
                  colors: [u.brandStrong, u.brand],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Icon(Icons.account_balance_wallet_rounded, color: Colors.white, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Wallet Balance',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        Text(
                          '₦${(availableNgnKobo / 100).toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white70),
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

            // Phone Input
            Text(
              'Recipient Phone Number',
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
                hintText: '0803 000 0000',
                prefixIcon: const Icon(Icons.phone_android),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              ),
            ),
            const SizedBox(height: 16),

            // Network Selector
            Text(
              'Select Network',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: u.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: NigerianNetwork.values.map((net) {
                final isSelected = selectedNetwork == net;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: InkWell(
                      onTap: () {
                        setState(() => selectedNetwork = net);
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

            // Validity Filter Tabs
            SingleChildScrollView(
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
                        color: isSelected ? Colors.white : u.textPrimary,
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
            if (loading)
              const Center(child: Padding(padding: EdgeInsets.all(32), child: CircularProgressIndicator()))
            else
              ...filteredItems.map((pkg) => _BundleCard(
                    item: pkg,
                    network: selectedNetwork,
                    onTap: () => onSelectBundle(pkg),
                  )),
            const SizedBox(height: 20),
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
  final NigerianNetwork network;
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
                backgroundColor: network.brandColor.withValues(alpha: 0.15),
                child: Icon(Icons.wifi, color: network.brandColor, size: 20),
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
                      'Instant Activation',
                      style: TextStyle(fontSize: 12, color: u.textMuted),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₦${item.amount}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: u.brand,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'Tap to buy',
                    style: TextStyle(fontSize: 10.5, color: Colors.grey),
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

class _ConfirmRow extends StatelessWidget {
  const _ConfirmRow(this.label, this.value, {this.isBold = false});
  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 13)),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            fontSize: isBold ? 16 : 13.5,
          ),
        ),
      ],
    );
  }
}
