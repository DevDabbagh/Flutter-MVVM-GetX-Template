import 'package:flutter/material.dart';

import 'package:template/Helpers/text_style.dart';

import '../App/app.dart';
import 'assets_color.dart';

class SnackBarHelper {




  // Find the ScaffoldMessenger in the widget tree
  // and use it to show a SnackBar.
  static show({String msg = "قيد التطوير"}) {
    ScaffoldMessenger.of(Application.navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          backgroundColor: ColorHelper.color_app,
          content: Text(msg, style: AppTextStyles.getRegularTextStyle(
              color: Colors.white),),
        )
    );
  }

}