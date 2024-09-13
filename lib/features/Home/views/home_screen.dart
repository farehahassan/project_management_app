import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity.w,
            height: 500,
            child: OnBoardingAnimation(
              pages: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.pink,
                ),
              ],
              indicatorDotHeight: 7.0,
              indicatorDotWidth: 7.0,
              indicatorType: IndicatorType.expandingDots,
              indicatorPosition: IndicatorPosition.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
