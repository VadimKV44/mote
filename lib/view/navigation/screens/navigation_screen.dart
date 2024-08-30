import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/bg_gradient_widget.dart';

/// Страница [NavigationScreen] для внутренней навигации в приложении.
/// Содержит в себе все основные маршруты приложения.
@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  /// Список главных маршрутов приложения.
  static List<PageRouteInfo> get _routes => const [
        NotesRoute(),
        TasksRoute(),
        SettingsRoute(),
      ];

  @override
  Widget build(BuildContext context) {
    return BGGradientWidget(
      child: AutoTabsScaffold(
        routes: _routes,
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBuilder: (_, tabsRouter) => UIKit.bottomBar(tabsRouter),
        transitionBuilder: (_, child, animation) =>
            _TransitionBuilderWidget(animation: animation, child: child),
      ),
    );
  }
}

/// Виджет для создания анимированного перехода между табами.
///
/// [_TransitionBuilderWidget] использует [SlideTransition] для создания
/// эффекта скольжения при переключении между табами. Направление анимации
/// определяется на основе текущего и предыдущего индексов таба.
class _TransitionBuilderWidget extends StatelessWidget {
  const _TransitionBuilderWidget({
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
