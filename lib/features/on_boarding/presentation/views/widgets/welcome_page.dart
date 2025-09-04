import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/build_logo.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Background image with gradient overlay
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                  Assets.assetsImagesOnBoardingOne), // Add your car image here
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.darken),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            40.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: buildLogo(),
            ),
            40.verticalSpace,
            const Text(
              'Welcome to Qent',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: CustomPrimaryButton(label: 'Next', onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
