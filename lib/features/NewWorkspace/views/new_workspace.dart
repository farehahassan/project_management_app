import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/components/custom_textfield.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/utils/constants/colors.dart';

class NewWorkspace extends StatelessWidget {
  const NewWorkspace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      backgroundColor: AColors.white,
      appBar: AppBar(
        backgroundColor: AColors.white,
        title: Text(
          'Make Workspace',
          style: ATextStyles.heading.copyWith(
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextfield(
              fieldName: "Title",
              icon: IconlyLight.folder,
              inputType: TextInputType.text,
              controller: titleController,
              hintText: "Enter Workspace Title",
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextfield(
              fieldName: "Category",
              icon: IconlyLight.folder,
              inputType: TextInputType.text,
              controller: titleController,
              hintText: "Select Workspace category",
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextfield(
              fieldName: "Icons",
              icon: IconlyLight.folder,
              inputType: TextInputType.text,
              controller: titleController,
              hintText: "Select Workspace Icons",
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "Pick Color",
              style: ATextStyles.heading.copyWith(
                fontSize: 20.sp,
              ),
            ),
            ...List.generate(5, (index)=> Container(),)
          ],
        ),
      ),
    );
  }
}
