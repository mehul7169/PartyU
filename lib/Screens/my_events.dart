import 'package:flutter/material.dart';

class MyEvents extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(30),
      )),
    ));
  }
}
