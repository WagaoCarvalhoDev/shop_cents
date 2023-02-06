import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_cents/views/auth_screen/login_screen.dart';
import 'package:shop_cents/views/home_page.dart';

import '../views/splash_screen/splash_screen.dart';
import 'named_route.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        name: root,
        path: '/',
        builder: (context, state) => HomePage(key: state.pageKey),
      ),
      GoRoute(
        name: splashScreen,
        path: '/splashScreen',
        builder: (context, state) => SplashScreen(key: state.pageKey),
      ),
      GoRoute(
        name: loginScreen,
        path: '/loginScreen',
        builder: (context, state) => LoginScreen(key: state.pageKey),
      ),
    ],
  );
});
