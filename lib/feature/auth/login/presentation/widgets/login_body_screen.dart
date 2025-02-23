import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/widgets/text_form_feild_widget.dart';
import '../../../../on_Boarding/presentation/widgets/custom_button_widget.dart';
import 'do_not_have_email.dart';
import 'forget_password_widget.dart';
import 'images_widgets.dart';
import 'lable_text_form_feild.dart';
import 'or_widgets.dart';
import 'social_icon_row_widget.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ImagesWidgets(),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.signInTextEmail,
                  style: AppTextStyle.poppins22W400blackColor,
                ),
                SizedBox(height: 10.h),
                Text(
                  AppText.enterYourInformation,
                  style: AppTextStyle.poppins14W400blackColor,
                ),
                SizedBox(height: 25.h),
                LableTextFormFeild(
                  lable: AppText.signInTextEmail,
                ),
                SizedBox(height: 5.h),
                TextFormFeildWidget(
                  textInputType: TextInputType.emailAddress,
                  hintText: AppText.signUpTextFormFeildEmailSignUp,
                ),
                SizedBox(height: 10.h),
                LableTextFormFeild(
                  lable: AppText.signInTextPassword,
                ),
                SizedBox(height: 5.h),
                TextFormFeildWidget(
                  hintText: AppText.signUpTextFormFeildPasswordSignUp,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 10.h),
                ForgetPasswordWidget(
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.signUpScreen),
                ),
                SizedBox(height: 25.h),
                CustomButtonWidget(
                  onPressed: () {},
                  text: AppText.signInTextSignIn,
                ),
                SizedBox(height: 20.h),
                OrWidgets(),
                SizedBox(height: 20.h),
                SocialIconRowWidget(),
                SizedBox(height: 30.h),
                CustomDonothaveemail(
                  textOne: AppText.donNotHaveAccount,
                  textTwo: AppText.signInTextEmail,
                  textStyleone: AppTextStyle.poppins14W400blackColor,
                  textStyleTwo: AppTextStyle.poppins12w400primaryColor,
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.signUpScreen),
                ),
                SizedBox(height: 25.h),
                CustomDonothaveemail(
                  textOne: AppText.continueText,
                  textTwo: AppText.gust,
                  textStyleone: AppTextStyle.poppins14W400blackColor,
                  textStyleTwo: AppTextStyle.poppins12w400primaryColor,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
