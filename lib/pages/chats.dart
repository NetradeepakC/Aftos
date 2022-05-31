import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        defaultAppBar(
          darkMode,
          extraButtons: [
            ElevatedButton(
                style: defaultButtonStyle(darkMode),
                onPressed: () {},
                child: const Icon(Icons.pin_drop)),
          ],
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          randomName(),
                          overflow: TextOverflow.fade,
                          style: const TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.pin_drop_outlined),
                          style: defaultButtonStyle(darkMode, inverter: true),
                        ),
                      ],
                    ),
                  ),
                  style: defaultButtonStyle(darkMode),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
