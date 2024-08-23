

import 'package:flutter/material.dart';

var mPrimaryColor = HexColor("6c4325");
var mSecondaryColor = HexColor("308b59");
var mAccentOneColor = HexColor("d1b48c");
var mAccentTwoColor = HexColor("7f8000");


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
