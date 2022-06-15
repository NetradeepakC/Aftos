import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aftos/models/models.dart';
import 'package:aftos/cards/card.dart';
import 'dart:math';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Flexible(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ChatScreenCard(
          messageData: MessageData.text(
              id: 0,
              from: (random.nextBool()) ? "You" : "Them",
              text:
                  "${randomName()} ${randomName()} ${randomName()} ${randomName()}"),
        );
      },
    ));
  }
}
