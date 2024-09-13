import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';

class LoginMethodCard extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final String iconPath;
  const LoginMethodCard({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 248, 242, 242),
          borderRadius: BorderRadius.circular(
            30.sp,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 40.w,
              height: 40.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              buttonText,
              style: ATextStyles.buttonText.copyWith(
                color: AColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
