import 'package:flutter/material.dart';

/// Расширение для [BuildContext] для удобного доступа к вспомогательным методам
/// и свойствам. Все методы и свойства возвращаются через контекст для
/// использования в виджетах.
extension BuildContextExt on BuildContext {
  MediaQueryData get _mediaQuery => MediaQuery.of(this);

  Size get screenSize => _mediaQuery.size;

  double get devicePixelRatio => _mediaQuery.devicePixelRatio;

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  Orientation get orientation => _mediaQuery.orientation;
}
