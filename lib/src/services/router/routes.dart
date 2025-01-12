import 'package:ezy_course_app/src/features/authentication/views/login_screen.dart';
import 'package:ezy_course_app/src/features/create_post/views/create_post_screen.dart';
import 'package:ezy_course_app/src/features/news_feed/views/news_feed.dart';
import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../initializer/views/error_screen.dart';
import 'transitions/dialogue_transition.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: '#root');
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authState = ref.watch(authStateProvider).requireValue;
    return GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _navigatorKey,
      initialLocation: NewsFeedScreen.route,
      restorationScopeId: '#root_router',
      routes: [
        GoRoute(
          path: LoginScreen.route,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: NewsFeedScreen.route,
          builder: (context, state) => const NewsFeedScreen(),
        ),
        GoRoute(
          path: CreatePostScreen.route,
          pageBuilder: (context, state) => const AnimatedDialogueBuilder(
            child: CreatePostScreen(),
          ),
        ),
      ],
      errorBuilder: (context, state) => GlobalErrorScreen(
        errorObject: state.error as Object,
      ),
      redirect: (context, state) async {
        if (authState == null) {
          return LoginScreen.route;
        }
        return null;
      },
    );
  },
);
