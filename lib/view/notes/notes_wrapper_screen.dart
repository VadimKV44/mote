import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран-обертка для раздела заметок.
///
/// [NotesWrapperScreen] служит контейнером для вложенных маршрутов,
/// связанных с функциональностью заметок. Он использует [AutoRouter]
/// для автоматической маршрутизации внутри этого раздела.
@RoutePage()
class NotesWrapperScreen extends AutoRouteWrapper {
  /// Создает вложенный маршрутизатор для раздела заметок.
  ///
  /// Этот метод возвращает [AutoRouter], который автоматически
  /// обрабатывает вложенные маршруты, определенные для раздела заметок.
  @override
  Widget wrappedRoute(BuildContext context) {
    return const AutoRouter();
  }
}
