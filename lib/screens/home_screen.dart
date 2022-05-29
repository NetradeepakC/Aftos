import 'package:aftos/navigation.dart';
import 'package:aftos/pages/pages.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = [
    Chats(),
    Events(),
    Friends(),
    Groups(),
    Settings(),
  ];

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    for (var i in widget.pages) {
      i.initData();
    }
    setState(() {});
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: widget.pageIndex,
        builder: (BuildContext context, int value, _) {
          return widget.pages[value];
        },
      ),
      bottomNavigationBar: BottomNavBar(
        onButtonPressed: (index) {
          currentScreen = index;
          widget.pageIndex.value = index;
        },
        labelList: widget.pages.map((x) {
          return x.title;
        }).toList(),
        icoList: widget.pages.map((x) {
          return x.ico;
        }).toList(),
      ),
    );
  }
}
