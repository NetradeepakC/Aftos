import 'package:aftos/models/models.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../cards/card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
    required this.messageData,
    required this.name,
    this.pictureURL,
  }) : super(key: key);

  final String? pictureURL;
  final String name;

  static Route route(
    MessageData data,
    String name, {
    String? pictureURL,
  }) =>
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          messageData: data,
          name: name,
          pictureURL: pictureURL,
        ),
      );

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    return Scaffold(
      appBar: messageAppBar(darkMode, name, pictureURL: pictureURL),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              reverse: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return ChatScreenCard(
                  messageData: messageData,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
