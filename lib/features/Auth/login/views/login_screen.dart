import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/common/components/custom_button.dart';
import 'package:project_management_app/common/components/custom_textfield.dart';
import 'package:project_management_app/common/components/login_method_card.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/Auth/login/controller/login_controller.dart';
import 'package:project_management_app/routes/routes_name.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:project_management_app/utils/constants/svg_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
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
                  "Login Account",
                  style: ATextStyles.heading,
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  "Please Login to get started",
                  style: ATextStyles.subtitle,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextfield(
                  controller: controller.emailController.value,
                  hintText: "Enter your email or phone number",
                  icon: IconlyLight.message,
                  fieldName: "Email or Phone number",
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextfield(
                  controller: controller.passwordController.value,
                  hintText: "Create your password",
                  icon: IconlyLight.lock,
                  fieldName: "Password",
                  inputType: TextInputType.text,
                  suffixicon: IconlyLight.hide,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          SingleChildScrollView(
                            child: Container(
                              height: 350.h,
                              width: double.infinity.w,
                              decoration: BoxDecoration(
                                // color: AColors.white,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20.r),
                                  right: Radius.circular(
                                    20.r,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.sp,
                                  vertical: 10.sp,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Forgot Password",
                                      style: ATextStyles.heading,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      "Enter your email or phone number",
                                      style: ATextStyles.subtitle.copyWith(
                                        color: AColors.darkerGrey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    CustomTextfield(
                                      fieldName: "Email or Phone number",
                                      icon: IconlyLight.message,
                                      inputType: TextInputType.emailAddress,
                                      controller:
                                          controller.forgotPassController.value,
                                      hintText:
                                          "Enter your Email or Phone number",
                                      suffixicon: IconlyLight.tick_square,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomButton(
                                        buttonText: "Send Code",
                                        onPressed: () {
                                          Get.bottomSheet(
                                            SingleChildScrollView(
                                              child: Container(
                                                height: 400.h,
                                                width: double.infinity.w,
                                                decoration: BoxDecoration(
                                                  // color: AColors.white,
                                                  borderRadius:
                                                      BorderRadius.horizontal(
                                                    left: Radius.circular(20.r),
                                                    right: Radius.circular(
                                                      20.r,
                                                    ),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20.sp,
                                                    vertical: 10.sp,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Create new password",
                                                        style:
                                                            ATextStyles.heading,
                                                      ),
                                                      SizedBox(
                                                        height: 3.h,
                                                      ),
                                                      Text(
                                                        "Enter new password",
                                                        style: ATextStyles
                                                            .subtitle
                                                            .copyWith(
                                                          color: AColors
                                                              .darkerGrey,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      CustomTextfield(
                                                        fieldName: "Password",
                                                        icon: IconlyLight.lock,
                                                        inputType: TextInputType
                                                            .emailAddress,
                                                        controller: controller
                                                            .newPassController
                                                            .value,
                                                        hintText:
                                                            "Enter New Password",
                                                        suffixicon: IconlyLight
                                                            .tick_square,
                                                      ),
                                                      SizedBox(
                                                        height: 20.h,
                                                      ),
                                                      CustomTextfield(
                                                        fieldName:
                                                            "Confirm Password",
                                                        icon: IconlyLight.lock,
                                                        inputType: TextInputType
                                                            .emailAddress,
                                                        controller: controller
                                                            .confirmPasswordController
                                                            .value,
                                                        hintText:
                                                            "Enter Confirm Password",
                                                        suffixicon: IconlyLight
                                                            .tick_square,
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      CustomButton(
                                                        buttonText:
                                                            "Change Password",
                                                        onPressed: () {
                                                          Get.toNamed(AppRoutes
                                                              .otpScreen);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // barrierColor: const Color.fromARGB(34, 255, 255, 255),
                                            enableDrag: true,

                                            elevation: 3.0,
                                            isDismissible: true,
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(),
                                            ignoreSafeArea: false,
                                            clipBehavior: Clip.hardEdge,
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // barrierColor: const Color.fromARGB(34, 255, 255, 255),
                          enableDrag: true,

                          elevation: 3.0,
                          isDismissible: true,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(),
                          ignoreSafeArea: false,
                          clipBehavior: Clip.hardEdge,
                        );
                      },
                      child: Text(
                        "Forgot pass?",
                        style: ATextStyles.subtitle.copyWith(
                          fontSize: 16.sp,
                          color: AColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  buttonText: "Log In",
                  onPressed: () {
                    Get.toNamed(AppRoutes.homePage);
                  },
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
                    Get.toNamed(AppRoutes.signupScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: ATextStyles.subtitle.copyWith(
                          fontSize: 14.sp,
                          color: AColors.darkerGrey,
                        ),
                      ),
                      Text(
                        "Create Account",
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
