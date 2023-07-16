import 'package:get/get.dart';

import '../../../Api/BaseResponse.dart';
import '../../../Helpers/DialogHelper.dart';

class BaseGetxController extends GetxController {
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  void setLoading(bool show) {
    _isLoading.value = show;
    update();
  }

  List<int> dummyList = [0, 1, 2, 3, 4, 5];

  bool checkResponse(BaseResponse? response,{bool showPopup= true,String addedText =""}) {
    if (response == null) return true;

    if (response.status != null && !response.status!) {
      String msg = "";
      if(response.errors!=null)
      for (String s in response.errors!) {
        msg = "$msg$s\n";
      }
      if(showPopup){
        String title = response.message ?? "";
        DialogHelper.showDialog(title:"$title\n$addedText", description: msg);

      }
      return true;
    }

    return false;
  }
}
