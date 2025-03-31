import 'package:flutter/material.dart';

// Color Palette (ARGB)
const LIGHT_COLOR_PRIMARY = Color.fromARGB(255, 237, 242, 244); // EDF2F4
const LIGHT_COLOR_SECONDARY = Color.fromARGB(255, 88, 111, 124); // 586F7C
const LIGHT_COLOR_SURFACE = Color.fromARGB(255, 88, 111, 124); // 586F7C
const LIGHT_COLOR_BACKGROUND = Color.fromARGB(255, 237, 242, 244); // EDF2F4
const LIGHT_COLOR_ERROR = Color.fromARGB(255, 176, 46, 12); // B02E0C

const DARK_COLOR_PRIMARY = Color.fromARGB(255, 2, 2, 11); // 02020B
const DARK_COLOR_SECONDARY = Color.fromARGB(255, 88, 111, 124); // 586F7C
const DARK_COLOR_SURFACE = Color.fromARGB(255, 237, 242, 244); // EDF2F4
const DARK_COLOR_BACKGROUND = Color.fromARGB(255, 2, 2, 11); // 02020B
const DARK_COLOR_ERROR = Color.fromARGB(255, 176, 46, 12); // B02E0C

// On Colors (ARGB)
const LIGHT_COLOR_ON_PRIMARY = Color.fromARGB(255, 2, 2, 11);   // 02020B (Dark text on light primary)
const LIGHT_COLOR_ON_SECONDARY = Color.fromARGB(255, 237, 242, 244); // EDF2F4 (Light text on darker secondary)
const LIGHT_COLOR_ON_SURFACE = Color.fromARGB(255, 237, 242, 244); // EDF2F4 (Light text on darker surface)
const LIGHT_COLOR_ON_BACKGROUND = Color.fromARGB(255, 2, 2, 11); // 02020B (Dark text on light background)
const LIGHT_COLOR_ON_ERROR = Color.fromARGB(255, 237, 242, 244); // EDF2F4 (Light text on error)

const DARK_COLOR_ON_PRIMARY = Color.fromARGB(255, 237, 242, 244); // EDF2F4 (Light text on dark primary)
const DARK_COLOR_ON_SECONDARY = Color.fromARGB(255, 2, 2, 11);   // 02020B (Dark text on lighter secondary)
const DARK_COLOR_ON_SURFACE = Color.fromARGB(255, 2, 2, 11);   // 02020B (Dark text on light surface)
const DARK_COLOR_ON_BACKGROUND = Color.fromARGB(255, 237, 242, 244); // EDF2F4 (Light text on dark background)
const DARK_COLOR_ON_ERROR = Color.fromARGB(255, 2, 2, 11);   // 02020B (Dark text on error)


// Text Themes - Using Coves font
const _lightTextTheme = TextTheme(
  bodyLarge: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  bodyMedium: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  bodySmall: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  headlineLarge: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  headlineMedium: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  headlineSmall: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  titleLarge: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  titleMedium: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  titleSmall: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  labelLarge: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  labelMedium: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
  labelSmall: TextStyle(fontFamily: 'Coves', color: LIGHT_COLOR_ON_PRIMARY),
);

const _darkTextTheme = TextTheme(
  bodyLarge: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  bodyMedium: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  bodySmall: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  headlineLarge: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  headlineMedium: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  headlineSmall: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  titleLarge: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  titleMedium: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  titleSmall: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  labelLarge: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  labelMedium: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
  labelSmall: TextStyle(fontFamily: 'Coves', color: DARK_COLOR_ON_PRIMARY),
);




class AppTheme {

  // Themes
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: LIGHT_COLOR_PRIMARY,
      secondary: LIGHT_COLOR_SECONDARY,
      onPrimary: LIGHT_COLOR_ON_PRIMARY,
      onSecondary: LIGHT_COLOR_ON_SECONDARY,
      error: LIGHT_COLOR_ERROR,
      onError: LIGHT_COLOR_ON_ERROR,
      surface: LIGHT_COLOR_SURFACE,
      onSurface: LIGHT_COLOR_ON_SURFACE,
      background: LIGHT_COLOR_BACKGROUND,
    ),
    textTheme: _lightTextTheme,
    scaffoldBackgroundColor: LIGHT_COLOR_BACKGROUND, // Set background color for Scaffold
    appBarTheme: const AppBarTheme( // Customize AppBar
      backgroundColor: LIGHT_COLOR_PRIMARY,
      foregroundColor: LIGHT_COLOR_ON_PRIMARY, // Text and icon color
    ),

  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: DARK_COLOR_PRIMARY,
      secondary: DARK_COLOR_SECONDARY,
      onPrimary: DARK_COLOR_ON_PRIMARY,
      onSecondary: DARK_COLOR_ON_SECONDARY,
      error: DARK_COLOR_ERROR,
      onError: DARK_COLOR_ON_ERROR,
      surface: DARK_COLOR_SURFACE,
      onSurface: DARK_COLOR_ON_SURFACE,
      background: DARK_COLOR_BACKGROUND,
    ),
    textTheme: _darkTextTheme,
    scaffoldBackgroundColor: DARK_COLOR_BACKGROUND, // Set background color for Scaffold
    appBarTheme: const AppBarTheme( // Customize AppBar
      backgroundColor: DARK_COLOR_PRIMARY,
      foregroundColor: DARK_COLOR_ON_PRIMARY, // Text and icon color
    ),
  );
}