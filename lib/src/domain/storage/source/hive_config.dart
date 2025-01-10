import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static const themeKey = '#THEME_KEY';
  static const authenticationBoxKey = '#AUTH_TOKEN_STORAGE';

  Box<String> get themeBox => Hive.box(themeKey);
  Box<String> get authenticationBox => Hive.box(authenticationBoxKey);

  static Future<void> initialize() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(themeKey);
    await Hive.openBox<String>(authenticationBoxKey);
  }

  Future<void> clearLocalStorage() async {
    await themeBox.clear();
    await authenticationBox.clear();
  }
}
