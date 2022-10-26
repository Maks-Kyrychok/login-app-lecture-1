import 'package:flutter/material.dart';

import '../resources/values/app_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: AppColors.bodyTextColor,
            fontSize: 30,
            fontFamily: 'Poppins-ExtraBold',
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins-Light',
            fontWeight: FontWeight.normal),
        bodyText2: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: AppColors.primaryColor,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintStyle: const TextStyle(
            color: AppColors.formFieldTextColor,
            fontSize: 20,
            fontFamily: 'Poppins-Light',
            fontWeight: FontWeight.normal),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Poppins-Light',
              fontWeight: FontWeight.normal),
          primary: AppColors.accentColor,
        ),
      ),
    );
  }
}
