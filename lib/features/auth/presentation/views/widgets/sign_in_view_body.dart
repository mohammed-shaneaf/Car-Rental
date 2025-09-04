import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/styles/app_text_style.dart';
import 'package:car_rental/core/utils/app_spacing.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/features/auth/presentation/views/widgets/remember_me_and_froget_password.dart';
import 'package:car_rental/shared/widgets/custom_password_field.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:car_rental/shared/widgets/custom_secondry_button.dart';
import 'package:car_rental/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppSpacing.pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            CustomPasswordTextField(
                passwordController: TextEditingController()),
            30.verticalSpace,
            const RembmerMeAndForgetPasswordWidget(),
            28.verticalSpace,
            CustomPrimaryButton(label: 'Sign In', onPressed: () {}),
            20.verticalSpace,
            CustomSecondryButton(
              label: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(context, AppName.signup);
              },
              // isDisabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
