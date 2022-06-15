import 'dart:math';
import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aftos/models/models.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatScreenCard extends StatelessWidget {
  const ChatScreenCard({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Text(messageData.from),
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
    );
  }
}
