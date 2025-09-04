import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/build_logo.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                  Assets.assetsImagesOnBoardingOne), // Same or different image
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: buildLogo(),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Lets Start A New Experience With Car Rental.',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Discover your next adventure with Qent. We\'re here to provide you with a seamless car rental experience. Let\'s get started on your journey.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: CustomPrimaryButton(
                  label: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, AppName.signin);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
