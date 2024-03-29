import 'package:aftos/models/models.dart';
import 'package:aftos/screens/screens.dart';
import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({
    Key? key,
    required this.url,
    required this.messageData,
  }) : super(key: key);

  final String? url;
  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    String name = randomName();
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(ChatScreen.route(messageData, name, pictureURL: url));
        },
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Avatar.large(url: url),
              hpad,
              Expanded(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    vpad,
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: darkMode
                              ? AppColors.textDark
                              : AppColors.textLight,
                        ),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        (messageData.pictureUrl == null)
                            ? "${messageData.from}: ${messageData.text}"
                            : "${messageData.from}: Image",
                        overflow: TextOverflow.fade,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              hpad,
              ElevatedButton(
                onPressed: () {},
                style: defaultButtonStyle(darkMode, inverter: true),
                child: const Icon(Icons.favorite_border_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
