import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/utils/constants/colors.dart';
// import 'package:project_management_app/features/Onboarding/views/onboarding.dart';
// import 'package:project_management_app/common/styles/text_styles.dart';

class CustomTextfield extends StatelessWidget {
  final String fieldName;
  final IconData icon;
  IconData? suffixicon;
  final TextEditingController controller;
  final String hintText;
  final TextInputType inputType;
  bool? obscureText;
  String? errorText;

  CustomTextfield({
    this.errorText,
    super.key,
    required this.fieldName,
    required this.icon,
    required this.inputType,
    this.suffixicon,
    required this.controller,
    required this.hintText,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldName,
          style: ATextStyles.heading.copyWith(
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              // horizontal: 10.sp,
              ),
          alignment: Alignment.center,
          width: double.infinity.w,
          height: 55.h,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 242, 242),
            borderRadius: BorderRadius.circular(
              30.sp,
            ),
          ),
          child: TextField(
            obscureText: obscureText ?? false,
            controller: controller,
            keyboardType: inputType,
            style: ATextStyles.subtitle.copyWith(
              color: AColors.black,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              errorText: errorText,
              hintStyle: ATextStyles.subtitle,
              suffixIcon: Icon(
                suffixicon,
                size: 25.sp,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15.sp,
                horizontal: 20.sp,
              ),
              prefixIcon: Icon(
                icon,
                size: 25.sp,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  30.sp,
                ),
                borderSide: BorderSide(
                  width: 1.5.w,
                  color: AColors.primary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
