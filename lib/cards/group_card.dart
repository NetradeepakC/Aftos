import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          child: Column(
            children: [
              Text(
                randomName(),
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              vpad,
              Divider(
                thickness: 1,
                endIndent: 0,
                color: (darkMode) ? AppColors.textDark : AppColors.textLight,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: darkMode ? AppColors.textDark : AppColors.textLight,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image(
                    image: CachedNetworkImageProvider(url!),
                  ),
                ),
              ),
              vpad,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: defaultButtonStyle(
                      darkMode,
                      inverter: true,
                    ),
                    child: const Icon(Icons.thumb_up_alt_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: defaultButtonStyle(
                      darkMode,
                      inverter: true,
                    ),
                    child: const Icon(Icons.thumb_down_alt_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: defaultButtonStyle(
                      darkMode,
                      inverter: true,
                    ),
                    child: const Icon(Icons.mode_comment_outlined), //Icon
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
