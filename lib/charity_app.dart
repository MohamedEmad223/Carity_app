import 'package:charity_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';

class CharityApp extends StatelessWidget {
  const CharityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charity App',
      initialRoute: Routes.splahScreen,
      onGenerateRoute: AppRoutes().ongenerateRoute,
    );
  }
}
