import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';
import 'package:mote/config/common/presentation/widgets/bottom_navigation_bar_widget.dart';

/// Страница [NavigationScreen] для внутренней навигации в приложении.
/// Содержит в себе все основные маршруты приложения.
@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  /// Список главных маршрутов приложения.
  static List<PageRouteInfo> get _routes => [
        const NotesRoute(),
        const TasksRoute(),
        const SettingsRoute(),
      ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _routes,
      extendBodyBehindAppBar: true,
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBarWidget(
        tabsRouter: tabsRouter,
      ),
      transitionBuilder: (context, child, animation) => TransitionBuilderWidget(
        animation: animation,
        child: child,
      ),
    );
  }
}

/// Виджет для создания анимированного перехода между табами.
///
/// [TransitionBuilderWidget] использует [SlideTransition] для создания
/// эффекта скольжения при переключении между табами. Направление анимации
/// определяется на основе текущего и предыдущего индексов таба.
class TransitionBuilderWidget extends StatelessWidget {
  const TransitionBuilderWidget({
    super.key,
    required this.child,
    required this.animation,
  });

  /// Виджет, который будет анимирован.
  final Widget child;

  /// Анимация, контролирующая переход.
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        // Определяем направление анимации на основе индексов табов
        final isRtl = tabsRouter.activeIndex > (tabsRouter.previousIndex ?? 0);
        return SlideTransition(
          position: Tween<Offset>(
            // Начальное положение зависит от направления перехода
            begin: Offset(isRtl ? 1.0 : -1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      child: child,
    );
  }
}
