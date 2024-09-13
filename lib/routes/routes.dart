import 'package:get/get.dart';
import 'package:project_management_app/features/Auth/signup/views/signup_screen.dart';
import 'package:project_management_app/features/Home/views/home_screen.dart';
import 'package:project_management_app/features/Onboarding/views/onboarding.dart';
// import 'package:project_management_app/main.dart';
import 'package:project_management_app/routes/routes_name.dart';

class GetAppRoute {
  List<GetPage> getRoutes() {
    return [
      GetPage(
        name: AppRoutes.homeScreen,
        page: () => OnboardingScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(seconds: 2),
      ),
      GetPage(
        name: AppRoutes.signupScreen,
        page: () => SignupScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(seconds: 1),
      ),
    ];
  }
}
