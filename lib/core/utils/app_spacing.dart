import 'package:flutter/material.dart';

/// Centralized spacing and radius utilities.
/// Use these instead of hardcoding paddings or radii.
class AppSpacing {
  // 🔹 Border Radius
  static const BorderRadius radius8 = BorderRadius.all(Radius.circular(8));
  static const BorderRadius radius12 = BorderRadius.all(Radius.circular(12));
  static const BorderRadius radius16 = BorderRadius.all(Radius.circular(16));
  static const BorderRadius radius24 = BorderRadius.all(Radius.circular(24));
  static const BorderRadius radius32 = BorderRadius.all(Radius.circular(32));

  // 🔹 Edge Insets (Padding / Margin)
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 16);

  static const EdgeInsets all8 = EdgeInsets.all(8);
  static const EdgeInsets all12 = EdgeInsets.all(12);
  static const EdgeInsets all16 = EdgeInsets.all(16);
  static const EdgeInsets all24 = EdgeInsets.all(24);

  static const EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 16,
  );

  // 🔹 Gaps / SizedBoxes (useful in Column/Row)
  static const SizedBox gap4 = SizedBox(height: 4, width: 4);
  static const SizedBox gap8 = SizedBox(height: 8, width: 8);
  static const SizedBox gap12 = SizedBox(height: 12, width: 12);
  static const SizedBox gap16 = SizedBox(height: 16, width: 16);
  static const SizedBox gap24 = SizedBox(height: 24, width: 24);
  static const SizedBox gap32 = SizedBox(height: 32, width: 32);
}
