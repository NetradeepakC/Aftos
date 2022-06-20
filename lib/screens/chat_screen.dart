import 'package:aftos/models/models.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => ChatScreen(
          messageData: data,
        ),
      );

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Flexible(
    //       child: ListView.builder(
    //         scrollDirection: Axis.vertical,
    //         itemBuilder: (BuildContext context, int index) {
    //           return ChatScreenCard(
    //             messageData: messageData,
    //           );
    //         },
    //       ),
    //     ),
    //   ],
    // );
    return Scaffold(
      body: Text("ChatScreen"),
    );
  }
}
