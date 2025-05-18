import 'package:flutter/material.dart';

class AppTheme {
  // GitHub-inspired colors
  static const Color primaryColor = Color(0xFF2D333B);
  static const Color secondaryColor = Color(0xFF22272E);
  static const Color accentColor = Color(0xFF539BF5);
  static const Color textColor = Color(0xFFCDD9E5);
  static const Color subtitleColor = Color(0xFF768390);
  static const Color cardColor = Color(0xFF2D333B);
  static const Color dividerColor = Color(0xFF444C56);
  
  // Gradients
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [primaryColor, Color(0xFF1A1A1A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient cardGradient = LinearGradient(
    colors: [secondaryColor, Color(0xFF252525)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF282C34), Color(0xFF1C1E24)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  
  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF58A6FF),
      Color(0xFF1F6FEB),
    ],
  );
  
  // Text styles
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  
  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 16,
    color: subtitleColor,
  );
  
  static const TextStyle bodyStyle = TextStyle(
    fontSize: 14,
    color: textColor,
  );
  
  // Button styles
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: accentColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
  
  // Animation durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 250);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 500);
  static const Duration longAnimationDuration = Duration(milliseconds: 800);
  
  // Card decoration
  static BoxDecoration cardDecoration = BoxDecoration(
    gradient: cardGradient,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 10,
        offset: const Offset(0, 5),
      ),
    ],
  );
  
  // GitHub theme
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.dark(
      primary: accentColor,
      secondary: secondaryColor,
      surface: cardColor,
      background: primaryColor,
      onBackground: textColor,
      onSurface: textColor,
    ),
    textTheme: const TextTheme(
      headlineLarge: titleStyle,
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      bodyLarge: bodyStyle,
      bodyMedium: bodyStyle,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: primaryButtonStyle,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: titleStyle,
      iconTheme: IconThemeData(color: textColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: secondaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: subtitleStyle,
    ),
    cardTheme: CardTheme(
      color: cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: dividerColor,
      thickness: 1,
    ),
    iconTheme: const IconThemeData(
      color: accentColor,
    ),
    brightness: Brightness.dark,
  );
}

// Animation classes have been moved to lib/app/widgets/animations.dart
