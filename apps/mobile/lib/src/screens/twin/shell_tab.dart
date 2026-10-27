/// Canonical consumer root tabs: Home (the existing Status feed) · Chats · Wallet · Calls · Data.
///
/// Route identifiers are a navigation contract (query values stay stable for
/// deep links); they are not service categories or permissions.
enum MasanawaRootTab {
  status('status'),
  chats('chats'),
  wallet('wallet'),
  calls('calls'),
  data('data');

  const MasanawaRootTab(this.queryValue);

  final String queryValue;

  static MasanawaRootTab fromQuery(String? value) => switch (value) {
        'status' || 'home' => MasanawaRootTab.status,
        'chats' => MasanawaRootTab.chats,
        'wallet' => MasanawaRootTab.wallet,
        'calls' => MasanawaRootTab.calls,
        'data' => MasanawaRootTab.data,
        _ => MasanawaRootTab.status,
      };

  String get location =>
      this == MasanawaRootTab.status ? '/home' : '/home?tab=$queryValue';
}
