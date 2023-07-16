import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:template/App/app.dart';
import 'package:template/App/app_route.dart';
import 'package:template/Locale/app_localization.dart';

import 'App/binding.dart';
import 'Helpers/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Application.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          navigatorKey: Application.navigatorKey,
          localizationsDelegates: AppLocalization.localizationsDelegates,
          debugShowCheckedModeBanner: false,
          getPages: Routes.appRoutes,
          theme: ThemeHelper.appTheme,
          initialBinding: Binding(),
          locale: const Locale("en"),
          supportedLocales: AppLocalization.all,
        );
      },
    );
  }
}
