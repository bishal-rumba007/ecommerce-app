import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class BuildOTPField extends StatelessWidget {
  const BuildOTPField({
    super.key,
    required this.controller,
    this.validator,
    this.hintText = '',
    this.textInputType,
    this.textInputAction,
    this.prefixIconWidget,
    this.maxLine = 1,
    this.autoFocus = false,
    this.isEnabled = true,
    this.onChanged,
    this.customContentPadding,
    this.inputFormatters,
    this.onTap,
    this.focusNode,
    this.alignText = TextAlign.start,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget? prefixIconWidget;
  final int? maxLine;
  final bool autoFocus;
  final bool isEnabled;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? customContentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final TextAlign alignText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: isEnabled,
      autofocus: autoFocus,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      focusNode: focusNode,
      textAlign: alignText,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      validator: validator,
      maxLines: maxLine,
      maxLength: 1,
      obscureText: false,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w500),
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
        alignLabelWithHint: true,
        hintText: hintText,
        prefixIcon: prefixIconWidget,
        prefixIconColor: AppColor.greyStrong,
        fillColor: const Color(0xFFF1F1F1),
        counterText: '', // This line removes the "0/1" counter
      ),
      onChanged: onChanged,
    );
  }
}