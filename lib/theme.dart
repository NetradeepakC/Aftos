import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const vpadHeight = 5.0;
const hpadWidth = 30.0;
const buttonHeight = 53.0;

abstract class AppColors {
  static const secondary = Color(0xFFF05454);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color(0xFF121212);
  static const textLight = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFF5F9AC7);
  static const cardDark = Color(0xFF0D2E47);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xFF1B1E1F);
  static const card = AppColors.cardDark;
}

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light(ThemeData theme) => ThemeData(
        colorScheme: theme.colorScheme.copyWith(
          secondary: accentColor,
          brightness: Brightness.light,
        ),
        visualDensity: visualDensity,
        textTheme: GoogleFonts.mulishTextTheme(theme.textTheme)
            .apply(bodyColor: AppColors.textDark),
        backgroundColor: _LightColors.background,
        scaffoldBackgroundColor: _LightColors.background,
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textDark),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconDark),
      );

  /// Dark theme and its settings.
  static ThemeData dark(ThemeData theme) => ThemeData(
        colorScheme: theme.colorScheme.copyWith(
          secondary: accentColor,
          brightness: Brightness.dark,
        ),
        visualDensity: visualDensity,
        textTheme: GoogleFonts.interTextTheme(theme.textTheme)
            .apply(bodyColor: AppColors.textLight),
        backgroundColor: _DarkColors.background,
        scaffoldBackgroundColor: _DarkColors.background,
        cardColor: _DarkColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textLight),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconLight),
      );
}
