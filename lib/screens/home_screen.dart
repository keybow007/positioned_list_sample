import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:positionedlistsample/components/scenes.dart';
import 'package:positionedlistsample/screens/large_image_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeScreen extends StatelessWidget {
  final int initialIndex;

  HomeScreen({@required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollablePositionedListSample"),
        centerTitle: true,
      ),
      body: ScrollablePositionedList.builder(
        itemCount: scenes.length,
        initialScrollIndex: initialIndex,
        itemBuilder: (context, index) => Card(
          elevation: 4.0,
          child: InkWell(
            onTap: () => _openLargeImage(context, index),
            child: Column(
              children: <Widget>[
                Image.asset(scenes[index].imagePath),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(scenes[index].title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _openLargeImage(BuildContext context, int index) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => LargeImageScreen(
          index: index,
          imagePath: scenes[index].imagePath,
        ),
      ),
    );
  }
}
