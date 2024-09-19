// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_management_app/features/Auth/login/views/login_screen.dart';
import 'package:project_management_app/features/Auth/signup/views/signup_screen.dart';
import 'package:project_management_app/features/Home/views/home_page.dart';
import 'package:project_management_app/features/Home/views/home_screen.dart';
import 'package:project_management_app/features/NewWorkspace/views/new_workspace.dart';
import 'package:project_management_app/features/Onboarding/views/onboarding.dart';
import 'package:project_management_app/features/OtpScreen/views/otp_screen.dart';
import 'package:project_management_app/features/navbar/views/navbar.dart';
// import 'package:project_management_app/main.dart';
import 'package:project_management_app/routes/routes_name.dart';

class GetAppRoute {
  List<GetPage> getRoutes() {
    return [
      GetPage(
        name: AppRoutes.onboardingScreen,
        page: () => OnboardingScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 2),
      ),
      GetPage(
        name: AppRoutes.signupScreen,
        page: () => SignupScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.loginScreen,
        page: () => LoginScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.otpScreen,
        page: () => OtpScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.homeScreen,
        page: () => HomeScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.homePage,
        page: () => HomePage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.navbarScreen,
        page: () => NavBar(),
        transition: Transition.upToDown,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      GetPage(
        name: AppRoutes.newWorkspaceScreen,
        page: () => NewWorkspace(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 400),
      ),
    ];
  }
}
