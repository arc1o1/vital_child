import 'package:flutter/material.dart';
import 'package:vital_child/utils/theme/custom_theme/appbar_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/chip_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/text_field_theme.dart';
import 'package:vital_child/utils/theme/custom_theme/text_theme.dart';

class VcTheme {
  // private constructor
  VcTheme._();

  //--------------------------- light theme ------------------------------------

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SanFranciscoPro',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: VcAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: VcBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: VcCheckboxTheme.lightCheckBoxTheme,
    chipTheme: VcChipTheme.lightChipTheme,
    elevatedButtonTheme: VcElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: VcOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: VcTextFieldTheme.lightInputDecorationTheme,
    textTheme: VcTextTheme.lightTextTheme,
  );
}
