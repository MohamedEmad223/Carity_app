import 'package:charity_app/core/routes/routes.dart';
import 'package:charity_app/feature/on_Boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/auth/forget_password/presentation/screens/forget_password_screen.dart';
import '../../feature/auth/forget_password/presentation/screens/new_password_screen.dart';
import '../../feature/auth/forget_password/presentation/screens/verfication_screen.dart';
import '../../feature/auth/login/presentation/screens/login_screen.dart';
import '../../feature/auth/signup/presentation/screens/sign_up_screen.dart';
import '../../feature/home/presentation/screens/home_screen.dart';
import '../../feature/on_Boarding/presentation/screens/on_boarding_screen.dart';
import '../../feature/splash/presentation/screens/splash_screen.dart';

class AppRoutes {
  Route ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splahScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<OnBoardingCubit>(
                  create: (context) => OnBoardingCubit(),
                  child: OnBoardingScreen(),
                ));
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case Routes.verificationScreen:
        return MaterialPageRoute(builder: (_) => VerficationScreen());
      case Routes.newPasswordScreen:
        return MaterialPageRoute(builder: (_) => NewPasswordScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
