import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/components/workspace_card.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/Home/controller/home_controller.dart';
import 'package:project_management_app/features/navbar/views/navbar.dart';
import 'package:project_management_app/routes/routes_name.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> settings = ["Help", "Login"];
    DrawerControllerX controller = Get.put(DrawerControllerX());
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(0.r),
              ),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(0.r),
              ),
            ),
            2),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.sp,
            vertical: 20.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Your Workspace",
                style: ATextStyles.heading,
              ),
              SizedBox(
                height: 20.h,
              ),
              ...List.generate(
                3,
                (index) => WorkspaceCard(),
              ),
              InkWell(
                onTap: () {
                  Get.offAndToNamed(AppRoutes.newWorkspaceScreen);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(
                      //   bottom: 20.sp,
                      // ),
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: AColors.grey,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: AColors.darkGrey,
                          size: 20.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Add Workspace",
                      style: ATextStyles.buttonText.copyWith(
                        color: AColors.black,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text("heyyyyy"),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fareha Hassan",
                            style: ATextStyles.heading.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "Let's work casually",
                            style:
                                ATextStyles.subtitle.copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AColors.softGrey,
                        size: 20.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ...List.generate(
                    2,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        bottom: 20.sp,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(
                            //   bottom: 20.sp,
                            // ),
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: AColors.grey,
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.help,
                                color: AColors.darkGrey,
                                size: 20.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            settings[index],
                            style: ATextStyles.buttonText.copyWith(
                              color: AColors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AColors.primary,
        leadingWidth: double.infinity.w,
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  // Get.
                  if (_scaffoldKey.currentState != null) {
                    if (_scaffoldKey.currentState!.isDrawerOpen) {
                      Get.back(); // Close the drawer if it is open
                    } else {
                      _scaffoldKey.currentState!
                          .openDrawer(); // Open the drawer
                    }
                  }
                  controller.toggleDrawer();
                },
                child: CircleAvatar(
                  radius: 25.r,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, " + "Fareha Hassan",
                    style: ATextStyles.whiteHeading.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    "Let's work casually",
                    style: ATextStyles.subtitle.copyWith(color: AColors.black),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AColors.accent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    IconlyBold.filter,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AColors.accent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: badges.Badge(
                    badgeAnimation: badges.BadgeAnimation.fade(
                      animationDuration: Duration(milliseconds: 300),
                    ),
                    badgeContent: Text(' '),
                    position: badges.BadgePosition.custom(
                      end: -10.sp,
                      top: -10.sp,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      elevation: 2,
                      // badgeContentPadding: EdgeInsets.all(0),
                      badgeColor: AColors.error,
                      shape: badges.BadgeShape.circle,
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 30.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: NavBar(),
    );
  }
}
