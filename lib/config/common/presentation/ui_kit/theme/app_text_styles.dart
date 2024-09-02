import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/text_styles/base_text_styles.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/text_styles/heading_text_styles.dart';
import 'package:mote/config/utils/gen/fonts.gen.dart';

/// Класс [AppTextStyles] содержит стили текста приложения.
/// Все изменения в стилях текста производятся в этом классе.
@singleton
class AppTextStyles extends BaseTextStyles {
  const AppTextStyles()
      : super(
          headingTypo: const _HeadingTextStyles(),
        );

  @override
  ThemeExtension<BaseTextStyles> copyWith() => const AppTextStyles();

  @override
  ThemeExtension<BaseTextStyles> lerp(
    covariant ThemeExtension<BaseTextStyles>? other,
    double t,
  ) {
    if (other! is AppTextStyles) return this;
    return const AppTextStyles();
  }
}

class _HeadingTextStyles extends HeadingTextStyles {
  const _HeadingTextStyles()
      : super(
          h1: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: FontFamily.comfortaa,
          ),
        );
}
