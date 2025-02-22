import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.onBoarding});

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
      child: Image.asset(
        key: ValueKey<int>(onBoarding.currentIndex), // Unique key for animation
        onBoarding.onBoardingList[onBoarding.currentIndex].image,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
