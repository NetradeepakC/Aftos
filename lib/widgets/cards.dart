import 'dart:math';

import 'package:aftos/helpers.dart';
import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    this.url,
    this.onTap,
  }) : super(key: key);

  final String? url;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image(
                  image: CachedNetworkImageProvider(url!),
                ),
              ),
              const SizedBox(
                height: 2 * vpadHeight,
              ),
              Text(
                randomName(),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    List<Widget> commonThings = [];
    final random = Random();
    int n = 1 + random.nextInt(5);
    commonThings.add(vpad);
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
        onPressed: () {},
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
                  Row(
                    children: [
                      Text(
                        randomName(),
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
                        child: const Icon(Icons.push_pin_outlined),
                      ),
                    ],
                  ),
                  vpad,
                  const Divider(
                    thickness: 1,
                    endIndent: 0,
                    color: Colors.black,
                  ),
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

class FriendCard extends StatelessWidget {
  const FriendCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {},
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Avatar.large(url: Helpers.randomPictureUrl()),
              hpad,
              Expanded(
                //width: 150,
                child: Column(
                  children: [
                    Text(
                      //Name
                      randomName(),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "You: ${randomName()} ${randomName()} ${randomName()} ${randomName()} ${randomName()}",
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: 12),
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

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkMode = isDark(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {},
        style: defaultButtonStyle(darkMode),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Avatar.large(url: Helpers.randomPictureUrl()),
              hpad,
              SizedBox(
                width: 150,
                child: Text(
                  randomName(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.fade,
                ),
              ),
              const Spacer(),
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
