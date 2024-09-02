import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/colors/base_colors.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/text_styles/base_text_styles.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/app_scaffold/app_sacffold.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/app_top_bar/app_top_bar.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/bottom_nav_bar/bottom_navigation_bar_widget.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

/// Класс [UIKit] для работы с UI-элементами.
/// Содержит в себе все элементы интерфейса, цвета, стили текста.
@singleton
class UIKit {
  UIKit._();

  @factoryMethod
  factory UIKit.create() => UIKit._();

  /// Возвращает текущую тему приложения.
  static ThemeData theme(BuildContext context) => Theme.of(context);

  /// Возвращает стили текста.
  static BaseTextStyles textStyles(BuildContext context) =>
      Theme.of(context).extension<BaseTextStyles>()!;

  /// Возвращает текущую цветовую схему приложения.
  static BaseColors colors(BuildContext context) =>
      Theme.of(context).extension<BaseColors>()!;

  /// Возвращает иконки.
  static $AssetsIconsGen get icons => Assets.icons;

  /// Возвращает виджет нижней навигационной панели.
  static Widget bottomBar(TabsRouter tabsRouter) =>
      BottomNavigationBarWidget(tabsRouter: tabsRouter);

  /// Возвращает виджет основного экрана приложения.
  static Widget appScaffold({
    required Widget body,
    Widget? appBar,
    ScrollController? controller,
  }) =>
      AppScaffold(
        body: body,
        appBar: appBar,
        controller: controller,
      );

  /// Возвращает виджет верхней навигационной панели.
  static Widget appTopBar({
    required String title,
    VoidCallback? onTapTitle,
    SvgGenImage? leftIconButton,
    VoidCallback? onTapLeft,
    SvgGenImage? rightIconButton,
    VoidCallback? onTapRight,
  }) =>
      AppTopBar(
        title: title,
        onTapTitle: onTapTitle,
        leftIconButton: leftIconButton,
        onTapLeft: onTapLeft,
        rightIconButton: rightIconButton,
        onTapRight: onTapRight,
      );
}
