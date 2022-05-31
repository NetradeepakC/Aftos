import 'package:aftos/theme.dart';
import 'package:flutter/material.dart';

TextStyle defaultTextStyle(BuildContext context, {double fontSize = 14}) {
  ThemeData mode = Theme.of(context);
  bool darkMode = mode.brightness == Brightness.dark;
  return TextStyle(
      color: darkMode ? AppColors.textLight : AppColors.textDark,
      fontSize: fontSize);
}

Text defaultText(BuildContext context, String str, {double fontSize = 14}) {
  return Text(
    str,
    style: defaultTextStyle(context, fontSize: fontSize),
  );
}
