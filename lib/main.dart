import 'package:flutter/material.dart';
import 'home.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.amberAccent,
        primaryIconTheme: IconThemeData(
          color: Colors.white
        )
      ),
      home: new HomePage(),
    );
  }
}
