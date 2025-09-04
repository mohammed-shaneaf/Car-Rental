import 'package:car_rental/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogoWithName extends StatelessWidget {
  const AppLogoWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.assetsImagesLogo,
      width: 220.w,
      height: 220.h,
      fit: BoxFit.contain,
    );
  }
}
