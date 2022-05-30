import 'package:aftos/theme.dart';
import 'package:flutter/material.dart';

TextStyle defaultTextStyle(BuildContext context) {
  ThemeData mode = Theme.of(context);
  bool darkMode = mode.brightness == Brightness.dark;
  return TextStyle(color: darkMode ? AppColors.textLight : AppColors.textDark);
}

Text defaultText(BuildContext context, String str) {
  return Text(
    str,
    style: defaultTextStyle(context),
  );
}
