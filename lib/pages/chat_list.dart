import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aftos/cards/card.dart';

class ChatList extends StandardPage {
  ChatList({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Chats";
    ico = CupertinoIcons.bubble_left_bubble_right_fill;
  }

  @override
  State<ChatList> createState() {
    return ChatListState();
  }
}

class ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(
          darkMode,
          extraButtons: [
            ElevatedButton(
                style: defaultButtonStyle(darkMode),
                onPressed: () {},
                child: const Icon(Icons.bookmark)),
          ],
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return const ChatCard();
            },
          ),
        ),
      ],
    );
  }
}
