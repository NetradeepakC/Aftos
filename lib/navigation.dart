import 'package:flutter/material.dart';
import 'package:aftos/theme.dart';
class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

  final barButtons=[
    const NavBarButton(
      label: "Chats",
      iconData: Icons.chat_bubble,),
    const NavBarButton(
      label: "Activities",
      iconData: Icons.local_activity,),
    const NavBarButton(
      label: "Contrast",
      iconData: Icons.call_split,),
    const NavBarButton(
      label: "Groups",
      iconData: Icons.group,),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData mode = Theme.of(context);
    var whichMode=mode.brightness;
    return SafeArea(
      child: Container(
        color: (whichMode==Brightness.dark)?AppColors.cardDark:AppColors.cardLight,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: barButtons,
        ),
      ),
      top: false,
      bottom: true,
    );
  }
}

class NavBarButton extends StatelessWidget {
  const NavBarButton({Key? key, required this.label, required this.iconData}) : super(key: key);

  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(iconData),
        Text(label),
      ],
    );
  }
}