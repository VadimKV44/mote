import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/bottom_nav_bar/_nav_bar_icon_widget.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/bg_blur_widget.dart';
import 'package:mote/config/utils/constants/app_sizes.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

/// Виджет нижней навигации для переключения между экранами
/// приложения в [AutoTabsScaffold].
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    required this.tabsRouter,
    super.key,
  });

  /// Роутер нижней навигации.
  final TabsRouter tabsRouter;

  /// Список элементов нижней навигации.
  List<_BottomNavBarItem> get _items => [
        _BottomNavBarItem(
          title: 't.routes.notes',
          inactiveIcon: UIKit.icons.bottomBar.inactiveNotes,
          activeIcon: UIKit.icons.bottomBar.activeNotes,
        ),
        _BottomNavBarItem(
          title: 't.routes.tasks',
          inactiveIcon: UIKit.icons.bottomBar.inactiveTasks,
          activeIcon: UIKit.icons.bottomBar.activeTasks,
        ),
        _BottomNavBarItem(
          title: 't.routes.settings',
          inactiveIcon: UIKit.icons.bottomBar.inactiveSettings,
          activeIcon: UIKit.icons.bottomBar.activeSettings,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final ui = UIKit(context);
    final bottomBarHeight =
        AppSizes.kBottomBarHeight + MediaQuery.of(context).padding.bottom;

    return BGBlurWidget(
      child: Container(
        height: bottomBarHeight,
        decoration: BoxDecoration(
          color: ui.colors.mainColors.bgBottomBar.withOpacity(0.5),
          border: BorderDirectional(
            top: BorderSide(color: ui.colors.mainColors.blue),
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              _items.length,
              (index) => NavBarIconWidget(
                activeIcon: _items[index].activeIcon,
                inactiveIcon: _items[index].inactiveIcon,
                active: tabsRouter.activeIndex == index,
                onTap: () => tabsRouter.setActiveIndex(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Класс элемента нижней навигации
class _BottomNavBarItem {
  const _BottomNavBarItem({
    required this.title,
    required this.activeIcon,
    required this.inactiveIcon,
  });

  final String title;
  final SvgGenImage activeIcon;
  final SvgGenImage inactiveIcon;
}
