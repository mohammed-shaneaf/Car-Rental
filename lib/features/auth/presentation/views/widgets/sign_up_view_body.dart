import 'package:car_rental/core/styles/app_text_style.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/custom_password_field.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:car_rental/shared/widgets/custom_secondry_button.dart';
import 'package:car_rental/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        Row(
          children: [
            SvgPicture.asset(Assets.assetsImagesLogoSvg),
          ],
        ),
        50.verticalSpace,
        const Text(
          'Sign Up',
          style: AppTextStyle.f30blacksbold,
        ),
        40.verticalSpace,
        const CustomTextFormField(
            hintText: 'Full Name', textInputType: TextInputType.name),
        20.verticalSpace,
        const CustomTextFormField(
            hintText: 'Email', textInputType: TextInputType.emailAddress),
        20.verticalSpace,
        CustomPasswordTextField(passwordController: TextEditingController()),
        20.verticalSpace,
        const CustomTextFormField(
            hintText: 'Phone Number', textInputType: TextInputType.phone),
        30.verticalSpace,
        CustomPrimaryButton(label: 'Sign Up', onPressed: () {}),
        20.verticalSpace,
        CustomSecondryButton(label: 'Sign In', onPressed: () {}, maxWidth: 0.5),
      ],
    );
  }
}
