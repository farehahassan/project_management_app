import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:project_management_app/common/components/custom_button.dart';
import 'package:project_management_app/common/styles/text_styles.dart';
import 'package:project_management_app/features/OtpScreen/controller/otp_screen_controller.dart';
import 'package:project_management_app/routes/routes_name.dart';
import 'package:project_management_app/utils/constants/colors.dart';
import 'package:project_management_app/utils/constants/image_strings.dart';
// import 'package:project_management_app/features/Auth/login/views/login_screen.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreenController controller = Get.put(OtpScreenController());
  OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification",
          style: ATextStyles.buttonText.copyWith(
            color: AColors.black,
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
            vertical: 20.sp,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 130.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AColors.accent,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      top: 0.h,
                      left: 0.w,
                      bottom: 0.sp,
                      right: 0.sp,
                      child: Padding(
                        padding: EdgeInsets.all(12.0.sp),
                        child: Container(
                          width: 100.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: AColors.primary,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.none,
                              alignment: Alignment.center,
                              image: AssetImage(
                                AImages.emailLock,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Verification Code",
                  style: ATextStyles.heading,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "We have sent the verification code to your email",
                  style: ATextStyles.subtitle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "hfariha104@gmail.com",
                  style: ATextStyles.subtitle.copyWith(
                    color: AColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                OtpTextField(
                  fieldWidth: 50.w,
                  // fieldHeight: 80.h,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  numberOfFields: 5,
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  textStyle: ATextStyles.buttonText.copyWith(
                    color: AColors.black,
                  ),
                  borderColor: AColors
                      .primary, //set to true to show as box or false to show as dash
                  showFieldAsBox: true,

                  //runs when a code is typed in
                  autoFocus: true,
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  // onSubmit: (val) {
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  buttonText: "Submit",
                  onPressed: () {
                    Get.bottomSheet(
                      backgroundColor: AColors.white,
                      Container(
                        height: 500.h,
                        width: double.infinity.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.sp,
                            vertical: 10.sp,
                          ),
                          child: Column(
                            children: [
                              LottieBuilder.asset(
                                "assets/animations/tick.json",
                                width: 150.w,
                                height: 150.h,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Verification Successful",
                                style: ATextStyles.heading,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "You have reset your password successfully\nlogin to get amazing experience",
                                style: ATextStyles.subtitle,
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              CustomButton(
                                buttonText: "Go To Login page",
                                onPressed: () {
                                  Get.toNamed(AppRoutes.loginScreen);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't recieve the code? ",
                      style: ATextStyles.subtitle.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                    Obx(() {
                      return OtpTimerButton(
                        backgroundColor: AColors.light,
                        buttonType: ButtonType.text_button,
                        textColor: AColors.primary,
                        controller: controller.otpController.value,
                        onPressed: () {},
                        text: Text(
                          'Resend',
                          style: ATextStyles.subtitle.copyWith(
                            fontSize: 14.sp,
                            color: AColors.primary,
                          ),
                        ),
                        loadingIndicatorColor: AColors.primary,
                        duration: 60,
                      );
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
