import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget(
      {super.key,
      required this.hintText,
      this.controller,
      required this.textInputType});
  final String hintText;
  final TextEditingController? controller;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: AppColors.greyColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: AppColors.greyColor,
            ),
            gapPadding: 0),
        hintText: hintText,
        hintStyle: AppTextStyle.poppins14W400greyColor,
      ),
    );
  }
}
