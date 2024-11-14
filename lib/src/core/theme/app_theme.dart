import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_app/src/core/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Inter",
    brightness: Brightness.light,
    cardColor: AppColor.white,
    colorScheme: ColorScheme.light(
      surface: AppColor.white,
      onSurface: AppColor.black,
      primary: AppColor.primary,
      onSurfaceVariant: AppColor.greyStrong,
      inverseSurface: Colors.grey.shade200,
      inversePrimary: AppColor.black,
      onInverseSurface: AppColor.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        disabledBackgroundColor: AppColor.primary.withOpacity(0.5),
        minimumSize: const Size(double.infinity, 50),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColor.primary,
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColor.greyMedium;
            }
            return AppColor.primary;
          },
        ),
        side: WidgetStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColor.primary,
            width: 1,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.black,
      ),
      titleTextStyle: TextStyle(
        color: AppColor.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: AppColor.black,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      foregroundColor: AppColor.greyMedium,
    ),
    cardTheme: const CardTheme(
      color: AppColor.white,
      elevation: 0,
    ),
    sliderTheme: SliderThemeData(
    activeTrackColor: AppColor.primary,
    inactiveTrackColor: AppColor.greyMedium,
    overlayColor: Colors.black.withOpacity(0.1),
    valueIndicatorColor: Colors.transparent,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorStrokeColor: Colors.transparent,
    valueIndicatorTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    showValueIndicator: ShowValueIndicator.always,
  ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Inter",
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      surface: AppColor.backgroundDark,
      onSurface: AppColor.white,
      primary: AppColor.primary,
      inverseSurface: Colors.grey.shade400,
    ),
    textTheme: TTextTheme.darkTextTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontFamily: "Inter",
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
