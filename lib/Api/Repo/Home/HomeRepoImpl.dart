import 'package:dio/dio.dart';
import 'package:template/Api/BaseResponse.dart';
import 'package:template/Api/Repo/Home/HomeRepo.dart';
import 'package:template/Model/TCurrency.dart';
import 'package:template/Model/TDemo.dart';

import '../../../App/Constant.dart';
import '../../DioHelper.dart';

class HomeRepoImpl extends HomeRepo {
  static var instance = HomeRepoImpl();

  @override
  Future<List<TCurrency>> getCurrencyRequest(
      {Map<String, dynamic>? map}) async {


    List<TCurrency> listCurrencies = [];




    Response response =
        await DioHelper().get(Constants.currenciesUrl, queryParameters: map);





    if (response.statusCode == 200) {
      listCurrencies = List<TCurrency>.from(response.data["currencies"]
          .map((object) => TCurrency.fromJson(object)));
    }







    return listCurrencies;
  }


}
