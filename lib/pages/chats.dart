import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class Chats extends StandardPage {
  Chats({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Chats";
    ico = CupertinoIcons.bubble_left_bubble_right_fill;
  }

  @override
  State<Chats> createState() {
    return ChatsState();
  }
}

class ChatsState extends State<Chats> {
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
              return Column(
                children: const [
                  SizedBox(
                    height: vpadHeight,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text("Random Person"),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
