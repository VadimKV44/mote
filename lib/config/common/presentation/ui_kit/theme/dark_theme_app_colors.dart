import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/gradient_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/main_colors.dart';

/// Класс [DarkThemeAppColors] содержит тёмную цветовую тему приложения.
/// Все изменения для тёмной темы производятся в этом классе.
@singleton
class DarkThemeAppColors extends BaseColors {
  const DarkThemeAppColors()
      : super(
          mainColors: const _MainColors(),
          gradientColors: const _GradientColors(),
        );

  @override
  ThemeExtension<BaseColors> copyWith() => const DarkThemeAppColors();

  @override
  ThemeExtension<BaseColors> lerp(
    covariant ThemeExtension<BaseColors>? other,
    double t,
  ) {
    if (other! is DarkThemeAppColors) return this;
    return const DarkThemeAppColors();
  }
}

/// Класс [MainColors] содержит основные цвета приложения.
/// [_MainColors] - его реализация.
class _MainColors extends MainColors {
  const _MainColors()
      : super(
          bgBottomBar: const Color(0xFF7F96C2),
          blue: const Color(0xFF6478A0),
        );
}

class _GradientColors extends GradientColors {
  const _GradientColors()
      : super(
          bgGradient: const [
            Color(0xFF495A7C),
            Color(0xFF000000),
          ],
        );
}
