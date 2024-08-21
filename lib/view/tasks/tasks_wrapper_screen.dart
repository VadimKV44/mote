import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран-обертка для раздела задач.
///
/// [TasksWrapperScreen] служит контейнером для вложенных маршрутов,
/// связанных с функциональностью заметок. Он использует [AutoRouter]
/// для автоматической маршрутизации внутри этого раздела.
@RoutePage()
class TasksWrapperScreen extends AutoRouteWrapper {
  /// Создает вложенный маршрутизатор для раздела задач.
  ///
  /// Этот метод возвращает [AutoRouter], который автоматически
  /// обрабатывает вложенные маршруты, определенные для раздела задач.
  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }
}
