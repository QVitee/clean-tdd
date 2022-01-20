import 'dart:ui';

import 'package:intl/intl.dart';

import '../core_constants.dart';

extension NumExtension on num {
  String get locale => window.locale.languageCode;

  String get formatCurrency => _formatCurrency(this);

  String get formatCurrencyWithoutSymbol {
    final defaultValue = '0';
    final formatter = NumberFormat.simpleCurrency(
      locale: LocaleCodes.vi,
      name: '',
      decimalDigits: 0,
    );

    switch (runtimeType) {
      case num:
      case int:
      case double:
        return formatter.format(this);
      default:
        return defaultValue;
    }
  }

  String _formatCurrency(num input) {
    final defaultValue = '0';
    final formatter = NumberFormat.simpleCurrency(
      locale: locale,
      name: _symbol,
      decimalDigits: 0,
    );

    switch (input.runtimeType) {
      case num:
      case int:
      case double:
        return formatter.format(input);
      default:
        return '$defaultValue $_symbol';
    }
  }

  String get _symbol {
    if (locale == LocaleCodes.vi) return Symbol.vi;

    final format = NumberFormat.simpleCurrency(locale: locale);
    return format.currencySymbol;
  }
}
