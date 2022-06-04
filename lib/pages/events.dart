import 'package:aftos/helpers.dart';
import "package:aftos/pages/standard_page.dart";
import 'package:aftos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aftos/cards/card.dart';
// TODO: Learn slivers

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
    ThemeData mode = Theme.of(context);
    bool darkMode = mode.brightness == Brightness.dark;
    return Column(
      children: [
        defaultAppBar(darkMode, extraButtons: [
          ElevatedButton(
              style: defaultButtonStyle(darkMode),
              onPressed: () {},
              child: const Icon(Icons.star_border_rounded))
        ]),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return EventCard(
                url: Helpers.randomPictureUrl(),
              );
            },
          ),
        ),
      ],
    );
  }
}
