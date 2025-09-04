import 'package:car_rental/core/styles/app_text_style.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/custom_password_field.dart';
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
          'Welcome Back Ready to hit the road.',
          style: AppTextStyle.f30blacksbold,
        ),
        40.verticalSpace,
        const CustomTextFormField(
            hintText: 'Email/Phone Number',
            textInputType: TextInputType.emailAddress),
        20.verticalSpace,
        CustomPasswordTextField(passwordController: TextEditingController()),
        30.verticalSpace,
      ],
    );
  }
}
