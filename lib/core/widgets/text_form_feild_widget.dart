import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget({super.key, required this.hintText, this.controller});
  final String hintText;
  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.red,
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
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.poppins14W400greyColor,
      ),
    );
  }
}
