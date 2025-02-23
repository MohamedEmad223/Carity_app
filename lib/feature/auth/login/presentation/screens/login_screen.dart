import 'package:flutter/material.dart';

import '../widgets/login_body_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginBodyScreen(),
    );
  }
}
