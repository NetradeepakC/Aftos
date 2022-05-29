import 'package:aftos/theme.dart';
import 'package:flutter/material.dart';

List<Widget> hpadWidgetList(List<Widget> widList,
    {double width = hpadWidth, bool startPad = false}) {
  SizedBox hpad = SizedBox(
    width: width,
  );
  List<Widget> widlistNew = (startPad) ? [hpad] : [];
  for (Widget i in widList) {
    widlistNew.add(i);
    widlistNew.add(hpad);
  }
  return widlistNew;
}

List<Widget> vpadWidgetList(List<Widget> widList,
    {double height = vpadHeight, startPad = false}) {
  SizedBox vpad = SizedBox(
    height: height,
  );
  List<Widget> widlistNew = (startPad) ? [vpad] : [];
  for (Widget i in widList) {
    widlistNew.add(i);
    widlistNew.add(vpad);
  }
  return widlistNew;
}

isDark(BuildContext context) {
  ThemeData mode = Theme.of(context);
  bool darkMode = mode.brightness == Brightness.dark;
  return darkMode;
}
