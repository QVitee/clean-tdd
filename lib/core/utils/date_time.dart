import 'package:intl/intl.dart';

class DateTimeUtils {
  DateTimeUtils._();

  static String? convertToString(DateTime? date, {String format = 'dd/MM/yyyy'}) {
    if (date == null) return null;
    final formatter = DateFormat(format);
    final formatted = formatter.format(date);
    return formatted;
  }
}
