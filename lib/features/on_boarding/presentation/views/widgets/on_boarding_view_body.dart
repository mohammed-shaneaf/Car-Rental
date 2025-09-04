import 'package:car_rental/features/on_boarding/presentation/views/widgets/get_started_page.dart';
import 'package:car_rental/features/on_boarding/presentation/views/widgets/welcome_page.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: const [
            WelcomePage(),
            ExperiencePage(),
          ],
        ),
        // Dot indicators (visible on second page, but adding for both)
        Positioned(
          bottom: 100, // Above button
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.white : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

Widget buildGetStartedButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        // Navigate to next screen, e.g., Navigator.push(...)
        print('Get Started tapped');
      },
      child: const Text('Get Started',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}
