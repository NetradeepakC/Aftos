import "dart:math";

import 'package:aftos/theme.dart';
import 'package:english_words/english_words.dart';
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
    overflow: TextOverflow.fade,
  );
}

String randomName() {
  final random = Random();
  String adj = adjectives[random.nextInt(adjectives.length)];
  String noun = nouns[random.nextInt(nouns.length)];
  return adj[0].toUpperCase() +
      adj.substring(1).toLowerCase() +
      " " +
      noun[0].toUpperCase() +
      noun.substring(1).toLowerCase();
}
