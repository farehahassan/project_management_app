import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/components/custom_button.dart';
import 'package:project_management_app/common/components/custom_textfield.dart';
import 'package:project_management_app/common/components/login_method_card.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/routes/routes_name.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignupScreen({Key? key}) : super(key: key);
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
            horizontal: 25.sp,
            vertical: 20.sp,
          ),
          child: SingleChildScrollView(
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
                CustomTextfield(
                  icon: IconlyLight.profile,
                  hintText: "Enter your username",
                  controller: usernameController,
                  fieldName: "Username",
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextfield(
                  controller: emailController,
                  hintText: "Enter your email or phone number",
                  icon: IconlyLight.message,
                  fieldName: "Email or Phone number",
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextfield(
                  controller: passwordController,
                  hintText: "Create your password",
                  icon: IconlyLight.lock,
                  fieldName: "Password",
                  inputType: TextInputType.text,
                  suffixicon: IconlyLight.hide,
                  obscureText: true,
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  buttonText: "Create Account",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or using other methods",
                      style: ATextStyles.subtitle.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                LoginMethodCard(
                  iconPath: ASvgs.google,
                  buttonText: "Signup with Google",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                LoginMethodCard(
                  iconPath: ASvgs.facebook,
                  buttonText: "Signup with Facebook",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.loginScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: ATextStyles.subtitle.copyWith(
                          fontSize: 14.sp,
                          color: AColors.darkerGrey,
                        ),
                      ),
                      Text(
                        "Login",
                        style: ATextStyles.subtitle.copyWith(
                          fontSize: 16.sp,
                          color: AColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
