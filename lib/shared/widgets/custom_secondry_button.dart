import 'package:car_rental/core/themes/app_colors.dart';
import 'package:car_rental/core/utils/app_spacing.dart';
import 'package:flutter/material.dart';

class CustomSecondryButton extends StatelessWidget {
  const CustomSecondryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.maxWidth = 390, // cap width on large screens
    this.height = 62, // consistent tap height (>=48 is good for a11y)
    this.backgroundColor, // optional override
    this.textColor = Colors.black,
    this.fontSize = 18,
    this.radius,
    this.isDisabled = false,
    this.expand = true, // fill available width up to maxWidth
  });

  final String label;
  final VoidCallback onPressed;
  final double maxWidth;
  final double height;
  final Color? backgroundColor;
  final Color textColor;
  final double fontSize;
  final BorderRadius? radius;
  final bool isDisabled;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final btn = ElevatedButton(
      style: ElevatedButton.styleFrom(
        // ✅ Default to gray background instead of primary
        backgroundColor: isDisabled
            ? AppColors.grayColor.withOpacity(0.4)
            : (backgroundColor ?? AppColors.grayColor),

        // ✅ Add primary border
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 2,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: radius ?? AppSpacing.radius16,
        ),

        elevation: 0, // flatter design for secondary
        minimumSize: Size(0, height),
        tapTargetSize: MaterialTapTargetSize.padded,
      ),
      onPressed: isDisabled ? null : onPressed,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: textColor, // defaults to black for contrast
        ),
      ),
    );

    // Expand to available width but never exceed maxWidth
    final wrapped = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        minHeight: height,
      ),
      child: expand ? SizedBox(width: double.infinity, child: btn) : btn,
    );

    return Center(child: wrapped);
  }
}
