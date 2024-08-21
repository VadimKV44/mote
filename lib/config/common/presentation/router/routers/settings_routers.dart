import 'package:auto_route/auto_route.dart';
import 'package:mote/config/common/presentation/router/app_router.gr.dart';

/// Класс роутера для модуля Settings (Настройки)
abstract final class SettingsRouters {
  static AutoRoute get routers => AutoRoute(
        page: SettingsWrapperRoute.page,
        children: [
          AutoRoute(
            page: SettingsRoute.page,
          ),
        ],
      );
}
