import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_golf_app/Widgets/navigation_bar_widget.dart';
import 'package:luxury_golf_app/Widgets/service_card_widget.dart';
import 'package:luxury_golf_app/Widgets/spacing_widget.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';
import 'package:luxury_golf_app/core/styling/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Column(
            children: [
              HightSpacing(hight: 118),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Home', style: AppTextStyles.headLineText)],
              ),
              HightSpacing(hight: 29),
              SizedBox(
                width: 344.w,
                height: 203.h,
                child: Row(
                  children: [
                    ServiceCardWidget(
                      imagePath: 'assets/images/golf_car_service_card.jpg',
                      serviceName: 'Rent',
                      svgIconPath: 'assets/icons/golf_car_icon.svg',
                      topLeft: 26.r,
                      topRight: 26.r,
                      bottomLeft: 26.r,
                    ),
                    WidthSpacing(width: 16),
                    ServiceCardWidget(
                      imagePath: 'assets/images/fix_man.jpg',
                      serviceName: 'Fix',
                      svgIconPath: 'assets/icons/fix_icon.svg',
                      topLeft: 26.r,
                      topRight: 26.r,
                      bottomRight: 26.r,
                    ),
                  ],
                ),
              ),
              HightSpacing(hight: 5),
              SizedBox(
                width: 338.w,
                child: Divider(thickness: 1, color: AppColors.black),
              ),
              HightSpacing(hight: 5),
              SizedBox(
                width: 344.w,
                height: 203.h,
                child: Row(
                  children: [
                    ServiceCardWidget(
                      imagePath: 'assets/images/garage_image.jpg',
                      serviceName: 'Garage',
                      svgIconPath: 'assets/icons/garage_icon.svg',
                      topLeft: 26.r,
                      bottomLeft: 26.r,
                      bottomRight: 26.r,
                    ),
                    WidthSpacing(width: 16),
                    ServiceCardWidget(
                      imagePath: 'assets/images/events_image.png',
                      serviceName: 'Events',
                      svgIconPath: 'assets/icons/events_icon.svg',
                      topRight: 26.r,
                      bottomRight: 26.r,
                      bottomLeft: 26.r,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(top: 722.h, child: NavigationBarWidget()),
        ],
      ),
    );
  }
}
