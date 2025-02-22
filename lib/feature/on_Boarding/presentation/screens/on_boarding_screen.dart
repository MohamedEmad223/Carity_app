import 'package:charity_app/core/theme/app_colors.dart';
import 'package:charity_app/core/helpers/app_images.dart';
import 'package:charity_app/core/helpers/app_text.dart';
import 'package:charity_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  AppImages.onBoarding1,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 60,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Browsing ',
                              style: AppTextStyle.poppins25W500secondaryColor,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'charities',
                                  style: AppTextStyle.poppins25W500primaryColor,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            AppText.onBoardingtextSubtitleOne,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.poppins14W400blackColor,
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MaterialButton(
                              onPressed: () {},
                              color: AppColors.primaryColor,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text('data'),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
