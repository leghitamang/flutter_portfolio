import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_sabin/theme/colors.dart';

ThemeData theme() {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.primary,
    backgroundColor: AppColors.bg,
    scaffoldBackgroundColor: AppColors.bg,
    textTheme: TextTheme(
      headline4: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
        ),
      ),
      headline5: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
      ),
      bodyText1: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 14,
          color: AppColors.textColor,
        ),
      ),
      bodyText2: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 14,
          color: AppColors.textColor,
        ),
      ),
    ),
  );
}
