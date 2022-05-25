import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aftos/theme.dart';
class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    Key? key,
    required this.onButtonPressed
  }) : super(key: key);

  static int i=0;
  final ValueChanged<int> onButtonPressed;

  @override
  Widget build(BuildContext context) {
    final List<Widget> barButtons=[
      NavBarButton(
        label: "Chats",
        iconData: CupertinoIcons.bubble_left_bubble_right_fill,
        onTap: onButtonPressed,),
      NavBarButton(
        label: "Events",
        iconData: Icons.local_activity,
        onTap: onButtonPressed,),
      NavBarButton(
        label: "Feed",
        iconData: Icons.person,
        onTap: onButtonPressed,),
      NavBarButton(
        label: "Groups",
        iconData: Icons.group,
        onTap: onButtonPressed,),
    ];
    final ThemeData mode = Theme.of(context);
    bool darkMode=mode.brightness==Brightness.dark;
    return SafeArea(
      child: Container(
        color: (darkMode)?AppColors.cardDark:AppColors.cardLight,
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

class NavBarButton extends StatefulWidget {
  const NavBarButton({
    Key? key,
    required this.label,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  final String label;//Text under the icon
  final IconData iconData;//Icon
  final ValueChanged<int> onTap;

  @override
  State<NavBarButton> createState() {
    return NavBarButtonState();
  }
}

class NavBarButtonState extends State<NavBarButton> {
  static int maxIndex=0;
  int index=-1;
  bool firstLoad=true;

  @override
  Widget build(BuildContext context) {
    // final ThemeData mode = Theme.of(context);
    // bool darkMode=mode.brightness==Brightness.dark;
    if(firstLoad)//Instructions that only need to run once and not every hot reload
    {
      index=maxIndex++;
      firstLoad=false;
      setState((){});
    }
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: SizedBox(
        width: 50,
        height: 55,
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 5,),
            Icon(widget.iconData),
            const SizedBox(height: 2,),
            //Text(label, style: const TextStyle(color: AppColors.textLight,)),
            defaultText(context, widget.label),
          ],
        ),
      )
    );
  }
}