
import 'package:dio/dio.dart';
import 'package:template/App/Constant.dart';

import '../../../Model/TCurrency.dart';
import '../../../Model/TDemo.dart';
import '../../DioHelper.dart';

abstract class HomeRepo{

  Future<List<TCurrency>> getCurrencyRequest({Map<String,dynamic>? map});



}

















// API Dio (http) (headers: Auth - Interceptors: layer ( handle Json ( request - response ) catch error 400 -   ) - callbacks)
