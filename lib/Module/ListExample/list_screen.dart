// ignore_for_file: must_be_immutable

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:template/Helpers/assets_color.dart';

import 'list_controller.dart';

class ExampleListScreen extends StatelessWidget {
  ExampleListScreen({Key? key}) : super(key: key);

  ListController listController = Get.put(ListController());

  // HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.bgColor,
      appBar: _buildAppBar(),
      body: GetBuilder<ListController>(builder: (controller) {
        return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isLoadingRequest
                ? _buildLoading()
                : _buildMainBody());
      }),
    );
  }

  /// AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: ColorHelper.prColor,
      centerTitle: true,
      actions: [
        IconButton(onPressed: _handleOnPress, icon: Icon(Icons.add)),
        IconButton(
            onPressed: () async {
            },
            icon: const Icon(Icons.ac_unit))
      ],
      title: const Text("Restful API - Dio"),
    );
  }

  void _handleOnPress() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      print("result is found");
    } else {
      print("no result found");
    }
  }


  /// Main Body
  RefreshIndicator _buildMainBody() {
    return RefreshIndicator(
      color: ColorHelper.prColor,
      onRefresh: () {
        return listController.onRefresh();
      },
      child: listController.listCurrencies.isEmpty
          ? const Text(
              "empty",
              style: TextStyle(fontSize: 50),
            )
          : ListView.builder(
              controller: listController.scrollController,

              itemCount: listController.listCurrencies.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(20),
                    child: Text("${listController.listCurrencies[index].dValue}",
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                );
              },
            ),
    );
  }

  /// Loading Widget
  Center _buildLoading() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/a.json',
        ),
      ),
    );
  }

  /// onTap Func of "Try Again Button"
// void _materialOnTapButton(BuildContext context) async {
//   if (await InternetConnectionChecker().hasConnection == true) {
//     homeController.getPosts();
//   } else {
//     showCustomSnackBar(context);
//   }
// }

}
