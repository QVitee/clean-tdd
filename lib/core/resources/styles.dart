import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class TextStyles {
  static const TextStyle textSize12 = TextStyle(fontSize: Dimens.typography12);
  static const TextStyle textSize13 = TextStyle(fontSize: Dimens.typography13);
  static const TextStyle textSize14 = TextStyle(fontSize: Dimens.typography14);
  static const TextStyle textSize16 = TextStyle(fontSize: Dimens.typography16);
  static const TextStyle textSize18 = TextStyle(fontSize: Dimens.typography18);
  static const TextStyle textSize20 = TextStyle(fontSize: Dimens.typography20);
  static const TextStyle textSize24 = TextStyle(fontSize: Dimens.typography24);
  static const TextStyle textSize26 = TextStyle(fontSize: Dimens.typography26);
  static const TextStyle textSize30 = TextStyle(fontSize: Dimens.typography30);

  static const TextStyle textUnderline14 = TextStyle(
      decoration: TextDecoration.underline, fontSize: Dimens.typography14);
  static const TextStyle textBoldUnderline14 = TextStyle(
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.typography14,
    color: Colors.white,
  );

  static const TextStyle textWhiteBoldUnderline14 = TextStyle(
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.typography14,
    color: Colors.white,
  );

  static const TextStyle textBold12 =
      TextStyle(fontSize: Dimens.typography12, fontWeight: FontWeight.bold);
  static const TextStyle textBold14 =
      TextStyle(fontSize: Dimens.typography14, fontWeight: FontWeight.bold);
  static const TextStyle textBold16 =
      TextStyle(fontSize: Dimens.typography16, fontWeight: FontWeight.bold);
  static const TextStyle textBold18 =
      TextStyle(fontSize: Dimens.typography18, fontWeight: FontWeight.bold);
  static const TextStyle textBold20 =
      TextStyle(fontSize: Dimens.typography20, fontWeight: FontWeight.bold);
  static const TextStyle textBold24 =
      TextStyle(fontSize: Dimens.typography24, fontWeight: FontWeight.bold);
  static const TextStyle textBold26 =
      TextStyle(fontSize: Dimens.typography26, fontWeight: FontWeight.bold);
  static const TextStyle textBold30 =
      TextStyle(fontSize: Dimens.typography30, fontWeight: FontWeight.bold);

  static const TextStyle textWhite10 =
      TextStyle(fontSize: Dimens.typography10, color: MyColors.primaryWhite);
  static const TextStyle textWhite12 =
      TextStyle(fontSize: Dimens.typography12, color: MyColors.primaryWhite);
  static const TextStyle textWhite14 =
      TextStyle(fontSize: Dimens.typography14, color: MyColors.primaryWhite);
  static const TextStyle textWhite16 =
      TextStyle(fontSize: Dimens.typography16, color: MyColors.primaryWhite);
  static const TextStyle textWhite18 =
      TextStyle(fontSize: Dimens.typography18, color: MyColors.primaryWhite);
  static const TextStyle textWhite24 =
      TextStyle(fontSize: Dimens.typography24, color: MyColors.primaryWhite);
  static const TextStyle textWhite30 =
      TextStyle(fontSize: Dimens.typography30, color: MyColors.primaryWhite);
  static const TextStyle textWhite32 =
      TextStyle(fontSize: Dimens.typography32, color: MyColors.primaryWhite);

  static const TextStyle textWhiteBold10 =
      TextStyle(fontSize: Dimens.typography10, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold12 =
      TextStyle(fontSize: Dimens.typography12, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold14 =
      TextStyle(fontSize: Dimens.typography14, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold16 =
      TextStyle(fontSize: Dimens.typography16, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold18 =
      TextStyle(fontSize: Dimens.typography18, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold24 =
      TextStyle(fontSize: Dimens.typography24, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold30 =
      TextStyle(fontSize: Dimens.typography30, color: MyColors.primaryWhite);
  static const TextStyle textWhiteBold32 =
      TextStyle(fontSize: Dimens.typography32, color: MyColors.primaryWhite);

  static const TextStyle text = TextStyle(
      fontSize: Dimens.typography14,
      color: MyColors.primaryDark,
      textBaseline: TextBaseline.alphabetic);

  static const TextStyle textGray12 = TextStyle(
      fontSize: Dimens.typography12,
      color: MyColors.primaryDark,
      fontWeight: FontWeight.normal);

  static const TextStyle textHint14 =
      TextStyle(fontSize: Dimens.typography14, color: MyColors.grayTextColor3);
}
