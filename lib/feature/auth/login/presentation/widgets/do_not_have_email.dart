import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_text_style.dart';

class DoNotHaveEmail extends StatelessWidget {
  const DoNotHaveEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.donNotHaveAccount,
          style: AppTextStyle.poppins14W400blackColor,
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () {},
          child: Text(
            AppText.signUpText,
            style: AppTextStyle.poppins12w400primaryColor,
          ),
        )
      ],
    );
  }
}
