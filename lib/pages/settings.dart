import "package:aftos/pages/standard_page.dart";
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
    return Center(
      child: Text(widget.title),
    );
  }
}
