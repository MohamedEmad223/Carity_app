import 'package:flutter/material.dart';

import 'feature/splash/presentation/screens/splash_screen.dart';

class CharityApp extends StatelessWidget {
  const CharityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Charity App',
      home: SplashScreen(),
    );
  }
}