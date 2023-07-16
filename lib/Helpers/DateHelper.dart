import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateHelper {
  static String timeAgo({String? dateStr, DateTime? dateTime}) {
    if (dateStr == null && dateTime == null) return "";
    DateTime? dt = dateTime ?? DateTime.tryParse(dateStr!);
    if (dt == null) return "";
    return timeago.format(dt, locale: 'ar');
  }

  static String dateTimeTOString(
      {required DateTime? dateTime, String dateFormat = 'MM/yyyy'}) {
    String formattedDate = DateFormat(dateFormat).format(dateTime!);
    return formattedDate;
  }

  static DateTime stringToDateTime(
      {required String str_date, String dateFormat = 'hh:mm aa'}) {
    DateTime dateTime = DateFormat(dateFormat).parse(str_date);

    return dateTime;
  }
}
