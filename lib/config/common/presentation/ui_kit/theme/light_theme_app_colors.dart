import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/gradient_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/main_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/text_colors.dart';

/// Класс [LightThemeAppColors] содержит светлую цветовую тему приложения.
/// Все изменения для светлой темы производятся в этом классе.
@singleton
class LightThemeAppColors extends BaseColors {
  const LightThemeAppColors()
      : super(
          mainColors: const _MainColors(),
          gradientColors: const _GradientColors(),
          textColors: const _TextColors(),
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

/// Класс [_MainColors] содержит основные цвета приложения.
class _MainColors extends MainColors {
  const _MainColors()
      : super(
          bgBottomBar: const Color(0xFFF8F8FA),
          blue: const Color(0xFFDFE6F3),
        );
}

/// Класс [_GradientColors] - содержит цвета для градиентов.
class _GradientColors extends GradientColors {
  const _GradientColors()
      : super(
          bgGradient: const [
            Color(0xFFDFE6F3),
            Color(0xFFF8F8FA),
          ],
        );
}

/// Класс [_TextColors] - содержит цвета для текста.
class _TextColors extends TextColors {
  const _TextColors()
      : super(
          blue: const Color(0xFF6478A0),
        );
}
