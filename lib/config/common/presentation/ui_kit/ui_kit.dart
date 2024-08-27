import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/bottom_nav_bar/bottom_navigation_bar_widget.dart';

/// Класс [UI] для работы с UI-элементами, содержит в себе все элементы интерфейса.
///
/// Пример использования: UI.button(...)
class UI {
  /// Возвращает виджет нижней навигационной панели.
  static Widget bottomBar(TabsRouter tabsRouter) =>
      BottomNavigationBarWidget(tabsRouter: tabsRouter);
}
