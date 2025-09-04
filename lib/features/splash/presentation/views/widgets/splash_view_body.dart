import 'package:car_rental/features/splash/data/splash_contrlloer.dart';
import 'package:car_rental/shared/widgets/app_logo_with_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late final SplashController _controller;

  @override
  void initState() {
    super.initState();
    // Create navigator adapter that depends on context (UI responsibility stays here)
    final navigator = SplashNavigator(context);
    _controller = SplashController(navigator: navigator);
    // Kick off navigation after first frame (avoids calling Navigator during build)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.init(); // handles delay + navigation
    });
  }

  @override
  Widget build(BuildContext context) {
    // No Center() — use SizedBox.expand + Column alignment to center vertically/horizontally
    return SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.all(26.w),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center, // vertical centering
            crossAxisAlignment:
                CrossAxisAlignment.center, // horizontal centering
            children: [
              AppLogoWithName(),
            ],
          ),
        ),
      ),
    );
  }
}

/// Separated, reusable logo widget (presentation-only)
