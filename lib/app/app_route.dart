import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/features/auth/presentation/views/enter_otp_view.dart';
import 'package:car_rental/features/auth/presentation/views/forget_password_view.dart';
import 'package:car_rental/features/sign_in/presentation/views/sign_in_view.dart';
import 'package:car_rental/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:car_rental/features/auth/presentation/views/verify_account_view.dart';
import 'package:car_rental/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:car_rental/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // final args = settings.arguments as Map<String, dynamic>?;
  switch (settings.name) {
    case AppName.splash:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case AppName.onboarding:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case AppName.signin:
      return MaterialPageRoute(builder: (_) => const SignInView());

    case AppName.signup:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    case AppName.forgetpasswordview:
      return MaterialPageRoute(builder: (_) => const ForgetPasswordView());

    case AppName.verifyaccount:
      return MaterialPageRoute(builder: (_) => const VerifyAccountView());

    case AppName.enterotpview:
      return MaterialPageRoute(builder: (_) => const EnterOtpView());
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
