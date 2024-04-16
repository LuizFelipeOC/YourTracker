import 'package:flutter/material.dart';

import '../app_colors.dart';

final class LightTheme {
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.lightBackground,
        textTheme: _textTheme(),
        textButtonTheme: _textButton(),
        elevatedButtonTheme: _elevatedButton(),
      );

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
