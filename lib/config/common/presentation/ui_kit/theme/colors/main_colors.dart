import 'dart:ui';

/// Класс [MainColors] - контракт для реализации основных цветов приложения.
abstract class MainColors {
  const MainColors({
    required this.bgBottomBar,
    required this.blue,
  });

  final Color bgBottomBar;
  final Color blue;
}
