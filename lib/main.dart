import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mote/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Запрет на горизонтальное вращение экрана.
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const Application());
}
