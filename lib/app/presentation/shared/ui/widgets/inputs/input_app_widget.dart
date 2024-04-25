import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_products/app/domain/entities/app/app_contantes.dart';
import 'package:food_products/app/presentation/shared/ui/extensions/build_context_extension.dart';

class InputAppWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextAlignVertical? textAlignVertical;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;

  const InputAppWidget({
    super.key,
    this.controller,
    required this.label,
    this.textAlign = TextAlign.start,
    this.decoration,
    this.inputFormatters,
    this.validator,
    this.keyboardType,
    this.maxLength,
    this.focusNode,
    this.onChanged,
    this.textAlignVertical,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textInputAction: textInputAction,
      style: Theme.of(context).inputDecorationTheme.labelStyle?.copyWith(
            height: 1.2,
          ),
      cursorColor: context.colorScheme.onBackground,
      cursorHeight: 17,
      cursorWidth: 1.7,
      decoration: decoration ??
          InputDecoration(
            label: null,
            hintText: label,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                AppContantes.borderRadius,
              ),
            ),
          ),
    );
  }
}
