import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/text_form_feild_widget.dart';
import '../../../login/presentation/widgets/do_not_have_email.dart';
import '../../../login/presentation/widgets/images_widgets.dart';
import '../../../login/presentation/widgets/lable_text_form_feild.dart';
import '../../../login/presentation/widgets/or_widgets.dart';
import '../../../login/presentation/widgets/social_icon_row_widget.dart';

class SignUpBodyScreen extends StatelessWidget {
  const SignUpBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImagesWidgets(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.createAccountText,
                  style: AppTextStyle.poppins22W400blackColor,
                ),
                SizedBox(height: 10.h),
                Text(
                  AppText.enterYourInformation,
                  style: AppTextStyle.poppins14W400blackColor,
                ),
                SizedBox(height: 15.h),
                LableTextFormFeild(
                  lable: AppText.nameTextSignUp,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  textInputType: TextInputType.name,
                  hintText: AppText.enterNameText,
                ),
                SizedBox(height: 10.h),
                LableTextFormFeild(
                  lable: AppText.emailTextSignUp,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  textInputType: TextInputType.emailAddress,
                  hintText: AppText.signUpTextFormFeildEmailSignUp,
                ),
                SizedBox(height: 10.h),
                LableTextFormFeild(
                  lable: AppText.passwordTextSignUp,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  textInputType: TextInputType.visiblePassword,
                  hintText: AppText.signUpTextFormFeildPasswordSignUp,
                ),
                SizedBox(height: 10.h),
                LableTextFormFeild(
                  lable: AppText.confirmPasswordTextSignUp,
                ),
                SizedBox(height: 10.h),
                TextFormFeildWidget(
                  textInputType: TextInputType.visiblePassword,
                  hintText: AppText.signUpTextFormFeildConfirmPasswordSignUp,
                ),
                SizedBox(height: 20.h),
                CustomButtonWidget(
                  text: AppText.signUpText,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.loginScreen);
                  },
                ),
                SizedBox(height: 15.h),
                OrWidgets(),
                SizedBox(height: 15.h),
                SocialIconRowWidget(),
                SizedBox(height: 15.h),
                CustomDonothaveemail(
                  textOne: AppText.alreadyHaveAccount,
                  textTwo: AppText.signInTextEmail,
                  textStyleone: AppTextStyle.poppins14W400blackColor,
                  textStyleTwo: AppTextStyle.poppins12w400primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
