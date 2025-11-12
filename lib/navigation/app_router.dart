// Файл: lib/navigation/app_router.dart

import 'package:bloom/main.dart';
import 'package:bloom/screens/onboarding_screen.dart';
import 'package:bloom/screens/settings_screen.dart';
import 'package:flutter/material.dart';

// --- ИЗМЕНЕНИЕ: Импорт новых экранов ---
import 'package:bloom/screens/auth_gate.dart';
import 'package:bloom/screens/auth_screen.dart';
// ---

// --- ИЗМЕНЕНИЕ: Импорт AppTheme ---
import 'package:bloom/themes/app_themes.dart';
// ---

class AppRouter {
  static const String home = '/';
  static const String onboarding = '/onboarding';
  static const String settings = '/settings';
  // --- ИЗМЕНЕНИЕ: Новые роуты ---
  static const String auth = '/auth';
  static const String authGate = '/authGate';
  // ---

  static Route<dynamic> generateRoute(
      RouteSettings routeSettings, {
        // --- ИЗМЕНЕНИЕ: Убрали 'showOnboarding' ---
        // required bool showOnboarding,
        // ---
        required Function(Locale) onLocaleChanged,
        required Function(AppTheme) onThemeChanged,
      }) {
    final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;

    switch (routeSettings.name) {
    // --- ИЗМЕНЕНИЕ: Добавляем новые экраны ---
      case authGate:
        return MaterialPageRoute(builder: (_) => const AuthGate());
      case auth:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
    // ---

      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            onLocaleChanged: onLocaleChanged,
            onThemeChanged: onThemeChanged,
          ),
        );
      case onboarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(
            onLocaleChanged: onLocaleChanged,
          ),
        );
      case settings:
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(
            onLanguageChanged: args?['onLanguageChanged'] ?? onLocaleChanged,
            onThemeChanged: args?['onThemeChanged'] ?? onThemeChanged,
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const AuthGate()); // По умолчанию
    }
  }
}