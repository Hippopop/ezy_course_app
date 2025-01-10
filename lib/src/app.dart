import 'package:flutter/material.dart';

import 'features/root/views/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'EzyCourse Demo App',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}