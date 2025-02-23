import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_images.dart';
import 'social_icons_widget.dart';

class SocialIconRowWidget extends StatelessWidget {
  const SocialIconRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIconsWidget(
          onPreese: () {},
          socialIcon: SvgPicture.asset(AppImages.googleImage),
        ),
        SocialIconsWidget(
          onPreese: () {},
          socialIcon: SvgPicture.asset(AppImages.facbookImage),
        ),
        SocialIconsWidget(
          onPreese: () {},
          socialIcon: SvgPicture.asset(AppImages.appleImage),
        )
      ],
    );
  }
}
