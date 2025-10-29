import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_golf_app/Widgets/spacing_widget.dart';
import 'package:luxury_golf_app/core/styling/app_colors.dart';
import 'package:luxury_golf_app/core/styling/app_styles.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  final String labelText;
  String? suffixText;
  bool? isPassword;
  IconData? prefixIcon;
  IconData? suffixIcon;
  TextFieldWidget({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(labelText, style: AppTextStyles.textFeildLable),
        HightSpacing(hight: 5),
        SizedBox(
          height: 35.h,
          width: 331.w,
          child: TextField(
            obscureText: isPassword ?? false,
            showCursor: false,
            autofocus: false,
            decoration: InputDecoration(
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.never,

              focusColor: AppColors.blueDBE,
              fillColor: Colors.red,
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.blueBED),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.green008),
              ),
              contentPadding: EdgeInsets.all(0.r),
              prefixIcon: Icon(prefixIcon),
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(suffixIcon)),
            ),
          ),
        ),
      ],
    );
  }
}
