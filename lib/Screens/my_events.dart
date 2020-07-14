import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyEvents extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

//Creates the the floating map button.
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

  Container addInviteBox(String text, String date) {
    return Container(
      padding: EdgeInsets.all(10.00),
      decoration: BoxDecoration(
        color: Color(0xFFDAE0E2),
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: const BorderRadius.all(const Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              //padding: EdgeInsets.all(30.0),
              child: AutoSizeText(
                text + ' | ' + date,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
                maxLines: 1,
              ),
            ),
          ),

          //Padding(
          //padding: const EdgeInsets.only(left: 100.00),
          //Row(
          //children: <Widget>[

          Icon(Icons.check, size: 30),
          SizedBox(width: 5),
          Icon(Icons.favorite_border, size: 30),
          SizedBox(width: 5),
          Image.asset('assets/images/black-and-white-share-icon-arrow.png',
              scale: 70),

          //],
          // )
          //)
        ],
      ),
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
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text('My Invites',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                        addInviteBox('WAWA Hopkins State', '4/25'),
                        SizedBox(height: 5),
                        addInviteBox('WAWA X Phi Mu Mixer', '4/17'),
                        SizedBox(height: 5),
                        addInviteBox('HomeSlyce Karoke Night', '4/14'),
                        SizedBox(height: 5),
                        addInviteBox('Unnamed Event', '4/15'),
                        SizedBox(height: 5),
                        Text(
                          'Load More',
                          style: TextStyle(fontSize: 13.0),
                        )
                      ],
                    ),
                  ),
                  Row()
                ],
              ))),
    ));
  }
}
