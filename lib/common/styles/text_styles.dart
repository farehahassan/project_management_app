import 'dart:ui';

// import 'package:aircloset_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_management_app/utils/constants/colors.dart';

class ATextStyles {
  static const String _outfitFont = 'Outfit';
  static TextStyle heading = TextStyle(
    fontSize: 22.0.sp,
    fontWeight: FontWeight.w600,
    fontFamily: _outfitFont,
    color: AColors.black,

    // letterSpacing: 0.56,
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeight.w400,
    color: AColors.softGrey,
    fontFamily: _outfitFont,
  );
  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AColors.white,
    fontFamily: _outfitFont,
  );
}
//   static TextStyle subtitle = TextStyle(
//     fontSize: 13.0.sp,
//     fontWeight: FontWeight.w400,
//     color: AColors.darkerGrey,
//     fontFamily: _plusFamily,
//   );
//   static TextStyle buttonText = TextStyle(
//     fontSize: 16.0.sp,
//     fontWeight: FontWeight.w600,
//     color: AColors.white,
//     fontFamily: _plusFamily,
//   );
//   static TextStyle plusHeading = TextStyle(
//     fontSize: 24.0.sp,
//     fontWeight: FontWeight.w700,
//     color: AColors.primary,
//     fontFamily: _plusFamily,
//   );
//   static TextStyle linkText = TextStyle(
//       fontSize: 12.0.sp,
//       fontWeight: FontWeight.w400,
//       color: AColors.primary,
//       fontFamily: _plusFamily,
//       decoration: TextDecoration.underline,
//       decorationColor: AColors.primary,
//       decorationStyle: TextDecorationStyle.solid,
//       decorationThickness: 2);
//   static TextStyle navTextPink = TextStyle(
//     color: AColors.primary,
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: _plusFamily,
//   );
//   static TextStyle navTextGrey = TextStyle(
//     color: AColors.softGrey,
//     fontSize: 10.sp,
//     fontWeight: FontWeight.w500,
//     fontFamily: _plusFamily,
//   );
//   static TextStyle mediumPlus = TextStyle(
//     fontSize: 16.sp,
//     fontWeight: FontWeight.w600,
//     fontFamily: _plusFamily,
//     color: AColors.black,
//   );

//   // Add more styles as needed
// }
