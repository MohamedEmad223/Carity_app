import 'package:bloc/bloc.dart';
import 'package:charity_app/core/helpers/app_images.dart';
import 'package:charity_app/core/helpers/app_text.dart';
import 'package:charity_app/feature/on_Boarding/data/models/on_boarding_model.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: AppText.onBoardingtextTitleOne,
      description: AppText.onBoardingtextSubtitleOne,
      image: AppImages.onBoarding1,
    ),
    OnBoardingModel(
      title: AppText.onBoardingtextTitletwo,
      description: AppText.onBoardingtextSubtitleTwo,
      image: AppImages.onBoarding2,
    ),
    OnBoardingModel(
      title: AppText.onBoardingtextTitlethree,
      description: AppText.onBoardingtextSubtitleThree,
      image: AppImages.onBoarding3,
    ),
  ];

  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(NextState());
  }

  void next() {
    if (currentIndex >=DateTime.march onBoardingList.length - 1) {
      currentIndex++;
      emit(NextState());
    } else {
      emit(GoHomeState());
    }
  }
}
