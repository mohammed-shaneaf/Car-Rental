import 'package:car_rental/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_text_field/phone_text_field.dart';

class CountryAndPhoneTextField extends StatelessWidget {
  const CountryAndPhoneTextField({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      controller: phoneController,
      initialCountryCode: "SY", // default to Syria for example
      decoration: InputDecoration(
        hintText: "Enter phone number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
      onChanged: (phone) {
        debugPrint("Phone: ${phone.completeNumber}");
      },
    );
  }
}
