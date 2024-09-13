import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_management_app/common/components/custom_textfield.dart';
import 'package:project_management_app/common/styles/text_styles.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Text(""),
      //   // title: Text('SignupScreen'),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
            vertical: 20.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: ATextStyles.heading,
              ),
              SizedBox(
                height: 3.sp,
              ),
              Text(
                "Start Managing by creating account.",
                style: ATextStyles.subtitle,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextfield(),
            ],
          ),
        ),
      ),
    );
  }
}
