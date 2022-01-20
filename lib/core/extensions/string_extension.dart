import 'dart:convert';

import 'package:intl/intl.dart';

import '../core.dart';

extension AppStringExtension on String {

  bool get isNullOrEmpty => isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;

  bool get isNullOrWhiteSpace => isNullOrEmpty || trim().isEmpty;

  String get titleCase => StringUtils(this).titleCase;

  String get markFormat => '${CoreConstants.mark}$this'.trim();

  String get markStarFormat => '${CoreConstants.markStar} $this'.trim();

  String get plusFormat => '${CoreConstants.plus} $this'.trim();

  String get mulFormat => '${CoreConstants.mul}$this'.trim();

  String get colonFormat => '${this}${CoreConstants.colon}'.trim();

  String get unSign {
    var result = this;
    if (result is String) {
      for (var i = 0; i < _vietnamese.length; i++) {
        result = result.replaceAll(_vietnameseRegex[i], _vietnamese[i]);
      }
    }
    return result;
  }

  String get unSignLower => unSign.toUpperCase();

  String hyphenFormat(String str) => '$this ${CoreConstants.hyphen} $str'.trim();

  String closureFormat(String str) => '$this ($str)'.trim();

  String underlineFormat(String str) => '${this}${CoreConstants.underline}$str'.trim();

  int toInt({int defaultValue = 0}) => int.tryParse(this) ?? defaultValue;

  double toDouble({double defaultValue = 0.0}) => double.tryParse(this) ?? defaultValue;

  bool toBool() => trim().toLowerCase() == 'true' || trim().toLowerCase() == '1';

  String get formatCurrencyWithoutSymbol {
    final defaultValue = '0';
    final formatter = NumberFormat.simpleCurrency(
      locale: LocaleCodes.vi,
      name: '',
      decimalDigits: 0,
    );

    final value = double.tryParse(this);
    if (value == null) {
      return defaultValue;
    }
    return formatter.format(value);
  }
  bool get isLocalizeText {
    return startsWith('ui.') || startsWith('message.') || startsWith('error.');
  }

  Map<String, dynamic> parseJwtToken() {
    if (isNullOrWhiteSpace) return {};

    final parts = split('.');
    if (parts.length != 3) {
      return {};
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      return {};
    }

    return payloadMap;
  }

  String _decodeBase64(String str) {
    var output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
    }

    return utf8.decode(base64Url.decode(output));
  }
}

const String _vietnamese = 'aAeEoOuUiIdDyY';
final List<RegExp> _vietnameseRegex = <RegExp>[
  RegExp(r'à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ'),
  RegExp(r'À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ'),
  RegExp(r'è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ'),
  RegExp(r'È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ'),
  RegExp(r'ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ'),
  RegExp(r'Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ'),
  RegExp(r'ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ'),
  RegExp(r'Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ'),
  RegExp(r'ì|í|ị|ỉ|ĩ'),
  RegExp(r'Ì|Í|Ị|Ỉ|Ĩ'),
  RegExp(r'đ'),
  RegExp(r'Đ'),
  RegExp(r'ỳ|ý|ỵ|ỷ|ỹ'),
  RegExp(r'Ỳ|Ý|Ỵ|Ỷ|Ỹ')
];

class StringUtils {
  List<String>? _words;

  StringUtils(String text) {
    _words = _groupIntoWords(text);
  }

  List<String>? _groupIntoWords(String text) {
    if (text.isNullOrWhiteSpace) return null;
    return text.split(' ');
  }

  String get titleCase => _getTitleCase(separator: ' ');

  String _getTitleCase({String separator = ''}) {
    if (_words == null) return '';
    final words = _words!.map(_upperCaseFirstLetter).toList();
    return words.join(separator);
  }

  String _upperCaseFirstLetter(String word) {
    if (word.isNullOrEmpty) return word;
    var result = word;
    try {
      result = '${word.substring(0, 1).toUpperCase()}${word.substring(1)}';
    } catch (e) {
      print(word);
      print(e);
    }
    return result;
  }
}
