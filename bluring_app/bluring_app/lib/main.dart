import 'package:bluring_app/pages/bluring_layout.dart';
import 'package:bluring_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "XX",
        home: Scaffold(
          body: BlurringLayout(
            child: HomePage(),
          ),
        ));
  }
}
