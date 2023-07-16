import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioError dioError, {bool isPopupLoading = false}) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          message = 'No Internet';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
    if (isPopupLoading && Get.isDialogOpen!) Get.back();
   // SnackBarHelper.show(msg: message);
    // Get.snackbar("Error", message);
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:

        // Get.offAll(()=>LoginScreen());
        return 'غير مصرح بك يرجى تسجيل الدخول';
      case 403:
        return 'Forbidden';
      case 404:
        return error['message'];
      case 500:
        return error['message'];
        //'Internal server error'
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'يوجد مشكلة من السيرفر';
    }
  }

  @override
  String toString() => message;
}
