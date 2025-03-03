import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppThemes {
  static ThemeData materialThemeData(BuildContext context) {
    return ThemeData(
        cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: AppColors.white,
          barBackgroundColor: AppColors.barBackgroundColor,
        ),
        primaryColor: AppColors.materialize(AppColors.Green),
        primarySwatch: AppColors.materialize(AppColors.Green),
        hintColor: AppColors.materialize(AppColors.Green),
        scaffoldBackgroundColor: AppColors.screenBackgroundColor,
        tabBarTheme: TabBarTheme.of(context).copyWith(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 2, color: AppColors.Green),
          ),
          labelPadding: const EdgeInsets.symmetric(horizontal: 24.0),
          labelStyle: AppTextStyles.boldTextStyle(fontSize: FontSize.size14),
          unselectedLabelStyle:
              AppTextStyles.regularTextStyle(fontSize: FontSize.size14),
          labelColor: AppColors.black,
        ));
  }
}
