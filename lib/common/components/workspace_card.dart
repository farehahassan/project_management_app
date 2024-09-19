import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/Auth/login/views/login_screen.dart';
import 'package:project_management_app/utils/constants/colors.dart';

class WorkspaceCard extends StatelessWidget {
  const WorkspaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      width: double.infinity.w,
      height: 60.h,
      decoration: BoxDecoration(
        // color: AColors.grey,
        borderRadius: BorderRadius.circular(
          14.r,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AColors.primary,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: Center(
              child: Icon(
                Icons.edit,
                color: AColors.white,
                size: 25.sp,
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Project 1',
                style: ATextStyles.heading.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                '2 members',
                style: ATextStyles.subtitle,
              ),
            ],
          ),
          Spacer(),
          PopupMenuButton<int>(
            shape: ShapeBorder.lerp(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
              1,
            ),
            icon: Icon(Icons.more_vert), // The icon to open the popup menu
            onSelected: (value) {
              // Handling what happens when a menu item is selected
              if (value == 1) {
                Get.snackbar("Menu Item", "Item 1 selected",
                    snackPosition: SnackPosition.BOTTOM);
              } else if (value == 2) {
                Get.snackbar("Menu Item", "Item 2 selected",
                    snackPosition: SnackPosition.BOTTOM);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                padding: EdgeInsets.all(15.sp),
                value: 1, // Assign a value to this item
                child: Row(
                  children: [
                    Icon(
                      IconlyLight.add_user,
                      color: AColors.softGrey,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Invite memebers",
                      style: ATextStyles.subtitle.copyWith(
                          color: AColors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 2, // Assign a value to this item
                child: Row(
                  children: [
                    Icon(
                      IconlyLight.delete,
                      color: AColors.softGrey,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Remove",
                      style: ATextStyles.subtitle.copyWith(
                          color: AColors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // InkWell(
          //   onTap: () {
          //     Get.dialog(
          //       AlertDialog(
          //         title: Text('Dialog Title'),
          //         content: Text('Dialog Content'),
          //         actions: [
          //           TextButton(
          //             onPressed: () => Get.back(),
          //             child: Text('Close'),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          //   child: Icon(
          //     IconlyLight.more_circle,
          //     color: AColors.softGrey,
          //     size: 25.sp,
          //   ),
          // ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}
