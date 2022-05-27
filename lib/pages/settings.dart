import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Settings extends StandardPage {
  Settings({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Settings";
    ico = Icons.settings;
  }

  @override
  State<Settings> createState() {
    return SettingsState();
  }
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(darkMode),
        Center(
          child: Text(widget.title),
        ),
      ],
    );
  }
}
