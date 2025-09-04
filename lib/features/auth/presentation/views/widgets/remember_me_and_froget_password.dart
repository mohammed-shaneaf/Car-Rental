import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/styles/app_text_style.dart';
import 'package:car_rental/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class RembmerMeAndForgetPasswordWidget extends StatelessWidget {
  const RembmerMeAndForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        const Text('Remember me', style: AppTextStyle.f16normal),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppName.forgetpasswordview);
          },
          child: Text(
            'Forgot Password?',
            style: AppTextStyle.f16normal.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
