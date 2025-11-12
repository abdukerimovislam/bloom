// Файл: lib/themes/app_themes.dart

import 'package:flutter/material.dart';

// Enum для тем (остается у вас в services/settings_service.dart или где-то)
enum AppTheme {
  rose,
  night,
  forest
}

class AppThemes {

  static ThemeData getThemeData(AppTheme theme) {
    switch (theme) {
      case AppTheme.rose:
        return _roseTheme;
      case AppTheme.night:
        return _nightTheme;
      case AppTheme.forest:
        return _forestTheme;
    }
  }

  static String themeToString(AppTheme theme) {
    return theme.toString().split('.').last;
  }

  static AppTheme stringToTheme(String? themeString) {
    switch (themeString) {
      case 'night':
        return AppTheme.night;
      case 'forest':
        return AppTheme.forest;
      case 'rose':
      default:
        return AppTheme.rose;
    }
  }

  // --- 💡 ТЕМА ROSE (СВЕТЛАЯ) 💡 ---
  static final ThemeData _roseTheme = ThemeData(
    brightness: Brightness.light,
    // --- ИЗМЕНЕНИЕ: Добавляем шрифт ---
    fontFamily: 'Nunito',
    // ---
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFE91E63), // Яркий розовый
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFFFDDEB), // Светло-розовый фон
      onPrimaryContainer: Color(0xFF7A002E), // Темный текст на светло-розовом
      secondary: Color(0xFF6750A4), // Фиолетовый (для акцентов)
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFEADDFF), // Светло-фиолетовый фон
      onSecondaryContainer: Color(0xFF22005D), // Темный текст на светло-фиолетовом
      error: Color(0xFFB00020),
      onError: Colors.white,
      background: Color(0xFFFFF7F9), // Очень-очень светлый розовый фон
      onBackground: Color(0xFF201A1B), // Почти черный текст
      surface: Color(0xFFFFFFFF), // Фон карточек
      onSurface: Color(0xFF201A1B),
    ),
    useMaterial3: true,
  );

  // --- 💡 ТЕМА NIGHT (ТЕМНАЯ) 💡 ---
  static final ThemeData _nightTheme = ThemeData(
    brightness: Brightness.dark,
    // --- ИЗМЕНЕНИЕ: Добавляем шрифт ---
    fontFamily: 'Nunito',
    // ---
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF66D9EF), // Яркий бирюзовый
      onPrimary: Color(0xFF00363F),
      primaryContainer: Color(0xFF004F58), // Темный бирюзовый фон
      onPrimaryContainer: Color(0xFFB9EEFF), // Светлый текст на темном бирюзовом
      secondary: Color(0xFFD0BCFF), // Светлая лаванда
      onSecondary: Color(0xFF381E72),
      secondaryContainer: Color(0xFF4F378A), // Темная лаванда фон
      onSecondaryContainer: Color(0xFFEADDFF), // Светлый текст на темной лаванде
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      background: Color(0xFF191C1D), // Очень-очень темный
      onBackground: Color(0xFFE1E3E3), // Светло-серый текст
      surface: Color(0xFF2C2E2F), // Фон карточек
      onSurface: Color(0xFFE1E3E3),
    ),
    useMaterial3: true,
  );

  // --- 💡 ТЕМА FOREST (ЗЕЛЕНАЯ) 💡 ---
  static final ThemeData _forestTheme = ThemeData(
    brightness: Brightness.light,
    // --- ИЗМЕНЕНИЕ: Добавляем шрифт ---
    fontFamily: 'Nunito',
    // ---
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF386A1F), // Темно-зеленый
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFB8F397), // Светло-зеленый фон
      onPrimaryContainer: Color(0xFF072100), // Очень темный текст на светло-зеленом
      secondary: Color(0xFF55624C), // Приглушенный серо-зеленый
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFD9E7CB), // Очень светлый серо-зеленый фон
      onSecondaryContainer: Color(0xFF131F0D), // Темный текст
      error: Color(0xFFBA1A1A),
      onError: Colors.white,
      background: Color(0xFFFCFDF6), // Почти белый фон
      onBackground: Color(0xFF1A1C18), // Почти черный текст
      surface: Color(0xFFF9FAF3), // Фон карточек
      onSurface: Color(0xFF1A1C18),
    ),
    useMaterial3: true,
  );
}