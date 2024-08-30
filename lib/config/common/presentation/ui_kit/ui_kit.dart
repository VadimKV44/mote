import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/bottom_nav_bar/bottom_navigation_bar_widget.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

/// Класс [UIKit] для работы с UI-элементами.
/// Содержит в себе все элементы интерфейса, цвета, стили текста.
@singleton
class UIKit {
  const UIKit(this.context);

  final BuildContext context;

  /// Возвращает текущую тему приложения.
  ThemeData get theme => Theme.of(context);

  /// Возвращает стили текста.
  // BaseTypography get textStyle => theme.extension<BaseTypography>()!;

  /// Возвращает текущую цветовую схему приложения.
  BaseColors get colors => theme.extension<BaseColors>()!;

  /// Возвращает иконки.
  static $AssetsIconsGen get icons => Assets.icons;

  /// Возвращает виджет нижней навигационной панели.
  static Widget bottomBar(TabsRouter tabsRouter) =>
      BottomNavigationBarWidget(tabsRouter: tabsRouter);
}
