import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue200,
      );
  static BoxDecoration get fillBlue60072 => BoxDecoration(
        color: appTheme.blue60072,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
// Gradient decorations
  static BoxDecoration get gradientBlueGrayToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray10000.withOpacity(0.41),
            theme.colorScheme.onPrimaryContainer.withOpacity(0)
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.49),
          end: Alignment(1, 0.49),
          colors: [appTheme.indigo500, appTheme.blue40001],
        ),
      );
  static BoxDecoration get gradientIndigoToBlueGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blue60001,
            width: 1.h,
          ),
          left: BorderSide(
            color: appTheme.blue60001,
            width: 1.h,
          ),
          right: BorderSide(
            color: appTheme.blue60001,
            width: 1.h,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.indigo50056, appTheme.blueGray10000],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineIndigo => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
// Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}
