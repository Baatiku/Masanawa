import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/human_chat/transport.dart';

void main() {
  test('same account re-login creates a new transport and revokes the previous lease', () {
    final fakeScope = StateProvider<HumanAuthorizationLease>(
      (ref) => ('alice', 1),
    );
    final api = ApiClient(dio: Dio());
    final container = ProviderContainer(overrides: [
      apiClientProvider.overrideWithValue(api),
      humanAuthorizationLeaseProvider.overrideWith(
        (ref) => ref.watch(fakeScope),
      ),
    ]);
    final sub = container.listen(humanCommunicationTransportProvider, (_, __) {});
    final first = container.read(humanCommunicationTransportProvider);
    expect(container.read(humanAccountProvider), 'alice');
    expect(first.active, true);

    container.read(fakeScope.notifier).state = ('alice', 2);
    final second = container.read(humanCommunicationTransportProvider);
    expect(identical(first, second), false);
    expect(first.active, false);
    expect(second.active, true);
    expect(container.read(humanAccountProvider), 'alice');

    container.read(fakeScope.notifier).state = ('bob', 3);
    final third = container.read(humanCommunicationTransportProvider);
    expect(second.active, false);
    expect(third.active, true);
    expect(container.read(humanAccountProvider), 'bob');
    sub.close();
    container.dispose();
    expect(third.active, false);
  });

  test('routine token refresh with same epoch retains live transport', () {
    final fakeScope = StateProvider<HumanAuthorizationLease>(
      (ref) => ('alice', 25),
    );
    final container = ProviderContainer(overrides: [
      apiClientProvider.overrideWithValue(ApiClient(dio: Dio())),
      humanAuthorizationLeaseProvider.overrideWith(
        (ref) => ref.watch(fakeScope),
      ),
    ]);
    final sub = container.listen(humanCommunicationTransportProvider, (_, __) {});
    final original = container.read(humanCommunicationTransportProvider);
    container.read(fakeScope.notifier).state = ('alice', 25);
    expect(identical(original, container.read(humanCommunicationTransportProvider)), true);
    expect(original.active, true);
    sub.close();
    container.dispose();
  });

  test('logout and new same-id sign-in never reuse a cancelled transport', () {
    final fakeScope = StateProvider<HumanAuthorizationLease>(
      (ref) => ('alice', 7),
    );
    final container = ProviderContainer(overrides: [
      apiClientProvider.overrideWithValue(ApiClient(dio: Dio())),
      humanAuthorizationLeaseProvider.overrideWith(
        (ref) => ref.watch(fakeScope),
      ),
    ]);
    final sub = container.listen(humanCommunicationTransportProvider, (_, __) {});
    final first = container.read(humanCommunicationTransportProvider);
    container.read(fakeScope.notifier).state = (null, 8);
    final signedOut = container.read(humanCommunicationTransportProvider);
    expect(first.active, false);
    expect(container.read(humanAccountProvider), isNull);
    container.read(fakeScope.notifier).state = ('alice', 9);
    final restored = container.read(humanCommunicationTransportProvider);
    expect(signedOut.active, false);
    expect(restored.active, true);
    expect(identical(restored, first), false);
    sub.close();
    container.dispose();
  });
}
