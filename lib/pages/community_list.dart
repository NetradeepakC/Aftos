import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aftos/helpers.dart';
import 'package:aftos/cards/card.dart';

class CommunityList extends StandardPage {
  CommunityList({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Communities";
    ico = Icons.group;
  }

  @override
  State<CommunityList> createState() {
    return CommunityListState();
  }
}

class CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(darkMode),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return GroupCard(
                url: Helpers.randomPictureUrl(),
              );
            },
          ),
        ),
      ],
    );
  }
}
