import 'package:ezy_course_app/src/services/app_theme/theme_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(),
      debugShowCheckedModeBanner: false,
      theme: ThemeConfiguration.initialTheme,
    );
  }
}
