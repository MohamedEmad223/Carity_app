import 'package:flutter/material.dart';
import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import '../../../../core/theme/app_text_style.dart';

class TextOnboardingWidgets extends StatelessWidget {
  const TextOnboardingWidgets({super.key, required this.onBoarding});
  final OnBoardingCubit onBoarding;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: Text.rich(
        key: ValueKey<int>(onBoarding.currentIndex), // Unique key for animation
        TextSpan(
          text: onBoarding.onBoardingList[onBoarding.currentIndex].titleOne,
          style: AppTextStyle.poppins25W500secondaryColor,
          children: <TextSpan>[
            TextSpan(
              text: onBoarding.onBoardingList[onBoarding.currentIndex].titleTwo,
              style: AppTextStyle.poppins25W500primaryColor,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
