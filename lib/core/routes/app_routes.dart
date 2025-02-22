import 'package:charity_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../feature/home/presentation/screens/home_screen.dart';
import '../../feature/splash/presentation/screens/splash_screen.dart';

class AppRoutes {
  Route ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splahScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
