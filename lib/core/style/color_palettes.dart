import 'package:flutter/material.dart';

class ColorPalettes {
  const ColorPalettes._();

  static const _kPrimaryValue = 0xff6e78f7;

  static const kPrimary = Color(_kPrimaryValue);
  static const kBlack = Color(0xff313450);
  static const kDarkGrey = Color(0xff898a8f);
  static const kGrey = Color(0xff94a5a6);
  static const kLightGrey = Color(0xfff5f5f5);
  static const kDivider = Color(0xffECECEC);

  static const kGreyBackground = kLightGrey;

  static const kPrimarySwatch = MaterialColor(
    _kPrimaryValue,
    <int, Color>{
      50: Color(_kPrimaryValue),
      100: Color(_kPrimaryValue),
      200: Color(_kPrimaryValue),
      300: Color(_kPrimaryValue),
      400: Color(_kPrimaryValue),
      500: Color(_kPrimaryValue),
      600: Color(_kPrimaryValue),
      700: Color(_kPrimaryValue),
      800: Color(_kPrimaryValue),
      900: Color(_kPrimaryValue),
    },
  );
}
