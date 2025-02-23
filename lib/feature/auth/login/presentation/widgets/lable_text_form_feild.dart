import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_style.dart';

class LableTextFormFeild extends StatelessWidget {
  const LableTextFormFeild({super.key, required this.lable});
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: AppTextStyle.poppins14W400blackColor,
    );
  }
}
