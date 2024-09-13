import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:project_management_app/features/Home/views/home_screen.dart';
import 'package:project_management_app/routes/routes.dart';
import 'package:project_management_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.system,
          theme: AAppTheme.lightTheme,
          // darkTheme: AAppTheme.darkTheme,

          getPages: GetAppRoute().getRoutes(),

          // home: HomeScreen(),
        );
      },
    );
  }
}
