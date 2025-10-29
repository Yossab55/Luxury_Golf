import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';
import 'package:luxury_golf_app/core/styling/app_styles.dart';

class ServiceCardWidget extends StatelessWidget {
  final String imagePath;
  final String svgIconPath;
  final String serviceName;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;

  const ServiceCardWidget({
    super.key,
    required this.imagePath,
    required this.serviceName,
    required this.svgIconPath,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              width: 164.w,
              height: 203.h,
              decoration: BoxDecoration(
                border: Border.all(width: 1.r),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft ?? 0),
                  topRight: Radius.circular(topRight ?? 0),
                  bottomLeft: Radius.circular(bottomLeft ?? 0),
                  bottomRight: Radius.circular(bottomRight ?? 0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: AppColors.black,
                    blurRadius: 4.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft ?? 0),
                  topRight: Radius.circular(topRight ?? 0),
                  bottomLeft: Radius.circular(bottomLeft ?? 0),
                  bottomRight: Radius.circular(bottomRight ?? 0),
                ),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 34.h,
            left: 68.w,
            child: SvgPicture.asset(svgIconPath),
          ),
          Positioned(
            top: 84.h,
            left: -1.w,
            child: Container(
              alignment: Alignment.center,
              width: 166.w,
              height: 43.h,
              decoration: BoxDecoration(
                color: AppColors.blueDBF,
                border: Border.all(),
              ),
              child: Text(serviceName, style: AppTextStyles.blue0A9w600s28),
            ),
          ),
        ],
      ),
    );
  }
}
