import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aftos/cards/card.dart';
import 'package:aftos/helpers.dart';

class GroupList extends StandardPage {
  GroupList({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Groups";
    ico = Icons.group;
  }

  @override
  State<GroupList> createState() {
    return GroupListState();
  }
}

class GroupListState extends State<GroupList> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(
          darkMode,
        ),
        Flexible(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return GroupCard(url: Helpers.randomPictureUrl());
            },
          ),
        ),
      ],
    );
  }
}
