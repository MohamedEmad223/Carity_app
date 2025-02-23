import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key, required this.socialIcon, this.onPreese});

  final Widget socialIcon;
  final void Function()? onPreese;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPreese, child: socialIcon);
  }
}
