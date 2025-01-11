import 'package:ezy_course_app/src/services/app_theme/theme_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/storage/theme_storage/theme_storage.dart';
import 'theme_state/app_theme_state.dart';

final themeStateProvider = NotifierProvider<ThemeController, AppThemeState>(
  ThemeController.new,
);

class ThemeController extends Notifier<AppThemeState> {
  static const _themeStorage = ThemeStorage();

  toggleAppTheme(String newThemeKey) {
    _themeStorage.setNewTheme(newThemeKey);
    ref.invalidateSelf();
  }

  @override
  AppThemeState build() {
    return AppThemeState(
      currentTheme: ThemeConfiguration.initialTheme,
      availableThemeSet: ThemeConfiguration.availableThemeList,
    );
  }
}
