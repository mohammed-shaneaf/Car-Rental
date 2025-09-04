import 'package:car_rental/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLogo() {
  return Container(
    width: 75.w,
    height: 75.h,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Image.asset(Assets.assetsImagesCar), // Replace with your
  );
}
