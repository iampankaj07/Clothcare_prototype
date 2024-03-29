import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.blue200,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.red50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.blueGray10001;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return appTheme.blueGray10001;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 6,
        space: 6,
        color: appTheme.black90002,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90002,
          fontSize: 10.fSize,
          fontFamily: 'Salsa',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 40.fSize,
          fontFamily: 'Kalam',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 36.fSize,
          fontFamily: 'Kalam',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 32.fSize,
          fontFamily: 'Kalam',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 24.fSize,
          fontFamily: 'Knewave',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.red5001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF054371),
    primaryContainer: Color(0XFFE0C2C2),

    // Error colors
    errorContainer: Color(0XFF033043),
    onError: Color(0XFFD21E06),
    onErrorContainer: Color(0XFFE5E3E3),

    // On colors(text colors)
    onPrimary: Color(0XFF100101),
    onPrimaryContainer: Color(0XFF161A68),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF140101);
  Color get black90001 => Color(0XFF1D0000);
  Color get black90002 => Color(0XFF000000);

  // Blue
  Color get blue200 => Color(0XFF98C9DE);
  Color get blue500 => Color(0XFF2D9AE9);
  Color get blue600 => Color(0XFF1590E9);
  Color get blue700 => Color(0XFF3B75CB);

  // BlueGray
  Color get blueGray100 => Color(0XFFDBD3D3);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF6A99B3);
  Color get blueGray50 => Color(0XFFE9EDEE);

  // Cyan
  Color get cyan900 => Color(0XFF044370);

  // Gray
  Color get gray100 => Color(0XFFEFF8FB);
  Color get gray50 => Color(0XFFFEF6F6);
  Color get gray500 => Color(0XFFADA5A5);
  Color get gray5001 => Color(0XFFFFFBFB);
  Color get gray5002 => Color(0XFFFFF8F8);
  Color get gray5003 => Color(0XFFF4F9FB);
  Color get gray5004 => Color(0XFFF6FBFD);
  Color get gray5005 => Color(0XFFFFF9F9);
  Color get gray5006 => Color(0XFFFBF7F7);
  Color get gray5007 => Color(0XFFFCF9F9);
  Color get gray5008 => Color(0XFFFCFAFA);
  Color get gray5009 => Color(0XFFF8FDFF);
  Color get gray600 => Color(0XFF777F85);

  // Indigo
  Color get indigo900 => Color(0XFF0C1A61);
  Color get indigo90001 => Color(0XFF0E138E);

  // LightBlue
  Color get lightBlue800 => Color(0XFF1376AD);

  // Red
  Color get red300 => Color(0XFFC37373);
  Color get red50 => Color(0XFFFDF1F1);
  Color get red5001 => Color(0XFFFDECEC);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
