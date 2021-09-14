import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/color_palettes.dart';

class AppThemes {
  const AppThemes._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: ColorPalettes.kPrimary,
    dividerColor: ColorPalettes.kDivider,
    primarySwatch: ColorPalettes.kPrimarySwatch,
    scaffoldBackgroundColor: ColorPalettes.kGreyBackground,
  );
}
