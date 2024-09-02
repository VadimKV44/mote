import 'dart:ui';

/// Класс [GradientColors] - контракт для реализации градиентных цветов в приложении.
abstract class GradientColors {
  const GradientColors({
    required this.bgGradient,
  });

  final List<Color> bgGradient;
}
