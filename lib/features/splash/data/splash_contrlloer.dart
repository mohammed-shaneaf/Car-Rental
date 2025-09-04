import 'dart:async';

import 'package:car_rental/app/app_name.dart';
import 'package:flutter/material.dart';

/// Route names live elsewhere (see AppRoutes below)
abstract class ISplashNavigator {
  void toOnboarding();
}

/// Concrete navigator adapter (keeps Navigator out of controller logic)
class SplashNavigator implements ISplashNavigator {
  final BuildContext _context;
  SplashNavigator(this._context);

  @override
  void toOnboarding() {
    Navigator.of(_context).pushReplacementNamed(AppName.onboarding);
  }
}

/// Single responsibility: decide WHEN to navigate (not HOW the UI looks)
class SplashController {
  final ISplashNavigator navigator;
  final Duration delay;

  SplashController({
    required this.navigator,
    this.delay = const Duration(milliseconds: 1200),
  });

  Future<void> init() async {
    // Here you could run checks (auth token, first-launch flag, etc.)
    await Future.delayed(delay);
    navigator.toOnboarding();
  }
}

/// Route names centralized

