import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as AppLocale;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:timeago/timeago.dart';

import '../App/Constant.dart';
import '../App/app.dart';

class AppLocalization {
  static AppLocale.AppLocalizations get instance =>
      AppLocale.AppLocalizations.of(Application.navigatorKey.currentContext!)!;

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
  static final all = [
    const Locale('ar'),
    const Locale('en'),
  ];
  static AppLocalizations getString() {
    return AppLocalizations.of(Application.navigatorKey.currentState!.context)!;
  }


  static getLocale() {
    if (Application.staticSharedPreferences!
        .getString(Constants.APPLICATION_LOCALE) ==
        null) {
      Application.staticSharedPreferences!
          .setString(Constants.APPLICATION_LOCALE, "ar");
    }

    return Locale(Application.staticSharedPreferences!
        .getString(Constants.APPLICATION_LOCALE)!);
  }
}
