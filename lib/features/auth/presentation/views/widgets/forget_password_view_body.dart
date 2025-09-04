import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/styles/app_text_style.dart';
import 'package:car_rental/core/themes/app_colors.dart';
import 'package:car_rental/core/utils/app_spacing.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.pagePadding,
      child: Column(
        children: [
          20.verticalSpace,
          Row(
            children: [
              SvgPicture.asset(Assets.assetsImagesLogoSvg),
            ],
          ),
          200.verticalSpace,
          const Text(
            'Reset Your Password ?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          40.verticalSpace,
          const Text(
            'Enter the email address associated with your account and we will send you a link to reset your password.',
          ),
          40.verticalSpace,
          CustomPrimaryButton(label: 'Continue', onPressed: () {}),
          30.verticalSpace,
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppName.signin);
            },
            child: const Text(
              'Return to sign in',
              style: AppTextStyle.f20meduim,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppName.signup);
            },
            child: Text.rich(TextSpan(
              text: 'Create ',
              style: AppTextStyle.f20meduim,
              children: [
                TextSpan(
                  text: 'New Account',
                  style: AppTextStyle.f20meduim.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
