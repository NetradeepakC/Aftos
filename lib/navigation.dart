import 'package:aftos/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double buttonHeight = 55;

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.onButtonPressed,
    required this.labelList,
    required this.icoList,
  }) : super(key: key);

  static int i = 0;
  final ValueChanged<int> onButtonPressed;
  final List<String> labelList;
  final List<IconData> icoList;

  List<Widget> padButtons(List<Widget> barButtons) {
    List<Widget> newList = [];
    SizedBox hpad = const SizedBox(
      width: 45,
    );
    for (Widget i in barButtons) {
      newList.add(hpad);
      newList.add(i);
    }
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> barButtons = [];
    for (int i = 0; i < labelList.length; i++) {
      barButtons.add(NavBarButton(
          label: labelList[i], iconData: icoList[i], onTap: onButtonPressed));
    }
    final ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return SafeArea(
      child: Container(
        color: (darkMode) ? AppColors.cardDark : AppColors.cardLight,
        child: SizedBox(
          height: buttonHeight,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: padButtons(barButtons),
          ),
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

  final String label; //Text under the icon
  final IconData iconData; //Icon
  final ValueChanged<int>
      onTap; //Allows a parent to select a function to execute by the child widget

  @override
  State<NavBarButton> createState() {
    return NavBarButtonState();
  }
}

class NavBarButtonState extends State<NavBarButton> {
  static int maxIndex = 0;
  int index = -1;
  bool firstLoad = true;

  @override
  Widget build(BuildContext context) {
    if (firstLoad) //Instructions that only need to run once and not every hot reload
    {
      index = maxIndex++;
      firstLoad = false;
      setState(() {});
    }
    return GestureDetector(
        onTap: () {
          widget.onTap(index);
        },
        child: SizedBox(
          height: buttonHeight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 5,
              ),
              Icon(widget.iconData),
              const SizedBox(
                height: 2,
              ),
              defaultText(context, widget.label),
            ],
          ),
        ));
  }
}
