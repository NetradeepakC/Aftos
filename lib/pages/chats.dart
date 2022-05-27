import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Chats extends StandardPage {
  Chats({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Chats";
    ico = Icons.local_activity;
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
        Center(
          child: Text(widget.title),
        ),
      ],
    );
  }
}
