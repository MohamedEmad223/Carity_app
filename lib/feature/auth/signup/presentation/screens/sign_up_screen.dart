import 'package:flutter/material.dart';

import '../../../login/presentation/widgets/images_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ImagesWidgets()],
      ),
    );
  }
}
