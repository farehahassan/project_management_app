import 'package:flutter/material.dart';
import 'package:project_management_app/utils/theme/custom_themes/app_bar_themes.dart';
import 'package:project_management_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:project_management_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:project_management_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:project_management_app/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:project_management_app/utils/theme/custom_themes/text_field_theme.dart';

import 'custom_themes/text_theme.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    dividerColor: Colors.white54,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTextTheme,
    // elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ACheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: AOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: AChipTheme.lightClipTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    dividerColor: Colors.white54,
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
    textTheme: ATextTheme.darkTextTheme,
    // elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ACheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: AOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: AChipTheme.darkClipTheme,
  );
}
