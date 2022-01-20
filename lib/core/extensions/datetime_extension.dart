import 'dart:ui';

import 'package:intl/intl.dart';

import '../core_constants.dart';

const List<int> daysInMonths = <int>[31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

extension DateTimeExtension on DateTime {
  String get locale => window.locale.languageCode;

  DateTime get date => DateTime(year, month, day);

  String get formatDisplayedMonthYear => DateFormat(CoreConstants.dateFormatMMyyyy, locale).format(this);

  String get formatDisplayedDateTime => DateFormat(CoreConstants.dateFormatEEEEddMMyyyy, locale).format(this);

  String get formatDisplayedDateTime2 => DateFormat(CoreConstants.dateFormatHHmmaddMMyyyy, locale).format(this);

  String get formatDisplayedHHMMDDMMYYYY => DateFormat(CoreConstants.dateFormatHHmmddMMyyyy, locale).format(this);

  String get formatDisplayedDate => DateFormat(CoreConstants.dateFormatddMMyyyy, locale).format(this);

  String get formatDisplayedDateYYYYMMDD => DateFormat(CoreConstants.dateFormatYYYYMMDD, locale).format(this);

  String get formatDisplayedTime => DateFormat(CoreConstants.timeFormatHHmm, locale).format(this);

  String get dateTimeFormat => DateFormat(CoreConstants.dateFormatddMMyyyyHHmm, locale).format(this);

  String get dateWithoutYear => DateFormat(CoreConstants.dateFormatddMM, locale).format(this);

  String get nameOfDay => DateFormat(CoreConstants.nameOfDay, locale).format(this);

  String get formatDisplayedDashYYYYMMDD => DateFormat(CoreConstants.dateFormatDashYYYYMMDD, locale).format(this);

  bool operator >=(DateTime other) {
    final now = toUtc().millisecondsSinceEpoch;
    final otherUtc = other.toUtc().millisecondsSinceEpoch;
    return now >= otherUtc;
  }

  bool operator >(DateTime other) {
    final now = toUtc().millisecondsSinceEpoch;
    final otherUtc = other.toUtc().millisecondsSinceEpoch;
    return now > otherUtc;
  }

  bool operator <=(DateTime other) {
    final now = toUtc().millisecondsSinceEpoch;
    final otherUtc = other.toUtc().millisecondsSinceEpoch;
    return now <= otherUtc;
  }

  bool operator <(DateTime other) {
    final now = toUtc().millisecondsSinceEpoch;
    final otherUtc = other.toUtc().millisecondsSinceEpoch;
    return now < otherUtc;
  }

  DateTime addMonth(int month) {
    return DateTime(year, month + month, day);
  }

  int get daysInMonth {
    if (month == DateTime.february) {
      final isLeapYear = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      if (isLeapYear) return 29;
      return 28;
    }
    return daysInMonths[month - 1];
  }

  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
