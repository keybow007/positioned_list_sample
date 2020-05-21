import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:positionedlistsample/screens/home_screen.dart';

class LargeImageScreen extends StatelessWidget {
  final int index;
  final String imagePath;

  LargeImageScreen({this.index, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => _backToHome(context),
        ),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }

  _backToHome(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (_) => HomeScreen(initialIndex: index)
    ));
  }
}
