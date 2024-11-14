import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColor.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColor.black,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColor.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
  );
}
