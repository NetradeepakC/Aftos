import 'package:aftos/navigation.dart';
import 'package:aftos/pages/pages.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  final pages = [
    Chats(),
    Events(),
    Feed(),
    Groups(),
  ];

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    for (var i in widget.pages) {
      i.initData();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Aftos")),
      ),
      body: widget.pages[i],
      bottomNavigationBar: BottomNavBar(
        onButtonPressed: (index) {
          i = index;
          setState(() {});
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
