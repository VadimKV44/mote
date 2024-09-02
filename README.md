# mote

Приложение для записи заметок и задач mote.

## Установка
Последняя версия Flutter SDK, которая использовалась: [3.22.2](https://docs.flutter.dev/release/archive)

### Получение pub&pods
- `sh get_pub.sh`

### Запуск build runner
- `sh gen_run.sh`

### Очистка, получение pub&pods, генерация
- `sh all_gen_run.sh`

### Генерация assets
- впервые
1) `brew install FlutterGen/tap/fluttergen` (works with macOS and Linux)
2) `dart pub global activate flutter_gen` (works with macOS, Linux and Windows)
3) `flutter pub get`
- впоследствии
4) `dart run build_runner build`
5) `fluttergen`

## Зависимости:
- Навигация: [auto_router](https://pub.dev/packages/auto_router)
  - Генерация: [auto_route_generator](https://pub.dev/packages/auto_route_generator)
- Функциональное программирование: [either_dart](https://pub.dev/packages/either_dart)
- Сравнение классов: [equatable](https://pub.dev/packages/equatable)
- State-менеджер: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- SVG-изображения: [flutter_svg](https://pub.dev/packages/flutter_svg)
- Генерация assets: [flutter_gen](https://pub.dev/packages/flutter_gen)
- Локатор зависимостей: [get_it](https://pub.dev/packages/get_it)
  - Зависимости: [injectable](https://pub.dev/packages/injectable)
  - Генератор: [injectable_generator](https://pub.dev/packages/injectable_generator)
- Интернационализация: [intl](https://pub.dev/packages/intl)
- База данных:
  - Shared preferences: [shared_preferences](https://pub.dev/packages/shared_preferences)
- Логи:
  - Для flutter: [talker_flutter](https://pub.dev/packages/talker_flutter)
  - Для bloc: [talker_bloc_logger](https://pub.dev/packages/talker_bloc_logger)
- Информация об устройстве: [device_info_plus](https://pub.dev/packages/device_info_plus)