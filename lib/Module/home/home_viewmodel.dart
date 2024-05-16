import 'package:template/Api/BaseResponse.dart';
import 'package:template/Model/TCurrency.dart';
import 'package:template/Module/base/BaseGetxController.dart';

import '../../Api/Repo/Home/HomeRepoImpl.dart';

class HomeViewModel extends BaseGetxController {
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    initCurrnciesList();
  }




  var list =[];
  void initCurrnciesList() async {


    setLoading(true);
    List<TCurrency> list = await HomeRepoImpl.instance.getCurrencyRequest();
    setLoading(false);
  }
}