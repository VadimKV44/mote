import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mote/config/common/presentation/app.dart';
import 'package:mote/config/core.dart';
import 'package:mote/config/dependencies/di.dart' as di;
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Запрет на горизонтальное вращение экрана.
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await di.setupDependencies();

  /// Регистрация блоков для логирования.
  Bloc.observer = di.getIt<TalkerBlocObserver>();

  /// Логирование приложения.
  di.getIt<IAppLogger>().log(
        level: LogLevel.verbose,
        message: 'Application started',
      );

  runApp(const Application());
}
