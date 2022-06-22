import 'dart:math';

import 'package:aftos/cards/card.dart';
import 'package:aftos/helpers.dart';
import 'package:aftos/models/models.dart';
import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendList extends StandardPage {
  FriendList({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Friends";
    ico = Icons.person;
  }

  @override
  State<FriendList> createState() {
    return FriendListState();
  }
}

class FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    bool darkMode = isDark(context);
    return Column(
      children: [
        defaultAppBar(
          darkMode,
          extraButtons: [
            ElevatedButton(
                style: defaultButtonStyle(darkMode),
                onPressed: () {},
                child: const Icon(Icons.favorite_rounded))
          ],
        ),
        Flexible(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return FriendCard(
                url: Helpers.randomPictureUrl(),
                messageData: MessageData(
                    id: 0,
                    from: (random.nextBool()) ? "You" : "Them",
                    time: DateTime.now()
                        .subtract(Duration(seconds: random.nextInt(200000))),
                    text:
                        "${randomName()} ${randomName()} ${randomName()} ${randomName()}"),
              );
            },
          ),
        ),
      ],
    );
  }
}
