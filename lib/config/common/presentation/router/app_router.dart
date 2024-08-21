import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';
import 'package:mote/config/common/presentation/router/routers/notes_routers.dart';
import 'package:mote/config/common/presentation/router/routers/settings_routers.dart';
import 'package:mote/config/common/presentation/router/routers/tasks_routers.dart';

/// Класс [AppRouter] роутера приложения. Содержит все модули и их маршруты.
@AutoRouterConfig()
@singleton
class AppRouter extends RootStackRouter {
  //RootStackRouter
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: NavigationRoute.page,
          children: [
            NotesRouters.routers,
            TasksRouters.routers,
            SettingsRouters.routers,
          ],
        ),
      ];

  /// Анимация переходов между экранами приложения.
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
