import 'package:flutter/widgets.dart';

/// Класс [AppInsets] содержит в себе все внутренние отступы приложения.
abstract final class AppInsets {
  // * ------------------------------- All -------------------------------- * //
  static const EdgeInsets kAll1 = EdgeInsets.all(1);

  // * ---------------------------- Horizontal ---------------------------- * //
  static const EdgeInsets kHorizontal16 = EdgeInsets.symmetric(horizontal: 16);

  // * ----------------------------- Vertical ----------------------------- * //
  static const EdgeInsets kVertical11 = EdgeInsets.symmetric(vertical: 11);

  // * ------------------------------- Top -------------------------------- * //
  static const EdgeInsets kTop1 = EdgeInsets.only(top: 1);

  // * ------------------------------ Bottom ------------------------------ * //
  static const EdgeInsets kBottom100 = EdgeInsets.only(bottom: 100);

  // * ------------------------------- Left ------------------------------- * //
  static const EdgeInsets kLeft1 = EdgeInsets.only(left: 1);

  // * ------------------------------ Right ------------------------------- * //
  static const EdgeInsets kRight1 = EdgeInsets.only(right: 1);
}
