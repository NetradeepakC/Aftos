import 'package:aftos/models/models.dart';
import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatScreenCard extends StatelessWidget {
  const ChatScreenCard({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;

  Widget getCard(bool darkMode) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text("${messageData.from}: "),
                vpad,
                Divider(
                  thickness: 1,
                  endIndent: 0,
                  color: (darkMode) ? AppColors.textDark : AppColors.textLight,
                ),
                vpad,
                (messageData.pictureUrl != null)
                    ? Image(
                        image: CachedNetworkImageProvider(
                            messageData.pictureUrl ?? ""),
                      )
                    : Container(),
                (messageData.pictureUrl != null) ? vpad : Container(),
                (messageData.text != null)
                    ? Text(messageData.text ?? "")
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    if (messageData.from == 'You') {
      return Row(
        children: [
          hpad,
          hpad,
          getCard(darkMode),
        ],
      );
    } else {
      return Row(
        children: [
          getCard(darkMode),
          hpad,
          hpad,
        ],
      );
    }
  }
}
