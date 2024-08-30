import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/gradient_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/main_colors.dart';

/// Класс [LightThemeAppColors] содержит светлую цветовую тему приложения.
/// Все изменения для светлой темы производятся в этом классе.
@singleton
class LightThemeAppColors extends BaseColors {
  const LightThemeAppColors()
      : super(
          mainColors: const _MainColors(),
          gradientColors: const _GradientColors(),
        );

  @override
  ThemeExtension<BaseColors> copyWith() => const LightThemeAppColors();

  @override
  ThemeExtension<BaseColors> lerp(
    covariant ThemeExtension<BaseColors>? other,
    double t,
  ) {
    if (other! is LightThemeAppColors) return this;
    return const LightThemeAppColors();
  }
}

/// Класс [MainColors] содержит основные цвета приложения.
/// [_MainColors] - его реализация.
class _MainColors extends MainColors {
  const _MainColors()
      : super(
          bgBottomBar: const Color(0xFFF8F8FA),
          blue: const Color(0xFFDFE6F3),
        );
}

/// Класс [GradientColors] - контракт для реализации градиентных цветов в приложении.
/// [_GradientColors] - его реализация.
class _GradientColors extends GradientColors {
  const _GradientColors()
      : super(
          bgGradient: const [
            Color(0xFFDFE6F3),
            Color(0xFFF8F8FA),
          ],
        );
}
