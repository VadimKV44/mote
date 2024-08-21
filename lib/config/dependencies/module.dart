part of '../core.dart';

@module
abstract class AppModule {
  @lazySingleton
  Talker get talker => TalkerFlutter.init();

  @lazySingleton
  TalkerBlocObserver get talkerBlocObserver => TalkerBlocObserver(
        talker: talker,
        settings: const TalkerBlocLoggerSettings(
          printChanges: true,
          printCreations: true,
          printClosings: true,
        ),
      );

  @preResolve
  Future<SharedPreferences> prefs() => SharedPreferences.getInstance();

  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();
}
