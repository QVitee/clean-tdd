import 'package:intl/intl.dart';

import '../core_constants.dart';

extension DoubleExtensions on double {
  String toHoursMinutes() {
    final hour = toInt();
    final minute = ((this - hour) * 60).toInt();
    final duration = Duration(hours: hour, minutes: minute);
    final twoDigitMinutes = _toTwoDigits(duration.inMinutes.remainder(60));
    return '${duration.inHours}:$twoDigitMinutes';
  }

  String _toTwoDigits(num n) {
    if (n >= 10) return '$n';
    return '0$n';
  }

  String toStringWithDot() {
    final formatter = NumberFormat(CoreConstants.decimalFormat);
    return formatter.format(this);
  }

  String toPercentage(int fractionDigits, bool showSymbol) {
    final result = this * 100.0;
    return (result.toStringAsFixed(fractionDigits) + ' ${showSymbol ? CoreConstants.percentage : ''}').trim();
  }

  String removeTrailingZeros() {
    return toStringAsFixed(truncateToDouble() == this ? 0 : 1);
  }
}
