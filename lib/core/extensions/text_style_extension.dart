import 'package:flutter/material.dart';
import 'package:cleantdd/core/resources/resources.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get thin => weight(FontWeight.w100);
  TextStyle get extraLight => weight(FontWeight.w200);

  TextStyle get light => weight(FontWeight.w300);

  TextStyle get regular => weight(FontWeight.normal);

  TextStyle get medium => weight(FontWeight.w500);

  TextStyle get semiBold => weight(FontWeight.w600);

  TextStyle get bold => weight(FontWeight.w700);

  TextStyle get extraBold => weight(FontWeight.w800);

  TextStyle get superExtraBold => weight(FontWeight.w900);

  TextStyle get primaryColor => textColor(MyColors.primary);

  TextStyle get primaryGray => textColor(MyColors.grayTextColor3);

  TextStyle get primaryDark => textColor(MyColors.primaryDark);

  TextStyle get primaryWhite => textColor(MyColors.primaryWhite);

  TextStyle get primaryOrange => textColor(MyColors.orangeColor);

  TextStyle get textGray => textColor(MyColors.grayTextColor3);

  TextStyle get errorText => textColor(MyColors.redColor);

  TextStyle get blueText => textColor(MyColors.blueColor);

  TextStyle get buttonDisable => textColor(MyColors.grayTextColor3);

  TextStyle get buttonActive => textColor(MyColors.blackTextColor1);

  TextStyle size(double size) => copyWith(fontSize: size);

  TextStyle textColor(Color v) => copyWith(color: v);

  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
}

extension ColorSchemeExtension on ColorScheme {
  bool get isDark => brightness == Brightness.dark;
  Color get primaryColor => isDark ? MyColors.primaryDark : MyColors.primary;
}
