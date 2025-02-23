import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_text_style.dart';

class OrWidgets extends StatelessWidget {
  const OrWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.33,
          child: Divider(
            height: 25.h,
            color: AppColors.greyColor,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          AppText.orText,
          style: AppTextStyle.poppins20W400blackColor,
        ),
        SizedBox(
          width: 10.w,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.33,
          child: Divider(
            height: 25,
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
