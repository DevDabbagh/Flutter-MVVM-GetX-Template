

import 'dart:collection';

import 'package:dio/dio.dart';

import '../../../App/Constant.dart';
import '../../../Model/TCurrency.dart';
import '../../DioHelper.dart';
class CurrencyRepo{
  static var instance = CurrencyRepo();
  Future<List<TCurrency>> getCurrencyRequest({Map<String,dynamic>? map}) async{

    List<TCurrency> listCurrencies=[];

    Response response = await DioHelper().get(Constants.currenciesUrl,queryParameters: map);

    if(response.statusCode == 200){
      listCurrencies =
      List<TCurrency>.
      from(response.data["currencies"]
          .map((object) =>
          TCurrency.fromJson(object))
      );
    }

    return listCurrencies;
  }



}