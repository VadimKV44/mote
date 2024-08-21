/// Тема приложения
enum AppThemeEnum {
  /// Светлая тема
  light,

  /// Темная тема
  dark;

  String typeToString() => switch (this) {
        light => 'light',
        dark => 'dark',
      };

  static AppThemeEnum toEnum(String type) => switch (type) {
        'light' => light,
        'dark' => dark,
        _ => light,
      };
}
