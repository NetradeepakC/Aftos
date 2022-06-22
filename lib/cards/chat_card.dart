import 'dart:math';

import 'package:aftos/models/models.dart';
import 'package:aftos/screens/screens.dart';
import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    List<Widget> commonThings = [];
    final random = Random();
    int n = 1 + random.nextInt(5);
    commonThings.add(vpad);
    String name = randomName();
    for (int i = 0; i < n; i++) {
      commonThings.add(
        Text(
          randomName(),
          overflow: TextOverflow.fade,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(ChatScreen.route(messageData, name));
        },
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
                  Row(
                    children: [
                      Text(
                        name,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: defaultButtonStyle(darkMode, inverter: true),
                        child: const Icon(Icons.bookmark_border_outlined),
                      ),
                    ],
                  ),
                  vpad,
                  Divider(
                    thickness: 1,
                    endIndent: 0,
                    color:
                        (darkMode) ? AppColors.textDark : AppColors.textLight,
                  ),
                  vpad,
                  const Text(
                    "Things you have in common:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ] +
                commonThings,
          ),
        ),
      ),
    );
  }
}
