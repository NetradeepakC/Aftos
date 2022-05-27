import "package:aftos/pages/standard_page.dart";
import 'package:flutter/material.dart';

class Feed extends StandardPage {
  Feed({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Feed";
    ico = Icons.person;
  }

  @override
  State<Feed> createState() {
    return FeedState();
  }
}

class FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.title),
    );
  }
}
