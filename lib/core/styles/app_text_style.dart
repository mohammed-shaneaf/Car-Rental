import 'package:car_rental/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle f30blacksbold = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );

  static const TextStyle f16normal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
  );

  static const TextStyle f20meduim = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

}
