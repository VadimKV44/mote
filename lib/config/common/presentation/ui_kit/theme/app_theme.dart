import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/dark_theme_app_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/light_theme_app_colors.dart';

/// Класс [AppTheme] содержит основные темы приложения, которые объединяют в
/// себе цветовую тему и стили текста. Все изменения в теме приложения
/// производятся в этом классе.
@singleton
class AppTheme {
  AppTheme(
    this._lightThemeAppColors,
    this._darkThemeAppColors,
  );

  final LightThemeAppColors _lightThemeAppColors;
  final DarkThemeAppColors _darkThemeAppColors;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      extensions: <ThemeExtension>[_lightThemeAppColors],
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.light,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // appBarTheme: _appBarTheme(colors: _appColors, typography: _appTypo),
      // bottomNavigationBarTheme: _bottomNavBarTheme(
      //   colors: _appColors,
      //   typography: _appTypo,
      // ),
      // inputDecorationTheme: _inputDecorationTheme(
      //   colors: _appColors,
      //   typography: _appTypo,
      // ),
      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (_) => Assets.icons.arrowLeft.svg(),
      // ),
      // textTheme: ThemeData.light().textTheme.apply(
      //       displayColor: _appColors.textColors.main,
      //       bodyColor: _appColors.textColors.main,
      //       decorationColor: _appColors.textColors.main,
      //     ),
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      extensions: <ThemeExtension>[_darkThemeAppColors],
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.light,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
