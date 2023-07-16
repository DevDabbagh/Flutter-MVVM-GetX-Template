import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/Locale/app_localization.dart';
import 'package:template/Module/base/BaseStatelessScreen.dart';
import 'package:template/Module/home/home_viewmodel.dart';

class HomeScreen extends BaseStateless {
  HomeScreen({Key? key}) : super(key: key);

  HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(AppLocalization.instance.cancel),
    );
  }
}
