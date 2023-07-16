import 'package:logger/logger.dart';

class AppLogger {
  static var loggerInstance = AppLogger();

  final Logger log = Logger();

  void errorMsg(String message) => log.e(message);
  void infoMsg(String message) => log.e(message);
}
