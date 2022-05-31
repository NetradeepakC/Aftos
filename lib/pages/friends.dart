import 'package:aftos/helpers.dart';
import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Friends extends StandardPage {
  Friends({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Friends";
    ico = Icons.person;
  }

  @override
  State<Friends> createState() {
    return FriendsState();
  }
}

class FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(darkMode, extraButtons: [
          ElevatedButton(
              style: defaultButtonStyle(darkMode),
              onPressed: () {},
              child: const Icon(Icons.favorite_rounded))
        ]),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Avatar.large(url: Helpers.randomPictureUrl()),
                        hpad,
                        const Text(
                          "Friend",
                          style: TextStyle(fontSize: 17),
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
