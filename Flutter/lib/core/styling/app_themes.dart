import 'package:flutter/material.dart';

import 'app_fonts.dart';
import 'app_styles.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: AppFonts.mainFont,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: AppTextStyles.primaryTextStyle,
      titleSmall: AppTextStyles.subTextStyle,
    ),
  );
}
