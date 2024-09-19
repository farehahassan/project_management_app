import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:project_management_app/common/components/workspace_card.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/Home/controller/home_controller.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerControllerX controller = Get.put(DrawerControllerX());
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity.w,
              height: 100.h,
              color: AColors.primary,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.sp,
                  vertical: 20.sp,
                ),
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 30.h,
                    // ),
                    SearchBar(
                      textStyle: WidgetStatePropertyAll(
                        ATextStyles.subtitle.copyWith(
                          color: AColors.black,
                        ),
                      ),
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: 15.sp,
                        ),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      leading: Icon(
                        IconlyLight.search,
                        color: AColors.black,
                        size: 25.sp,
                      ),
                      hintText: "Search for projects",
                      hintStyle: WidgetStatePropertyAll(
                        ATextStyles.subtitle.copyWith(
                          color: AColors.black,
                        ),
                      ),
                      side: WidgetStatePropertyAll(
                        BorderSide(
                          color: AColors.black,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      elevation: WidgetStatePropertyAll(0),
                      enabled: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
