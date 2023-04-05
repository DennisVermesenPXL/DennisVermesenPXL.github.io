import 'package:flutter/material.dart';

abstract class AppStyle {
  static const String fontFamily = 'Ubuntu';

  static const primaryColor = Color.fromRGBO(102, 252, 241, 1.0);
  static const secondaryColor = Color.fromRGBO(63, 150, 146, 1.0);
  static const accentColor = Color.fromRGBO(238, 76, 124, 1.0);
  static const lightBackgroundColor = Color.fromRGBO(31, 40, 51, 1.0);
  static const darkBackgroundColor = Color.fromRGBO(11, 12, 16, 1.0);
  static const textColor = Color.fromRGBO(197, 198, 199, 1.0);

  static const smallTextStyle = TextStyle(
    fontSize: 12.0,
    color: textColor,
    fontWeight: FontWeight.w200,
  );
  static const textStyle =
      TextStyle(fontSize: 16.0, color: textColor, fontWeight: FontWeight.w300);
  static const header6Style =
      TextStyle(fontSize: 20.0, color: textColor, fontWeight: FontWeight.w400);
  static const header5Style = TextStyle(
      fontSize: 24.0, color: primaryColor, fontWeight: FontWeight.w500);
  static const header4Style = TextStyle(
      fontSize: 28.0, color: primaryColor, fontWeight: FontWeight.w600);
  static const header3Style = TextStyle(
      fontSize: 32.0, color: primaryColor, fontWeight: FontWeight.w700);
  static const header2Style = TextStyle(
      fontSize: 36.0, color: primaryColor, fontWeight: FontWeight.w800);
  static const header1Style = TextStyle(
      fontSize: 40.0, color: primaryColor, fontWeight: FontWeight.w900);

  static const maxContentWidth = 1200.0;
  static const contentPadding = 24.0;
}
