import 'package:flutter/material.dart';
import 'package:aftos/pages/pages.dart';
import 'package:aftos/navigation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final pages=[
    People(),
    Activities(),
    Contrast(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Test AppBar")),
      ),
      body: pages[0],
      bottomNavigationBar: BottomNavBar(),
    );
  }
}