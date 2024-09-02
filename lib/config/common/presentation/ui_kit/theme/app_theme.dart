import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/app_text_styles.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/dark_theme_app_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/light_theme_app_colors.dart';
import 'package:mote/config/utils/enums/app_theme.dart';

/// Класс [AppTheme] содержит основные темы приложения, которые объединяют в
/// себе цветовую тему и стили текста. Все изменения в теме приложения
/// производятся в этом классе.
@singleton
class AppTheme {
  AppTheme(
    this._lightThemeAppColors,
    this._darkThemeAppColors,
    this._appTextStyles,
  );

  /// Цвета
  final LightThemeAppColors _lightThemeAppColors;
  final DarkThemeAppColors _darkThemeAppColors;

  /// Стили текста
  final AppTextStyles _appTextStyles;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      extensions: <ThemeExtension>[
        _lightThemeAppColors,
        _appTextStyles,
      ],
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.light,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // appBarTheme: const AppBarTheme(
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarIconBrightness: Brightness.light,
      //   ),
      // ),
      appBarTheme: _appBarTheme(AppThemeEnum.light),
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
      extensions: <ThemeExtension>[
        _darkThemeAppColors,
        _appTextStyles,
      ],
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.light,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: _appBarTheme(AppThemeEnum.dark),
    );
  }

  static AppBarTheme _appBarTheme(AppThemeEnum themeValue) {
    return AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: themeValue == AppThemeEnum.light
            ? Brightness.light
            : Brightness.dark,
      ),
    );
  }
}
