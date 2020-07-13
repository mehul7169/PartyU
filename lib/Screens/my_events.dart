import 'package:flutter/material.dart';

class MyEvents extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

  FloatingActionButton addMapButton() {
    return FloatingActionButton(
      backgroundColor: bgColor,
      shape: CircleBorder(
          side: BorderSide(
        color: black,
        width: 4.0,
      )),
      child: Icon(
        Icons.map,
        color: black,
      ),
      onPressed: () {},
    );
  }

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 325.00),
        child: addMapButton(),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(30),
      )),
    ));
  }
}
