import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../login/presentation/widgets/images_widgets.dart';
import '../widgets/pin_put_them_widget.dart';

class VerficationScreen extends StatelessWidget {
  const VerficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImagesWidgets(),
          SizedBox(height: 10.h),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.verificationText,
                  style: AppTextStyle.poppins22W400blackColor,
                ),
                SizedBox(height: 10.h),
                Text(
                  AppText.anActivationText,
                  style: AppTextStyle.poppins14W400blackColor,
                ),
                SizedBox(height: 20.h),
                Pinput(
                  length: 6,
                  showCursor: true,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  defaultPinTheme: defaultPinTheme,
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    '23s',
                    style: AppTextStyle.poppins12w400primaryColor,
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    AppText.resendCodeText,
                    style: AppTextStyle.poppins14W400greyColor,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomButtonWidget(
                  onPressed: () {},
                  text: AppText.verfyText,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
