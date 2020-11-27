import 'package:flutter/material.dart';
import 'package:todoapp/homepage.dart';

import 'screen.dart';
import 'styles/global.dart';

void main() {
  var mainColor = mainAreaBgColor;
  var screens = [
    Screen(
      Container(
        color: mainColor,
      ),
      Icon(Icons.home),
    ),
    Screen(
      Container(
        color: mainColor,
      ),
      Icon(Icons.timeline),
    ),
    Screen(
      Container(
        color: mainColor,
      ),
      Icon(Icons.settings),
    )
  ];
  runApp(TodoApp(
    screens: screens,
  ));
}

class TodoApp extends StatelessWidget {
  final List<Screen> screens;

  const TodoApp({Key key, @required this.screens}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(
        screens: screens,
      ),
    );
  }
}
