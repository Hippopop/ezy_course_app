import 'package:ezy_course_app/src/features/authentication/views/login_screen.dart';
import 'package:ezy_course_app/src/features/news_feed/views/news_feed.dart';
import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../initializer/views/error_screen.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: '#root');
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authState = ref.watch(authStateProvider).requireValue;
    return GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _navigatorKey,
      initialLocation: '/news_feed',
      restorationScopeId: '#root_router',
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/news_feed',
          builder: (context, state) => const NewsFeedScreen(),
        ),
      ],
      errorBuilder: (context, state) => GlobalErrorScreen(
        errorObject: state.error as Object,
      ),
      redirect: (context, state) async {
        if (authState == null) {
          return '/login';
        }
        return null;
      },
    );
  },
);
