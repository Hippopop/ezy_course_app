import 'package:ezy_course_app/src/services/app_theme/theme_config.dart';
import 'package:flutter/material.dart';

import '../source/secure_storage.dart';

class ThemeStorage {
const ThemeStorage();

  static const String key = '#CURRENT_THEME';
  StorageConfig get _config => StorageConfig();

  Future<void> setNewTheme(String newThemeKey) async {
    await _config.storage.write(key: key, value: newThemeKey);
  }

  Future<ThemeData> currentTheme() async {
    final currentThemeKey = await _config.storage.read(key: key);
    if (currentThemeKey == null) return ThemeConfiguration.initialTheme;
    return ThemeConfiguration.availableThemeList[currentThemeKey]!;
  }

  Map<String, ThemeData> availableThemeList() =>
      ThemeConfiguration.availableThemeList;
}
