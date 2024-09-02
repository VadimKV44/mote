import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/gradient_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/main_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/text_colors.dart';

/// Класс [BaseColors] - контракт для реализации всех цветов в приложении.
abstract class BaseColors extends ThemeExtension<BaseColors> {
  const BaseColors({
    required this.mainColors,
    required this.gradientColors,
    required this.textColors,
  });

  /// Основные цвета приложения.
  final MainColors mainColors;

  /// Градиентные цвета приложения.
  final GradientColors gradientColors;

  /// Текстовые цвета приложения.
  final TextColors textColors;
}
