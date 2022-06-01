import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.onButtonPressed,
    required this.labelList,
    required this.icoList,
  }) : super(key: key);

  final ValueChanged<int> onButtonPressed;
  final List<String> labelList;
  final List<IconData> icoList;

  @override
  State<BottomNavBar> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int currentChoice = 0;

  void itemSelectionHandler(int index) {
    currentChoice = index;
    widget.onButtonPressed(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> barButtons = [];
    for (int i = 0; i < widget.labelList.length; i++) {
      barButtons.add(NavBarButton(
          index: i,
          isSelected: currentChoice == i,
          label: widget.labelList[i],
          iconData: widget.icoList[i],
          onTap: itemSelectionHandler));
    }
    final ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        color: (darkMode) ? AppColors.cardDark : AppColors.cardLight,
        child: SizedBox(
          height: buttonHeight + 2 * vpadHeight,
          child: CupertinoScrollbar(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: hpadWidgetList(barButtons, startPad: true),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  const NavBarButton({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.label,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  final String label; //Text under the icon
  final IconData iconData; //Icon
  final int index;
  final ValueChanged<int>
      onTap; //Allows a parent to select a function to execute by the child widget
  final bool isSelected;

  @override
  State<NavBarButton> createState() {
    return NavBarButtonState();
  }
}

class NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: vpadWidgetList([
        ElevatedButton(
          style: defaultButtonStyle(darkMode, inverter: widget.isSelected),
          onPressed: () {
            widget.onTap(widget.index);
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
                Text(
                  widget.label,
                ),
              ],
            ),
          ),
        ),
      ], startPad: true, height: vpadHeight),
    );
  }
}
