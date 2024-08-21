import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/router/app_router.dart';
import 'package:mote/config/dependencies/di.dart' as di;
import 'package:talker_flutter/talker_flutter.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  AppRouter get _router => di.getIt<AppRouter>();
  Talker get _talker => di.getIt<Talker>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router.config(
        navigatorObservers: () => [
          TalkerRouteObserver(_talker),
        ],
      ),
    );
  }
}
