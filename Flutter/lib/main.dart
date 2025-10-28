import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_golf_app/Screens/get_started_screen.dart';
import 'package:luxury_golf_app/Widgets/buttom_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:luxury_golf_app/Widgets/spacing_widget.dart';
import 'package:luxury_golf_app/Widgets/text_field_widget.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';
import 'package:luxury_golf_app/core/styling/app_styles.dart';
import 'package:luxury_golf_app/core/styling/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppThemes.lightTheme,
          home: child,
        );
      },
      child: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetStartedScreen();
  }
}
