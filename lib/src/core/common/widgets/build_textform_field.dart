import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField({
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
    this.fillColor,
    this.suffixIcon,
    this.isFilled,
    this.onSubmit,
    this.onEditingComplete,
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
  final Color? fillColor;
  final Widget? suffixIcon;
  final bool? isFilled;
  final void Function(String)? onSubmit;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: isEnabled,
      autofocus: autoFocus,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      validator: validator,
      maxLines: maxLine,
      obscureText: false,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w500),
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        // filled: isFilled ?? false,
        // fillColor: fillColor,
        contentPadding: customContentPadding,
        alignLabelWithHint: true,
        hintText: hintText,
        prefixIcon: prefixIconWidget,
        prefixIconColor: AppColor.greyStrong,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
    );
  }
}

class BuildPasswordTextFormField extends StatefulWidget {
  const BuildPasswordTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.hintText = 'Enter password',
    this.textInputType,
    this.textInputAction,
    this.fillColor,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Color? fillColor;

  @override
  State<BuildPasswordTextFormField> createState() =>
      _BuildPasswordTextFormFieldState();
}

class _BuildPasswordTextFormFieldState
    extends State<BuildPasswordTextFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      obscureText: isObscure,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.lock_outline_rounded),
        prefixIconColor: AppColor.greyStrong,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: Icon(
            isObscure
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: isObscure ? Colors.grey.shade400 : AppColor.primary,
          ),
        ),
      ),
    );
  }
}
