import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_golf_app/Widgets/buttom_widget.dart';
import 'package:luxury_golf_app/Widgets/spacing_widget.dart';
import 'package:luxury_golf_app/Widgets/text_field_widget.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';
import 'package:luxury_golf_app/core/styling/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRemmemberd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: Image.asset(
              'assets/images/Back_Ground.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 177.h,
            child: Container(
              height: 625.h,
              width: 375.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(width: 1.w, color: Color(0xffB4B4B4)),
                color: AppColors.authenticationBackGroundColor.withValues(
                  alpha: .9,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 45.h),
                  Image.asset(
                    'assets/images/Logo.png',
                    width: 54.w,
                    height: 53.h,
                  ),
                  Text(
                    'Welcome to Luxury Golf',
                    style: AppTextStyles.primaryTextStyle,
                  ),
                  Text(
                    'Please log in using the form below',
                    style: AppTextStyles.subTextStyle,
                  ),
                  HightSpacing(hight: 43),
                  TextFieldWidget(labelText: 'Email', prefixIcon: Icons.email),
                  HightSpacing(hight: 18),
                  TextFieldWidget(
                    labelText: 'Password',
                    isPassword: true,
                    prefixIcon: Icons.lock_outlined,
                    suffixIcon: FluentIcons.eye_20_filled,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      WidthSpacing(width: 10),
                      SizedBox(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isRemmemberd,
                              onChanged: (value) {
                                setState(() {
                                   isRemmemberd = !isRemmemberd;
                                });
                              },
                            ),
                            Text(
                              'Remember me',
                              style: AppTextStyles.black11Bold,
                            ),
                          ],
                        ),
                      ),
                      WidthSpacing(width: 80),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password ?',
                          style: AppTextStyles.hyperTextStyle,
                        ),
                      ),
                    ],
                  ),
                  HightSpacing(hight: 31),
                  MainButtomWidget(text: 'Login'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}