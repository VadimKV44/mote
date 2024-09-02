import 'dart:ui';

/// Класс [TextColors] - контракт для реализации основных цветов текста.
abstract class TextColors {
  const TextColors({
    required this.blue,
  });

  final Color blue;
}
