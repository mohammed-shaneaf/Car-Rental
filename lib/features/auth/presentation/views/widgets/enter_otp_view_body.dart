import 'dart:async';

import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/core/utils/app_spacing.dart';
import 'package:car_rental/core/utils/assets.dart';
import 'package:car_rental/shared/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class EnterOtpViewBody extends StatefulWidget {
  const EnterOtpViewBody({super.key});

  @override
  State<EnterOtpViewBody> createState() => _EnterOtpViewBodyState();
}

class _EnterOtpViewBodyState extends State<EnterOtpViewBody> {
  final _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  static const _otpLength = 6;
  static const _cooldownSeconds = 60;

  Timer? _timer;
  int _secondsLeft = _cooldownSeconds;
  bool _verifying = false;

  @override
  void initState() {
    super.initState();
    _startCooldown();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    super.dispose();
  }

  void _startCooldown() {
    _timer?.cancel();
    setState(() => _secondsLeft = _cooldownSeconds);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      if (_secondsLeft <= 1) {
        t.cancel();
        setState(() => _secondsLeft = 0);
      } else {
        setState(() => _secondsLeft--);
      }
    });
  }

  Future<void> _onResend() async {
    if (_secondsLeft > 0) return;
    // TODO: call your domain usecase to trigger resend OTP
    // await context.read<AuthCubit>().resendOtp();
    _startCooldown();
  }

  Future<void> _onVerify() async {
    if (!_formKey.currentState!.validate()) return;
    final code = _otpController.text.trim();

    setState(() => _verifying = true);
    try {
      // TODO: call your domain usecase to verify code
      // final ok = await context.read<AuthCubit>().verifyOtp(code);
      // if (ok) Nav to next screen:
      if (!mounted) return;
      Navigator.pushNamed(
          context, AppName.enterotpview); // replace with next route
    } finally {
      if (mounted) setState(() => _verifying = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final canVerify = _otpController.text.length == _otpLength && !_verifying;
    final canResend = _secondsLeft == 0;

    final defaultTheme = PinTheme(
      width: 48.w,
      height: 56.h,
      textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade400),
      ),
    );

    final focusedTheme = defaultTheme.copyDecorationWith(
      border: Border.all(color: Theme.of(context).primaryColor, width: 2),
    );

    final submittedTheme = defaultTheme.copyDecorationWith(
      color: Colors.grey.shade100,
      border: Border.all(color: Theme.of(context).primaryColor),
    );

    return Padding(
      padding: AppSpacing.pagePadding,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.verticalSpace,
            Row(children: [SvgPicture.asset(Assets.assetsImagesLogoSvg)]),
            100.verticalSpace,
            Text(
              'Enter verification code',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            20.verticalSpace,
            const Text('We have sent a code to: +100******00'),
            30.verticalSpace,

            // ✅ Pinput OTP
            Pinput(
              controller: _otpController,
              length: _otpLength,
              defaultPinTheme: defaultTheme,
              focusedPinTheme: focusedTheme,
              submittedPinTheme: submittedTheme,
              keyboardType: TextInputType.number,
              autofocus: true,
              separatorBuilder: (index) => 8.horizontalSpace,
              inputFormatters: const [], // add filtering if needed
              validator: (v) {
                if ((v ?? '').length != _otpLength) {
                  return 'Enter $_otpLength digits';
                }
                return null;
              },
              onCompleted: (_) {
                // Optional: auto-verify on complete
                // _onVerify();
              },
              onChanged: (_) =>
                  setState(() {}), // updates Continue enabled state
            ),

            30.verticalSpace,

            // ✅ Continue (Verify) button
            CustomPrimaryButton(
                label: _verifying ? 'Verifying…' : 'Continue',
                onPressed: () {}),

            24.verticalSpace,

            // ✅ "Didn't receive?" + Resend with cooldown
            Text.rich(
              TextSpan(
                text: "Didn't receive the code? ",
                style: TextStyle(fontSize: 14.sp),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: GestureDetector(
                      onTap: canResend ? _onResend : null,
                      child: Text(
                        canResend ? 'Resend' : 'Resend in $_secondsLeft s',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: canResend
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                          decoration: canResend
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
