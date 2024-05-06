import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: colorScheme.primary,
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray500,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 9.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 15.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0X3F000000),
    secondaryContainer: Color(0XFFAAAAAA),
    onPrimary: Color(0XFF2F2F2F),
    onPrimaryContainer: Color(0X72FFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Blue
  Color get blue200 => Color(0XFFA5CBF1);
  Color get blue400 => Color(0XFF3896E7);
  Color get blue40001 => Color(0XFF3796E7);
  Color get blue600 => Color(0XFF3887DA);
  Color get blue60001 => Color(0XFF3889DC);
  Color get blue60072 => Color(0X72378CDF);
// BlueGray
  Color get blueGray10000 => Color(0X00D9D9D9);
  Color get blueGray400 => Color(0XFF888888);
// Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray300 => Color(0XFFDBDBDB);
  Color get gray400 => Color(0XFFB8B8B8);
  Color get gray500 => Color(0XFF919191);
  Color get gray50001 => Color(0XFF949494);
// Indigo
  Color get indigo500 => Color(0XFF376AC1);
  Color get indigo50001 => Color(0XFF386CC3);
  Color get indigo50056 => Color(0X56366AC1);
  Color get indigo500A0 => Color(0XA0376BC2);
// Orange
  Color get orangeA200 => Color(0XFFF9B53E);
}
