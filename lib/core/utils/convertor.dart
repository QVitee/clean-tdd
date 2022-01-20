import 'package:intl/intl.dart';

class Convertors {
  static double? convertDynamicToDouble(dynamic d) {
    if (d is double) return d;
    if (d is int) return d.toDouble();
    if (d is String) return double.parse(d);
    return null;
  }

  static String? convertMoneyFormat(double? input) {
    if (input == null) return null;
    return NumberFormat.currency(locale: 'vi', decimalDigits: 0, symbol: 'VND')
        .format(input);
  }

  static String? convertMoneyWithoutSymbol(double? input) {
    if (input == null) return null;
    return '${NumberFormat.currency(locale: 'vi', decimalDigits: 0, symbol: '').format(input)}'
        .trim();
  }
}
