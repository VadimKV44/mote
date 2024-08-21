import 'package:auto_route/auto_route.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';

/// Класс роутера для модуля Tasks (Задачи)
abstract final class TasksRouters {
  static AutoRoute get routers => AutoRoute(
        page: TasksWrapperRoute.page,
        children: [
          AutoRoute(
            page: TasksRoute.page,
          ),
        ],
      );
}
