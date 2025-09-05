import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/utils/app_spacing.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/features/auth/presentation/views/widgets/country_and_phone_text_field.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VerifyAccountViewBody extends StatelessWidget {
  const VerifyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();

    return Padding(
      padding: AppSpacing.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.verticalSpace,
          Row(
            children: [
              SvgPicture.asset(Assets.assetsImagesLogoSvg),
            ],
          ),
          100.verticalSpace,
          const Text(
            'Verify your phone number',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          20.verticalSpace,
          const Text('We have sent you an SMS with a code to number'),
          30.verticalSpace,

          /// ✅ Phone Input Field
          CountryAndPhoneTextField(phoneController: phoneController),

          30.verticalSpace,
          CustomPrimaryButton(
              label: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, AppName.enterotpview);
              }),
        ],
      ),
    );
  }
}
