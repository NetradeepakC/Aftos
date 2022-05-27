import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Groups extends StandardPage {
  Groups({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Groups";
    ico = Icons.group;
  }

  @override
  State<Groups> createState() {
    return GroupsState();
  }
}

class GroupsState extends State<Groups> {
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
