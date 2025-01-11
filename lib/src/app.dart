import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ezy_course_app/src/services/router/routes.dart';

class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);
    final theme = ref.watch(themeStateProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: theme.currentTheme,
      title: 'EzyCourse Demo App',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ScaffoldUtilities.instance.key,
    );
  }
}
