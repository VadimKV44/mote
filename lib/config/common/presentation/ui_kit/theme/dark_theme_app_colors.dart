import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/gradient_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/main_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/text_colors.dart';

/// Класс [DarkThemeAppColors] содержит тёмную цветовую тему приложения.
/// Все изменения для тёмной темы производятся в этом классе.
@singleton
class DarkThemeAppColors extends BaseColors {
  const DarkThemeAppColors()
      : super(
          mainColors: const _MainColors(),
          gradientColors: const _GradientColors(),
          textColors: const _TextColors(),
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

/// Класс [_MainColors] содержит основные цвета приложения.
class _MainColors extends MainColors {
  const _MainColors()
      : super(
          bgBottomBar: const Color(0xFF7F96C2),
          blue: const Color(0xFF6478A0),
        );
}

/// Класс [_GradientColors] - содержит цвета для градиентов.
class _GradientColors extends GradientColors {
  const _GradientColors()
      : super(
          bgGradient: const [
            Color(0xFF495A7C),
            Color(0xFF000000),
          ],
        );
}

/// Класс [_TextColors] - содержит цвета для текста.
class _TextColors extends TextColors {
  const _TextColors()
      : super(
          blue: const Color(0xFF7F96C2),
        );
}
