import 'package:flutter/material.dart';
import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import '../../../../core/theme/app_text_style.dart';

class DescriptionOnboarding extends StatelessWidget {
  const DescriptionOnboarding({super.key, required this.onBoarding});

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
      child: Text(
        key: ValueKey<int>(onBoarding.currentIndex), 
        onBoarding.onBoardingList[onBoarding.currentIndex].description,
        textAlign: TextAlign.center,
        style: AppTextStyle.poppins14W400blackColor,
      ),
    );
  }
}
