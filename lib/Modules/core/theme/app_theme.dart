import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamiapp/Modules/Core/colors/app_colors.dart';

class AppTheme {
  static const bool isDark = false;
  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "elmessiri",
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "elmessiri",
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.lightPrim,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
      ));
  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        titleMedium: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "elmessiri",
          color: Colors.white,
        ),
        titleSmall: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "elmessiri",
          color: Colors.white,
        ),
        bodyMedium: const TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          color: AppColors.darkSec,
        ),
      ),
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: AppColors.darkPrim),
      iconTheme: IconThemeData(color: AppColors.darkSec),
      cardColor: AppColors.darkPrim,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkPrim,
        selectedItemColor: AppColors.darkSec,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
      ));
}
