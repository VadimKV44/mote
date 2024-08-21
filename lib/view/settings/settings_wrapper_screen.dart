import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран-обертка для раздела настроек.
///
/// [SettingsWrapperScreen] служит контейнером для вложенных маршрутов,
/// связанных с функциональностью заметок. Он использует [AutoRouter]
/// для автоматической маршрутизации внутри этого раздела.
@RoutePage()
class SettingsWrapperScreen extends AutoRouteWrapper {
  /// Создает вложенный маршрутизатор для раздела настроек.
  ///
  /// Этот метод возвращает [AutoRouter], который автоматически
  /// обрабатывает вложенные маршруты, определенные для раздела настроек.
  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }
}
