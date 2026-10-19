import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../social/human_contacts.dart';

final humanContactsTransportProvider = Provider<HumanContactsTransport>(
  (ref) => GatewayHumanContactsTransport(ref.watch(apiClientProvider)),
);
