import 'package:flutter/material.dart';

class CharityApp extends StatelessWidget {
  const CharityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Charity App',
      home: HomePage(),
    );
  }
}