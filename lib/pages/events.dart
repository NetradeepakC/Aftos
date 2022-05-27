import "package:aftos/pages/standard_page.dart";
import 'package:flutter/material.dart';

class Events extends StandardPage {
  Events({
    Key? key,
  }) : super(key: key);

  @override
  void initData() {
    title = "Events";
    ico = Icons.local_activity;
  }

  @override
  State<Events> createState() {
    return EventsState();
  }
}

class EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.title),
    );
  }
}
