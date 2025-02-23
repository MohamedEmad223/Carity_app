import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_text.dart';
import '../../../../../core/theme/app_text_style.dart';
import 'images_widgets.dart';
import 'lable_text_form_feild.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ImagesWidgets(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.signInTextEmail,
                    style: AppTextStyle.poppins22W400blackColor,
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppText.enterYourInformation,
                    style: AppTextStyle.poppins14W400blackColor,
                  ),
                  SizedBox(height: 25),
                  LableTextFormFeild(
                    lable: AppText.signInTextEmail,
                  ),
                  SizedBox(height: 10),
                  LableTextFormFeild(
                    lable: AppText.signInTextPassword,
                  ),
                ],
              ),
            ),
          )
        ],
      );
  }
}