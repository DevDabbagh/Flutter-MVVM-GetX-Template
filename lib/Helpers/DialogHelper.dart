import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/Helpers/text_style.dart';

import '../App/app.dart';
import '../Locale/app_localization.dart';
import 'assets_color.dart';

class DialogHelper {
  //show error dialog
  static void showDialog(
      {String title = 'خطأ',
      String? description = 'Something went wrong',
      ArtSweetAlertType? type = ArtSweetAlertType.warning,
      Function? submit}) {
    ArtSweetAlert.show(
        context: Application.navigatorKey.currentState!.context,
        artDialogArgs: ArtDialogArgs(
            type: type,
            title: title,
            text: description == '' ? null : description,
            confirmButtonColor: ColorHelper.color_button,
            confirmButtonText: AppLocalization.instance.cancel,
            onConfirm: submit));
  }

  // static void showDialogWithCancelBtn(
  //     {String title = 'Error',
  //     String? description = 'Something went wrong',
  //     Function? submit}) {
  //   ArtSweetAlert.show(
  //       context: Application.navigatorKey.currentState!.context,
  //       artDialogArgs: ArtDialogArgs(
  //           type: ArtSweetAlertType.warning,
  //           title: title,
  //           text: description,
  //           showCancelBtn: true,
  //           cancelButtonColor: AssetsColors.green,
  //           confirmButtonColor: AssetsColors.green,
  //           cancelButtonText: Utils.getString().cancel,
  //           confirmButtonText: Utils.getString().ok,
  //           onConfirm: submit));
  // }

  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                color: ColorHelper.color_app,
              ),
              const SizedBox(height: 8),
              Text(
                message ?? 'انتظر...',
                style: AppTextStyles.getRegularTextStyle(
                    color: ColorHelper.color_text_black_392C23),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading() {
    // print()
    if (Get.isDialogOpen!) Get.back();
  }
}
