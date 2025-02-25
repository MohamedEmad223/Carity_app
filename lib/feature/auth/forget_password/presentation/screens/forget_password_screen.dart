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

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            ImagesWidgets(),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.forgetPasswordText,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.poppins22W400blackColor,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    AppText.enterYourEmailToResetPassword,
                    style: AppTextStyle.poppins14W400blackColor,
                  ),
                  SizedBox(height: 20.h),
                  LableTextFormFeild(
                    lable: AppText.emailTextSignUp,
                  ),
                  SizedBox(height: 10.h),
                  TextFormFeildWidget(
                    hintText: AppText.enterEmailText,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 25.h),
                  CustomButtonWidget(
                    text: AppText.sendText,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.verificationScreen);
                    },
                  ),
                  SizedBox(height: 25.h),
                  CustomDonothaveemail(
                    textOne: AppText.alreadyHaveAccountText,
                    textTwo: AppText.signInTextEmail,
                    textStyleone: AppTextStyle.poppins14W400blackColor,
                    textStyleTwo: AppTextStyle.poppins12w400primaryColor,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
