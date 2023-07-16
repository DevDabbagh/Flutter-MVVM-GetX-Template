import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Helpers/assets_color.dart';
import '../../Helpers/text_style.dart';
import '../../Locale/app_localization.dart';
import 'splash_viewmodel.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final controller = Get.put(SplashViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 25.h),
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(8),
                child: const Text("Welcome Demo"),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
