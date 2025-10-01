import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';

class MainButtomWidget extends StatelessWidget {
  final String text;
  const MainButtomWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: 331.w,
        height: 35.h,
        decoration: BoxDecoration(
          gradient: AppColors.primaryButtomsColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Text(text, style: AppTextStyles.mainButtomsTextStyle),
      ),
    );
  }
}
