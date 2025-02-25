import 'package:charity_app/core/helpers/app_images.dart';
import 'package:charity_app/core/helpers/app_text.dart';
import 'package:charity_app/feature/on_Boarding/data/models/on_boarding_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      titleOne: AppText.onBoardingtextTitleOneOneSpan,
      titleTwo: AppText.onBoardingtextTitleOneTwoSpan,
      description: AppText.onBoardingtextSubtitleOne,
      image: AppImages.onBoarding1,
    ),
    OnBoardingModel(
     titleOne: AppText.onBoardingtextTitletwofirstSpan,
      titleTwo: AppText.onBoardingtextTitletwosecondSpan,
      description: AppText.onBoardingtextSubtitleTwo,
      image: AppImages.onBoarding2,
    ),
    OnBoardingModel(
      titleOne: AppText.onBoardingtextTitlethreefirestSpan,
      titleTwo: AppText.onBoardingtextTitlethreesecondSpan,
      description: AppText.onBoardingtextSubtitleThree,
      image: AppImages.onBoarding3,
    ),
  ];
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(NextState()); // Emit a state to rebuild the UI
  }

  void next() {
    if (currentIndex < onBoardingList.length - 1) {
      currentIndex++;
      emit(NextState()); // Emit a state to rebuild the UI
    } else {
      emit(GoHomeState()); // Emit a state to navigate to the home screen
    }

   
  }

   void home() {
      emit(GoHomeState());
    }
}
