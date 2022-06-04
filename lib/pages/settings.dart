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
    bool darkMode = isDark(context);
    return Column(
      children: vpadWidgetList(
        [
          defaultAppBar(isDark(context)),
          vpad,
          Avatar(
            url: Helpers.randomPictureUrl(),
            radius: 50,
          ),
          vpad,
          ElevatedButton(
            onPressed: () {},
            style: defaultButtonStyle(darkMode),
            child: const Text(
              "Account Details",
              style: TextStyle(fontSize: 18),
            ),
          ),
          vpad,
          ElevatedButton(
            onPressed: () {},
            style: defaultButtonStyle(darkMode),
            child: const Text(
              "Notifications",
              style: TextStyle(fontSize: 18),
            ),
          ),
          vpad,
          ElevatedButton(
            onPressed: () {},
            style: defaultButtonStyle(darkMode),
            child: const Text(
              "Storage",
              style: TextStyle(fontSize: 18),
            ),
          ),
          vpad,
          ElevatedButton(
            onPressed: () {},
            style: defaultButtonStyle(darkMode),
            child: const Text(
              "Invite Someone",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
