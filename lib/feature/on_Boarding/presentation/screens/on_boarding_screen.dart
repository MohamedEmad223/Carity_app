import 'package:charity_app/core/theme/app_colors.dart';
import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:charity_app/feature/on_Boarding/presentation/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routes/routes.dart';
import '../widgets/description_onboarding.dart';
import '../widgets/image_widget.dart';
import '../widgets/text_onboarding_widgets.dart';

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
                    ImageWidget(onBoarding: onBoarding),
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
                              TextOnboardingWidgets(onBoarding: onBoarding),
                              SizedBox(height: 20),
                              DescriptionOnboarding(onBoarding: onBoarding),
                              SizedBox(height: 20),
                              OnBoardingButton(
                                  onPressed: () {
                                    if (onBoarding.currentIndex ==
                                        onBoarding.onBoardingList.length - 1) {
                                      context.read<OnBoardingCubit>().home();
                                    } else {
                                      context.read<OnBoardingCubit>().next();
                                    }
                                  },
                                  text: onBoarding.currentIndex ==
                                          onBoarding.onBoardingList.length - 1
                                      ? 'Start'
                                      : 'Next'),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
