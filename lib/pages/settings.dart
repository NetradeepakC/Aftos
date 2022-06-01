import 'package:aftos/helpers.dart';
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
    setState(() {});
    return Column(
      children: vpadWidgetList(
        [
          defaultAppBar(isDark(context)),
          const SizedBox(
            height: 10,
          ),
          Avatar(
            url: Helpers.randomPictureUrl(),
            radius: 50,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
