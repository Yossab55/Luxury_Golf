import 'package:flutter/material.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';

import 'app_fonts.dart';
import 'app_styles.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: AppColors.,
    textTheme: TextTheme(
      titleLarge: AppTextStyles.primaryTextStyle,
      titleSmall: AppTextStyles.subTextStyle,
    ),
  );
}
