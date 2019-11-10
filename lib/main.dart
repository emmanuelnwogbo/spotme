import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override //@override is provided by Dart not by Flutter
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

