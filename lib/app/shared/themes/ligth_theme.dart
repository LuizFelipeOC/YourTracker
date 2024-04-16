import 'package:flutter/material.dart';

import '../app_colors.dart';

final class LightTheme {
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.lightBackground,
        textTheme: _textTheme(),
        textButtonTheme: _textButton(),
        elevatedButtonTheme: _elevatedButton(),
        iconTheme: _iconTheme(),
        inputDecorationTheme: _inputDecoration(),
      );

  InputDecorationTheme _inputDecoration() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.1,
          color: AppColors.darkBackground.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.1,
          color: AppColors.darkBackground.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.1,
          color: AppColors.darkBackground.withOpacity(1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      hintStyle: TextStyle(
        color: AppColors.darkBackground,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      ),
      suffixIconColor: AppColors.darkBackground,
      filled: true,
      fillColor: AppColors.grey.withOpacity(0.7),
      contentPadding: const EdgeInsets.all(15),
    );
  }

  IconThemeData _iconTheme() {
    return IconThemeData(
      color: AppColors.darkBackground,
      size: 38,
    );
  }

  ElevatedButtonThemeData _elevatedButton() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(
          AppColors.green200,
        ),
        backgroundColor: MaterialStatePropertyAll(AppColors.green),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  TextButtonThemeData _textButton() {
    return TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(AppColors.grey),
      ),
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      headlineSmall: TextStyle(
        color: AppColors.darkBackground,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: AppColors.darkBackground,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkBackground,
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
    );
  }
}
