import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/utils/constants/colors.dart';
// import 'package:project_management_app/features/Onboarding/views/onboarding.dart';
// import 'package:project_management_app/common/styles/text_styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        style: ATextStyles.subtitle.copyWith(
          color: AColors.black,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.sp,
            horizontal: 20.sp,
          ),
          prefixIcon: Icon(
            IconlyLight.profile,
            size: 25.sp,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              30.sp,
            ),
            borderSide: BorderSide(
              width: 1.5.w,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
