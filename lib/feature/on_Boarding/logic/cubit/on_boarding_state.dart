part of 'on_boarding_cubit.dart';


sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}

final class NextState extends OnBoardingState {}

final class GoHomeState extends OnBoardingState {}
