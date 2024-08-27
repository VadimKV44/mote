import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/bottom_nav_bar/_nav_bar_icon_widget.dart';

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
  List<_BottomNavBarItem> get _items => const [
        _BottomNavBarItem(
          title: 't.routes.notes',
          // inactiveIcon: _bottomIcons.homeStroke,
          // activeIcon: _bottomIcons.homeFilled,
        ),
        _BottomNavBarItem(
          title: 't.routes.tasks',
          // inactiveIcon: _bottomIcons.catalogStroke,
          // activeIcon: _bottomIcons.catalogFilled,
        ),
        _BottomNavBarItem(
          title: 't.routes.settings',
          // inactiveIcon: _bottomIcons.cartStroke,
          // activeIcon: _bottomIcons.cartFilled,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 64,
              color: Colors.red.withOpacity(0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  _items.length,
                  (index) => NavBarIconWidget(
                    active: tabsRouter.activeIndex == index,
                    onTap: () => tabsRouter.setActiveIndex(index),
                  ),
                ),
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
    // required this.inactiveIcon,
    // required this.activeIcon,
  });

  final String title;
  // final SvgGenImage inactiveIcon;
  // final SvgGenImage activeIcon;
}
