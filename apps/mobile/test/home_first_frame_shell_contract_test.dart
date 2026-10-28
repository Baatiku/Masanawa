import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/core/shell_deep_link.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';
import 'package:masanawa/src/screens/settings/notification_preferences_screen.dart';
import 'package:masanawa/src/screens/twin/shell_tab.dart';
import 'package:masanawa/src/shell/five_tab_shell.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _SignedIn extends SessionController {
  @override SessionState build() {
    final user=AuthUser(id:'home-fan',name:'Fan',locale:'ha',
      status:'ACTIVE',role:'USER',isNewUser:false,
      createdAt:'2026-10-28T00:00:00Z');
    return SessionSignedIn(user,AuthTokens(accessToken:'test',
      refreshToken:'test',accessExpiresIn:900,user:user));
  }
}

class _EmptyStatus implements FeedApi {
  @override Future<FeedPage> list({required String mode,String? cursor}) async =>
    const FeedPage([],null);
  @override Future<void> like(String id,bool enabled) async {}
  @override Future<void> save(String id,bool enabled) async {}
  @override Future<void> comment(String id,String body,String key) async {}
  @override Future<List<FeedComment>> comments(String id) async => const [];
}

void main(){
  test('legacy Status and notification return wiring target the five-tab Home',(){
    expect(shellDeepLinkRoute(Uri.parse('masanawa://status')),
      '/home?tab=status');
    expect(shellDeepLinkRoute(Uri.parse('https://masanawa.com/status/post-1')),
      contains('status'));
    expect(MasanawaRootTab.fromQuery('status'),MasanawaRootTab.status);
    expect(MasanawaRootTab.fromQuery('home'),MasanawaRootTab.status);
    expect(MasanawaRootTab.fromQuery('data').location,'/home?tab=data');
    final router=File('lib/src/router/app_router.dart').readAsStringSync();
    final shell=File('lib/src/shell/five_tab_shell.dart').readAsStringSync();
    expect(router,contains("initialLocation: '/home'"));
    expect(router,contains("path: '/notifications'"));
    expect(router,contains('NotificationPreferencesScreen()'));
    expect(shell,contains("context.push('/notifications')"));
    expect(shell,contains('PageStorageBucket()'));
  });

  testWidgets('Hausa Home opens first with five tabs and one safe startup metric',
      (tester) async {
    final emitted=<String>[];
    final original=debugPrint;
    debugPrint=(String? message,{int? wrapWidth}){
      if(message!=null)emitted.add(message);
    };
    addTearDown(()=>debugPrint=original);

    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_SignedIn.new),
      statusFeedApiProvider.overrideWithValue(_EmptyStatus()),
    ],child:MaterialApp(
      locale:const Locale('ha'),
      theme:buildMasanawaTheme(brightness:Brightness.light),
      localizationsDelegates:MasanawaLocalization.delegates,
      supportedLocales:MasanawaLocalization.supportedLocales,
      home:const FiveTabShell(),
    )));
    await tester.pumpAndSettle();
    final nav=tester.widget<NavigationBar>(find.byType(NavigationBar));
    expect(nav.selectedIndex,0);
    expect(nav.destinations.length,5);
    final labels=nav.destinations
      .map((destination)=>(destination as NavigationDestination).label).toList();
    expect(labels,['Gida','Chats','Walati','Calls','Data']);
    expect(MasanawaRootTab.values.length,5);
    expect(MasanawaRootTab.fromQuery('status'),MasanawaRootTab.status);
    expect(MasanawaRootTab.fromQuery('home'),MasanawaRootTab.status);
    expect(MasanawaRootTab.status.location,'/home');
    expect(find.byType(StatusScreen),findsOneWidget);
    await tester.pump();
    expect(emitted.where((message)=>message.contains(
      'MASANAWA_STARTUP milestone=home_first_frame')).length,1);
    expect(emitted.any((message)=>message.contains('home-fan')),isFalse,
      reason:'Startup telemetry cannot contain an account identity');
    expect(tester.takeException(),isNull);
  });

  testWidgets('Notifications push and Back restore the same Home tab',
      (tester) async {
    final dio=Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest:(options,handler){
      final data=options.path.endsWith('/agent/notifications/preferences')
        ? <String,dynamic>{'messages':true,'calls':true,'status':true,
            'wallet':true,'quietStart':null,'quietEnd':null,
            'utcOffsetMinutes':60}
        : <String,dynamic>{'items':<dynamic>[], 'nextCursor':null};
      handler.resolve(Response<Map<String,dynamic>>(
        requestOptions:options,statusCode:200,data:data));
    }));
    addTearDown(()=>dio.close(force:true));
    final router=GoRouter(initialLocation:'/home',routes:[
      GoRoute(path:'/home',builder:(_,__)=>const FiveTabShell()),
      GoRoute(path:'/notifications',builder:(_,__)=>
        const NotificationPreferencesScreen()),
    ]);
    addTearDown(router.dispose);
    await tester.pumpWidget(ProviderScope(overrides:[
      sessionProvider.overrideWith(_SignedIn.new),
      statusFeedApiProvider.overrideWithValue(_EmptyStatus()),
      apiClientProvider.overrideWithValue(ApiClient(dio:dio)),
    ],child:MaterialApp.router(
      routerConfig:router,locale:const Locale('ha'),
      theme:buildMasanawaTheme(brightness:Brightness.light),
      localizationsDelegates:MasanawaLocalization.delegates,
      supportedLocales:MasanawaLocalization.supportedLocales,
    )));
    await tester.pumpAndSettle();
    expect(tester.widget<NavigationBar>(find.byType(NavigationBar)).selectedIndex,0);
    router.push<void>('/notifications');
    await tester.pumpAndSettle();
    expect(find.text('Notifications'),findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.byType(StatusScreen),findsOneWidget);
    expect(tester.widget<NavigationBar>(find.byType(NavigationBar)).selectedIndex,0);
    expect(tester.takeException(),isNull);
  });
}
