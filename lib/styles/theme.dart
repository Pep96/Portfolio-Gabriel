import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

ThemeData kCustomTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: CustomColor.scaffoldBg,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).copyWith(
    bodyLarge: GoogleFonts.poppins(color: CustomColor.whitePrimary),
    bodyMedium: GoogleFonts.poppins(color: CustomColor.whiteSecondary),
    titleLarge: GoogleFonts.poppins(
      color: CustomColor.whitePrimary,
      fontWeight: FontWeight.bold,
    ),
  ),
  iconTheme: const IconThemeData(color: CustomColor.whitePrimary),
  chipTheme: ChipThemeData(
    labelStyle: GoogleFonts.poppins(
      color: CustomColor.whitePrimary,
      fontSize: 13,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColor.yellowPrimary,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      fixedSize: const Size.fromHeight(48),
      textStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
    ),
  ),
);
