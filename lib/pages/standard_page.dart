import 'package:flutter/material.dart';

abstract class StandardPage extends StatefulWidget {
  StandardPage({
    Key? key,
  }) : super(key: key);

  void initData() {}

  String title = "StandardPage";
  IconData ico = Icons.accessibility_new;
}
