import 'package:flutter/material.dart';
import 'package:positionedlistsample/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScrollablePositionedListSample",
      theme: ThemeData.dark(),
      home: HomeScreen(initialIndex: 0,),
    );
  }
}
