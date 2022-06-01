import 'package:aftos/screens/screens.dart';
import 'package:aftos/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(ThemeData(
        primarySwatch: Colors.blue,
      )),
      darkTheme: AppTheme.dark(ThemeData(
        primarySwatch: Colors.blue,
      )),
      home: HomeScreen(),
    );
  }
}
