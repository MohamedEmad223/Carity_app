import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_text_style.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(AppText.signInTextForgotPassword,
          style: AppTextStyle.poppins14W400greyColor),
    );
  }
}
