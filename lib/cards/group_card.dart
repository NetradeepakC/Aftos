import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:aftos/helpers.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String? url;

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
                        "You: ${randomName()} ${randomName()} ${randomName()} ${randomName()} ${randomName()}",
                        overflow: TextOverflow.fade,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
