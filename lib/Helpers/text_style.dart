import 'dart:ui';

import 'package:flutter/material.dart';

import 'assets_color.dart';
import 'assets_helper.dart';

class AppTextStyles {
  static getHeavyTextStyle(
      {double fontSize = 14,
      Color colorValue = ColorHelper.color_green_3EC4B5}) {
    return TextStyle(
        color: colorValue,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w900);
  }

  static getBoldTextStyle({double fontSize = 14, Color color = Colors.white}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w700);
  }

  static getBoldTextStyleGreen(
      {double fontSize = 14, Color color = ColorHelper.color_green_3EC4B5}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w700);
  }

  static getMediumTextStyle(
      {double fontSize = 14, Color color = ColorHelper.color_green_3EC4B5}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w500);
  }

  static getRegularTextStyle(
      {fontSize = 14, color = ColorHelper.color_green_3EC4B5}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w400);
  }

  static getLightTextStyle(
      {double fontSize = 14, Color color = ColorHelper.color_green_3EC4B5}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: Assets.FONT_Avenir,
        fontWeight: FontWeight.w300);
  }
}
