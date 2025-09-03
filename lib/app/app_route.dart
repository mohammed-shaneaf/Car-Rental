import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // final args = settings.arguments as Map<String, dynamic>?;
  switch (settings.name) {
    case AppName.splash:
      return MaterialPageRoute(builder: (_) => const SplashView());
    // case '/car_form':
    //   return MaterialPageRoute(
    //       builder: (_) => CarFormScreen(car: args?['car']));
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}
