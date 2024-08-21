import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Виджет нижней навигации для переключения между экранами
/// приложения в [AutoTabsScaffold].
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    required this.tabsRouter,
    super.key,
  });

  final TabsRouter tabsRouter;

  List<_BottomNavigationBarItem> get _items => [
        _BottomNavigationBarItem(
          title: 't.routes.notes',
          // inactiveIcon: _bottomIcons.homeStroke,
          // activeIcon: _bottomIcons.homeFilled,
        ),
        _BottomNavigationBarItem(
          title: 't.routes.tasks',
          // inactiveIcon: _bottomIcons.catalogStroke,
          // activeIcon: _bottomIcons.catalogFilled,
        ),
        _BottomNavigationBarItem(
          title: 't.routes.settings',
          // inactiveIcon: _bottomIcons.cartStroke,
          // activeIcon: _bottomIcons.cartFilled,
        ),
      ];

  BottomNavigationBarItem _buildItem(
    _BottomNavigationBarItem item,
  ) =>
      const BottomNavigationBarItem(
        label: '',
        icon: _NavBarIconWidget(
          // item.inactiveIcon,
          inactive: true,
        ),
        activeIcon: _NavBarIconWidget(
            // item.activeIcon,
            ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          enableFeedback: true,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.blue[100],
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            // переход к корневому экрану если текущий индекс совпадает
            // с индексом навигационной панели
            // if (tabsRouter.activeIndex == index) {
            //   context.router.replaceNamed(tabsRouter.stack[index].name ?? '');
            // }

            tabsRouter.setActiveIndex(index);
          },
          items: _items.map(_buildItem).toList(),
        ),
      ),
    );
  }
}

/// Виджет иконки нижней навигации
class _NavBarIconWidget extends StatelessWidget {
  const _NavBarIconWidget(
      // this.icon,
      {
    this.inactive = false,
  });

  // final SvgGenImage icon;
  final bool inactive;

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Colors.grey;
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              Icons.home,
              color: inactive ? unselectedColor : null,
            ),
            // icon.svg(
            //   width: AppSizes.kIconLarge,
            //   height: AppSizes.kIconLarge,
            //   colorFilter: inactive && unselectedColor != null
            //       ? ColorFilter.mode(unselectedColor, BlendMode.srcIn)
            //       : null,
            // ),
          ),
        ),
      ],
    );
  }
}

/// Класс элемента нижней навигации
class _BottomNavigationBarItem {
  const _BottomNavigationBarItem({
    required this.title,
    // required this.inactiveIcon,
    // required this.activeIcon,
  });

  final String title;
  // final SvgGenImage inactiveIcon;
  // final SvgGenImage activeIcon;
}
