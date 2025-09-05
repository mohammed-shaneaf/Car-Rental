import 'package:car_rental/features/auth/presentation/views/widgets/enter_otp_view_body.dart';
import 'package:flutter/material.dart';

class EnterOtpView extends StatelessWidget {
  const EnterOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EnterOtpViewBody()),
    );
  }
}
