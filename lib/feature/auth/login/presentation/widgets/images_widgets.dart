import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_images.dart';

class ImagesWidgets extends StatelessWidget {
  const ImagesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.loginBackgroundimage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 80.h,
          left: 40.w,
          child: Image.asset(
            AppImages.blankImage,
          ),
        ),
        Positioned(
          top: 90.h,
          left: 10.w,
          right: 10.w,
          child: Container(
            height: 200.h,
            width: double.infinity,
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
          ),
        )
      ],
    );
  }
}
