import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:template/Module/ListExample/list_screen.dart';
import 'package:template/Module/base/BaseGetxController.dart';

import '../../App/Constant.dart';
import '../../App/app.dart';
import '../home/home_screen.dart';

class SplashViewModel extends BaseGetxController {


  @override
  void onInit() {
    super.onInit();
    splashDelay();
  }

  splashDelay() async {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        SharedPreferences sharedPreferences =
            await Application.sharedPreferences;
        bool isUserLogin =
            sharedPreferences.getBool(Constants.USER_IS_LOGIN) ?? false;

        if (isUserLogin) {
          Get.offAll(() => HomeScreen());
          return;
        }
        Get.offAll(() => ExampleListScreen());
      },
    );
  }
}
