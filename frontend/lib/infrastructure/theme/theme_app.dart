import 'package:flutter/material.dart';
import 'package:laris_clean/infrastructure/theme/theme_appbar.dart';
import 'package:laris_clean/infrastructure/theme/theme_bottomsheet.dart';
import 'package:laris_clean/infrastructure/theme/theme_checkbox.dart';
import 'package:laris_clean/infrastructure/theme/theme_chip.dart';
import 'package:laris_clean/infrastructure/theme/theme_elevatedbutton.dart';
import 'package:laris_clean/infrastructure/theme/theme_outlinebutton.dart';
import 'package:laris_clean/infrastructure/theme/theme_text.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: TAppBar.lightAppBarTheme,
    // fontFamily: "Poppins"
    brightness: Brightness.light,
    elevatedButtonTheme: TElevatedButton.lightElevatedButtonTheme,
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    bottomSheetTheme: TBottomSheet.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlineButton.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: TAppBar.blackAppBarTheme,
    // fontFamily: "Poppins"
    brightness: Brightness.dark,
    elevatedButtonTheme: TElevatedButton.darkElevatedButtonTheme,
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.dartTextTheme,
    bottomSheetTheme: TBottomSheet.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlineButton.darkOutlinedButtonTheme,
  );
}
