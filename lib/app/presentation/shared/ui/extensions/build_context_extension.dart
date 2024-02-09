import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get _theme => Theme.of(this);

  /// ------------> Theme ---------------\\\\

  TextTheme get textTheme => _theme.textTheme;

  /// ------------> Color ---------------\\\\
  ColorScheme get colorScheme => _theme.colorScheme;
  Color get primaryColor => _theme.colorScheme.primary;
  Color get secondaryColor => _theme.colorScheme.secondary;
  Color get tertiaryColor => _theme.colorScheme.tertiary;
}
