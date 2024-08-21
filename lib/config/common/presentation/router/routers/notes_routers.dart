import 'package:auto_route/auto_route.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';

/// Класс роутера для модуля Notes (Заметки)
abstract final class NotesRouters {
  static AutoRoute get routers => AutoRoute(
        page: NotesWrapperRoute.page,
        children: [
          AutoRoute(
            page: NotesRoute.page,
          ),
        ],
      );
}
