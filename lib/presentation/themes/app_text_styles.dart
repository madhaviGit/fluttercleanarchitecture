import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

enum FontSize {
  size10,
  size11,
  size12,
  size13,
  size14,
  size15,
  size16,
  size18,
  size20,
  size24,
}

class AppTextStyles {
  // Font family
  static const String _fontFamily = "Roboto";
  static const Color _defaultColor = AppColors.black;

  // Available font faces
  static const FontWeight _lightFont = FontWeight.w300;
  static const FontWeight _regularFont = FontWeight.w400;
  static const FontWeight _mediumFont = FontWeight.w500;
  static const FontWeight _boldFont = FontWeight.w700;
  static const FontWeight _blackFont = FontWeight.w900;

  // Public interface

  static TextStyle lightTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_lightFont, fontSize, fontColor);

  static TextStyle regularTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_regularFont, fontSize, fontColor);

  static TextStyle mediumTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_mediumFont, fontSize, fontColor);

  static TextStyle boldTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_boldFont, fontSize, fontColor);

  static TextStyle italicTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_boldFont, fontSize, fontColor,
          fontStyle: FontStyle.italic);

  static TextStyle blackTextStyle({
    required FontSize fontSize,
    Color fontColor = _defaultColor,
  }) =>
      _createTextStyle(_blackFont, fontSize, fontColor);

  // Predefined styles

  /// Text title style
  ///
  /// FontWeigth: Medium, FontSize: 18, Color: black (default)
  static TextStyle titleStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_mediumFont, FontSize.size18, color);

  /// Text heading style
  ///
  /// FontWeigth: Black, FontSize: 16, Color: black (default)
  static TextStyle headingSmallStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_blackFont, FontSize.size16, color);

  /// Text headingLarge style
  ///
  /// FontWeigth: Black, FontSize: 44, Color: black (default)
  static TextStyle headingLargeStyle({
    required FontSize fontSize,
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_boldFont, FontSize.size24, color);

  /// Text small title style
  ///
  /// FontWeigth: Regular, FontSize: 15, Color: black (default)
  static TextStyle titleSmallStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_regularFont, FontSize.size15, color);

  /// Text button style
  ///
  /// FontWeigth: Bold, FontSize: 13, Color: oddset green (default)
  static TextStyle buttonTextStyle({
    Color color = AppColors.Green,
  }) =>
      _createTextStyle(_boldFont, FontSize.size13, color);

  /// Text car number style
  ///
  /// FontWeigth: Bold, FontSize: 14, Color: black (default)
  static TextStyle cardNumberStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_boldFont, FontSize.size14, color);

  /// Text content style
  ///
  /// FontWeigth: Regular, FontSize: 12, Color: black (default)
  static TextStyle contentStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_regularFont, FontSize.size12, color);

  /// Text disclaimer style
  ///
  /// FontWeigth: Regular, FontSize: 12, Color: black (default)
  static TextStyle disclaimerStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_regularFont, FontSize.size12, color);

  /// Text notification style
  ///
  /// FontWeigth: Regular, FontSize: 10, Color: black (default)
  static TextStyle notificationStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_regularFont, FontSize.size10, color);

  /// Text event header style
  ///
  /// FontWeigth: Black, FontSize: 12, Color: black (default)
  static TextStyle eventHeaderStyle({
    Color color = AppColors.black,
  }) =>
      _createTextStyle(_blackFont, FontSize.size12, color);

  /// Text tab bar item style
  ///
  /// FontWeigth: Black, FontSize: 12, Color: black (default)
  static TextStyle tabBarItemStyle() {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: _regularFont,
      fontSize: tabBarItemfontSize,
    );
  }

  static double get tabBarItemfontSize {
    return _sizeFor(FontSize.size11);
  }

  // Private

  static TextStyle _createTextStyle(
      FontWeight fontWeight, FontSize fontSize, Color fontColor,
      {FontStyle fontStyle = FontStyle.normal}) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: fontWeight,
      fontSize: _sizeFor(fontSize),
      fontStyle: fontStyle,
      color: fontColor,
    );
  }

  static double _sizeFor(FontSize fontSize) {
    switch (fontSize) {
      case FontSize.size10:
        return 10.0;
      case FontSize.size12:
        return 12.0;
      case FontSize.size13:
        return 13.0;
      case FontSize.size14:
        return 14.0;
      case FontSize.size15:
        return 15.0;
      case FontSize.size16:
        return 16.0;
      case FontSize.size18:
        return 18.0;
      case FontSize.size20:
        return 20.0;
      case FontSize.size24:
        return 24.0;
      default:
        return 13.0;
    }
  }
}
