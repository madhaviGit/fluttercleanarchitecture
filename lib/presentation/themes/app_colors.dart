import 'package:flutter/material.dart';

abstract class AppColors {
  static const black = Color.fromRGBO(0, 0, 0, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const grey = Color.fromRGBO(255, 155, 155, 1);

  static const Color primaryColor = Color(0xFF6200EE);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF000000);
  static const Color errorColor = Color(0xFFB00020);

  static const GreenAccent = Color.fromRGBO(222, 245, 236, 1);
  static const Green = Color.fromRGBO(0, 167, 93, 1);
  static const GreenLight = Color.fromRGBO(35, 210, 164, 1);
  static const GreenDark = Color.fromRGBO(3, 149, 83, 1);
  static const Blue = Color.fromRGBO(0, 144, 215, 1);
  static const iosBlue = Color.fromRGBO(0, 122, 255, 1);
  static const Yellow = Color.fromRGBO(255, 192, 16, 1);
  static const Red = Color.fromRGBO(241, 0, 0, 1);
  static const UpdateIndicatorRed = Color.fromRGBO(210, 35, 33, 1.0);
  static const Orange = Color.fromRGBO(235, 93, 55, 1);
  static const DarkYellow = Color(0xFFEBA337);

  static const screenBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const barBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const barBackgroundColor1 = Color.fromRGBO(255, 192, 16, 1);

  static Color get grey61 => greyOf(value: 61);

  static Color get grey76 => greyOf(value: 76);

  static Color get grey80 => greyOf(value: 80);

  static Color get grey128 => greyOf(value: 128);

  static Color get grey143 => greyOf(value: 143);

  static Color get grey182 => greyOf(value: 182);

  static Color get grey196 => greyOf(value: 196);

  static Color get grey203 => greyOf(value: 203);

  static Color get grey241 => greyOf(value: 241);

  static Color get grey249 => greyOf(value: 249);

  static Color get grey253 => greyOf(value: 253);

  static Color get offlineMessageLightGrey => const Color(0xFFCCCCCC);

  static Color get offlineMessageDarkGrey => const Color(0xFF333333);

  static Color get offlineMessageGreen => const Color(0xFF5DCF7E);

  /// Generates a shade of grey based on the provided value.
  static Color greyOf({required int value}) {
    assert(value >= 0 && value <= 255, 'Value must be between 0 and 255');
    return Color.fromRGBO(value, value, value, 1);
  }

  /// Converts a [Color] into a [MaterialColor] by creating a swatch.
  static MaterialColor materialize(Color color) {
    final Map<int, Color> map = {
      50: Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .1),
      100:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .2),
      200:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .3),
      300:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .4),
      400:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .5),
      500:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .6),
      600:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .7),
      700:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .8),
      800:
          Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), .9),
      900: Color.fromRGBO(color.r.toInt(), color.g.toInt(), color.b.toInt(), 1),
    };
    return MaterialColor(
        color.r.toInt() << 16 | color.g.toInt() << 8 | color.b.toInt(), map);
  }
}
