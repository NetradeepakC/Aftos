import "package:aftos/pages/standard_page.dart";
import 'package:flutter/material.dart';

class Friends extends StandardPage {
  Friends({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Friends";
    ico = Icons.person;
  }

  @override
  State<Friends> createState() {
    return FriendsState();
  }
}

class FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.title),
    );
  }
}
