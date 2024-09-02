import 'package:flutter/material.dart';

/// Класс [HeadingTextStyles] - контракт для реализации заголовков в приложении.
abstract class HeadingTextStyles {
  const HeadingTextStyles({
    required this.h1,
  });

  final TextStyle h1;
}
