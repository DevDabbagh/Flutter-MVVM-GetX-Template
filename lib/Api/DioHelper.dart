
import 'package:dio/dio.dart' as dioFormData;
import 'package:dio/dio.dart';

import '../App/Constant.dart';
import '../App/app.dart';

String token = "";

Dio DioHelper({bool isGazaCityBaseURL = false}) {
  Dio _dio = Dio();
  _dio.options.baseUrl = Constants.baseUrl;
  _dio.options.connectTimeout = Constants.connectionTimeout;
  _dio.options.responseType = ResponseType.json;
  _dio.options.connectTimeout = Constants.connectionTimeout;
  _dio.options.headers = {
    "Authorization": getToken(),
  };
  _dio.interceptors.add(dioLoggerInterceptor);
  _dio.interceptors.add(LogInterceptor(
    request: true,
    requestHeader: true,
    requestBody: true,
    responseHeader: true,
    responseBody: true,
  ));
  return _dio;
}

final dioLoggerInterceptor =
    InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
  String headers = "";
  options.headers.forEach((key, value) {
    headers += "| $key: $value";
  });
  print(
      "┌------------------------------------------------------------------------------");
  print('''| [DIO] Request: ${options.method} ${options.uri}
| ${options.data.toString()}
| Headers:\n$headers''');
  print(
      "├------------------------------------------------------------------------------");
  handler.next(options); //continue
}, onResponse: (Response response, handler) async {
  print(
      "| [DIO] Response [code ${response.statusCode}]: ${response.data.toString()}");
  print(
      "└------------------------------------------------------------------------------");
  handler.next(response);
  // return response; // continue
}, onError: (DioError error, handler) async {
  print("| [DIO] Error: ${error.error}: ${error.response?.toString()}");
  print(
      "└------------------------------------------------------------------------------");
  handler.next(error); //continue
});

String getToken() {
  if (Application.staticSharedPreferences == null) return "";
  String? auth =
      Application.staticSharedPreferences?.getString(Constants.USER_AUTH_TOKEN);

  return "Bearer $auth";
}

addFormDataToJson(
    {jsonKey, filePath, fileName, Map<String, dynamic>? jsonObject}) async {
  jsonObject![jsonKey] = await dioFormData.MultipartFile.fromFile(
    filePath,
    filename: fileName,
  );
  return dioFormData.FormData.fromMap(jsonObject);
}
