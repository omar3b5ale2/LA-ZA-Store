import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fonts_manager.dart';

class TextStylesManager {
  const TextStylesManager._();
  static TextStyle ibmPlexSansArabicRegular = GoogleFonts.ibmPlexSansArabic(
    fontWeight: FontWeightManager.regular,
    color: const Color(0xffffffff)
  );
  static TextStyle ibmPlexSansArabicMedium = GoogleFonts.ibmPlexSansArabic(
    fontWeight: FontWeightManager.medium,
      color: const Color(0xffffffff)
  );
  static TextStyle ibmPlexSansArabicSemiBold = GoogleFonts.ibmPlexSansArabic(
    fontWeight: FontWeightManager.semiBold,
      color: const Color(0xffffffff)
  );
  static TextStyle ibmPlexSansArabicBold = GoogleFonts.ibmPlexSansArabic(
    fontWeight: FontWeightManager.bold,
      color: const Color(0xffffffff)
  );
}

class ShadowStyles {
  const ShadowStyles._();
}

class GradientStyles {
  const GradientStyles._();
}
