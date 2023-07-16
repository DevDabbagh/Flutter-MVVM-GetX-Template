import 'package:get/get.dart';
import 'package:template/Module/home/home_screen.dart';

import '../Module/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homeScreen = '/home_screen';

  static List<GetPage<dynamic>> appRoutes = [
    GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routes.homeScreen, page: () => HomeScreen()),
  ];
}
