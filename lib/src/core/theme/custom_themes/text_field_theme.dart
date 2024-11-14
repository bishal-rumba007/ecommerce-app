import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    prefixIconColor: AppColor.greyStrong,
    suffixIconColor: AppColor.greyStrong,
    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
    filled: true,
    fillColor: Color(0xFFF9F9F9),
    hintStyle: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColor.greyStrong,
        height: 1.0,
        textBaseline: TextBaseline.alphabetic),
    labelStyle: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColor.greyStrong,
        height: 1.0,
        textBaseline: TextBaseline.alphabetic),
    border: const OutlineInputBorder().copyWith(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColor.primary, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColor.red, width: 1.2),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColor.red, width: 1.2),
    ),
    errorStyle: const TextStyle().copyWith(
      fontSize: 12,
      color: AppColor.red,
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    prefixIconColor: AppColor.greyStrong,
    suffixIconColor: AppColor.greyStrong,
    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
    filled: true,
    fillColor: AppColor.greyLight,
    hintStyle: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColor.greyStrong,
        height: 1.0,
        textBaseline: TextBaseline.alphabetic),
    labelStyle: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColor.greyStrong,
        height: 1.0,
        textBaseline: TextBaseline.alphabetic),
    border: const OutlineInputBorder().copyWith(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColor.primary, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColor.red, width: 1.2),
    ),
    errorStyle: const TextStyle().copyWith(
      fontSize: 12,
      color: AppColor.red,
    ),
  );
}
