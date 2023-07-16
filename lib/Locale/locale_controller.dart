import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/App/app.dart';
import 'package:template/Locale/app_localization.dart';

import '../App/Constant.dart';

class LocaleController extends GetxController {
  @override
  void onInit() async {
    await initLocale();
    super.onInit();

  }

  initLocale() async {
    if (Application.staticSharedPreferences!.getString(Constants.APPLICATION_LOCALE) != null) {
      Application.staticSharedPreferences!.getString(Constants.APPLICATION_LOCALE)!.toString();


      update();
    } else {
      await Application.staticSharedPreferences!.setString(Constants.APPLICATION_LOCALE, 'ar');
      update();
    }
  }

  void setLocale(Locale locale) async {
    if (!AppLocalization.all.contains(locale)) return;
    Get.updateLocale(locale);
    await Application.staticSharedPreferences!
        .setString(Constants.APPLICATION_LOCALE, locale.languageCode);

    update();
  }
}
