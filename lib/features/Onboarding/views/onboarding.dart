import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_management_app/common/components/custom_button.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/Onboarding/controller/onboarding_controller.dart';
import 'package:project_management_app/routes/routes_name.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: Column(
          children: [
            // PageView for content
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged:
                    controller.onPageChanged, // Manually handle page changes
                children: [
                  _buildPage(
                    svgOnboard: ASvgs.onboard1,
                    heading: 'Easy Steps to\nOrganize your projects',
                    subtext:
                        'Urna amet, suspendisse ullamcorper ac elit\n diam facilisis cursus vestibulum.',
                  ),
                  _buildPage(
                    svgOnboard: ASvgs.onboard2,
                    heading: 'The Best app For tracking\n your projects',
                    subtext:
                        'Urna amet, suspendisse ullamcorper ac elit\n diam facilisis cursus vestibulum.',
                  ),
                  _buildPage(
                    svgOnboard: ASvgs.onboard3,
                    heading: 'Track your work\nget results',
                    subtext:
                        'Urna amet, suspendisse ullamcorper ac elit\n diam facilisis cursus vestibulum.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            // Indicator wrapped in Obx since it depends on currentPage
            Obx(() => _buildIndicator()),
            SizedBox(height: 20.h),
            // Button at the bottom
            CustomButton(
              onPressed: () {
                Get.toNamed(AppRoutes.signupScreen);
              },
              buttonText: "Create Account",
            ),
            SizedBox(
              height: 10.h,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppRoutes.loginScreen);
              },
              child: Text(
                "Already have an account?",
                style: ATextStyles.buttonText.copyWith(
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({
    required String heading,
    required String subtext,
    required String svgOnboard,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 350.w,
          height: 300.h,
          child: SvgPicture.asset(svgOnboard),
        ),
        SizedBox(
          height: 100.h,
        ),
        Text(
          textAlign: TextAlign.center,
          heading,
          style: ATextStyles.heading,
        ),
        SizedBox(height: 20.h),
        Text(
          subtext,
          textAlign: TextAlign.center,
          style: ATextStyles.subtitle,
        ),
      ],
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          width: controller.currentPage.value == index ? 12.w : 8.w,
          height: controller.currentPage.value == index ? 12.h : 8.h,
          decoration: BoxDecoration(
            color: controller.currentPage.value == index
                ? Colors.blue
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
