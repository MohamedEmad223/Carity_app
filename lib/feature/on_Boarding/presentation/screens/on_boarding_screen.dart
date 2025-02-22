import 'package:charity_app/core/theme/app_colors.dart';
import 'package:charity_app/core/theme/app_text_style.dart';
import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routes/routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {
        if (state is GoHomeState) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
          });
        }
      },
      builder: (context, state) {
        final onBoarding = context.watch<OnBoardingCubit>();

        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    // AnimatedSwitcher for the image
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: Image.asset(
                        key: ValueKey<int>(onBoarding
                            .currentIndex), // Unique key for animation
                        onBoarding
                            .onBoardingList[onBoarding.currentIndex].image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
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
                              // AnimatedSwitcher for the title
                              AnimatedSwitcher(
                                duration: Duration(milliseconds: 500),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                                child: Text.rich(
                                  key: ValueKey<int>(onBoarding
                                      .currentIndex), // Unique key for animation
                                  TextSpan(
                                    text: onBoarding
                                        .onBoardingList[onBoarding.currentIndex]
                                        .titleOne,
                                    style: AppTextStyle
                                        .poppins25W500secondaryColor,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: onBoarding
                                            .onBoardingList[
                                                onBoarding.currentIndex]
                                            .titleTwo,
                                        style: AppTextStyle
                                            .poppins25W500primaryColor,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 20),
                              // AnimatedSwitcher for the description
                              AnimatedSwitcher(
                                duration: Duration(milliseconds: 500),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                                child: Text(
                                  key: ValueKey<int>(onBoarding
                                      .currentIndex), // Unique key for animation
                                  onBoarding
                                      .onBoardingList[onBoarding.currentIndex]
                                      .description,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.poppins14W400blackColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              // Button to navigate to the next content
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: MaterialButton(
                                  onPressed: () {
                                    if (onBoarding.currentIndex ==
                                        onBoarding.onBoardingList.length - 1) {
                                      // Navigate to the next screen
                                      context.read<OnBoardingCubit>().home();
                                    } else {
                                      // Go to the next content
                                      context.read<OnBoardingCubit>().next();
                                    }
                                  },
                                  color: AppColors.primaryColor,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    onBoarding.currentIndex ==
                                            onBoarding.onBoardingList.length - 1
                                        ? 'Start'
                                        : 'Next',
                                    style: AppTextStyle.poppins16W400whiteColor,
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
              // SmoothPageIndicator to show progress
              SmoothPageIndicator(
                controller:
                    PageController(initialPage: onBoarding.currentIndex),
                count: onBoarding.onBoardingList.length,
                effect: WormEffect(
                  activeDotColor: AppColors.primaryColor,
                  dotColor: Colors.grey.withOpacity(0.5),
                ),
                onDotClicked: (index) {
                  context.read<OnBoardingCubit>().changeIndex(index);
                },
              ),
              SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }
}
