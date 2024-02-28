import 'package:flutter/material.dart';

class CColors {
  CColors._();

  // App Basic Colors
  static Color primary = const Color(0xFF4B68FF);
  static Color secondary = const Color(0xFFFFE24B);
  static Color accent = const Color(0xFFB0C7FF);

  // Gradient Colors
  static Gradient linearGradient = const LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  // Text Colors
  static Color textPrimary = const Color(0xFF333333);
  static Color textSecondary = const Color(0xFF6C7570);
  static Color textWhite = const Color(0xFFFFFFFF);

  // Background Colors
  static Color light = const Color(0xFFF6F6F6);
  static Color dark = const Color(0xFF272727);
  static Color primaryBackground = const Color(0xFFF3F5FF);

  // Background Container Colors
  static Color lightContainer = const Color(0xFFF6F6F6);
  static Color darkContainer = CColors.white.withOpacity(0.1);

  // Button Colors
  static Color buttonPrimary = const Color(0xFF4B68FF);
  static Color buttonSecondary = const Color(0xFF6C7570);
  static Color buttonDisable = const Color(0xFFC4C4C4);

  // Border Colors
  static Color borderPrimary = const Color(0xFFD9D9D9);
  static Color borderSecondary = const Color(0xFFE6E6E6);

  // Error and Validation Colors
  static Color error = const Color(0xFFD32F2F);
  static Color success = const Color(0xFF388E3C);
  static Color warning = const Color(0xFFF57C00);
  static Color info = const Color(0xFF1976D2);

  // Neutral Shades Colors
  static Color black = const Color(0xFF232323);
  static Color darkerGrey = const Color(0xFF4F4F4F);
  static Color darkGrey = const Color(0xFF939393);
  static Color grey = const Color(0xFFE0E0E0);
  static Color softGrey = const Color(0xFFF4F4F4);
  static Color lightGrey = const Color(0xFFF9F9F9);
  static Color white = const Color(0xFFFFFFFF);
}
