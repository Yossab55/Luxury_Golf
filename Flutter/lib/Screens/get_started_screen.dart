import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 200.h,
            child: Image.asset(
              'assets/images/get_started_golf_car.png',
              width: 375.w,
              height: 342.h,
              // fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 535.h,
            child: SvgPicture.asset(
              'assets/images/get_started.svg',
              width: 388.w,
              height: 277.h,
            ),
          ),
          Positioned(
            top: 600.h,
            left: 18.w,
            child: SvgPicture.asset(
              'assets/images/white_circle.svg',
              width: 160.w,
              height: 162.h,
            ),
          ),
          // Positioned(
          //   top: 645.h,
          //   left: 50.w,
          //   child: Text('Get Started' , style: TextStyle(f),),

          // ),
        ],
      ),
    );
  }
}
