
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:template/Locale/app_localization.dart';

class Application {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Application instance = Application();
  static const pageSize = 20;
  static  Future<SharedPreferences> sharedPreferences =
      SharedPreferences.getInstance();


   static SharedPreferences? staticSharedPreferences ;


  Application() {
    init();
  }

  static void init() async {
    staticSharedPreferences ??= await sharedPreferences;
  }


}