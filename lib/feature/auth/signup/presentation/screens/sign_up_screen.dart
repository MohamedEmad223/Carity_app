import 'package:flutter/material.dart';

import '../widgets/sign_up_body_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SignUpBodyScreen(),
    );
  }
}
