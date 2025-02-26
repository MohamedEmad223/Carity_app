import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/text_form_feild_widget.dart';
import '../../../login/presentation/widgets/images_widgets.dart';
import '../../../login/presentation/widgets/lable_text_form_feild.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ImagesWidgets(),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.newPasswordText,
                  style: AppTextStyle.poppins22W400blackColor,
                ),
                Text(AppText.enterYourNewPasswordText,
                    style: AppTextStyle.poppins14W400blackColor),
                SizedBox(height: 20.h),
                LableTextFormFeild(
                  lable: AppText.newPasswordText,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  hintText: AppText.enterYourConfirmPasswordText,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 10.h),
                LableTextFormFeild(
                  lable: AppText.confirmPasswordText,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  hintText: AppText.enterYourConfirmPasswordText,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 30.h),
                CustomButtonWidget(
                  text: AppText.confirmText,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
