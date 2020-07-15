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

  //Given a text and a date, creates an Invite Box.
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
          Icon(Icons.check, size: 30),
          SizedBox(width: 5),
          Icon(Icons.favorite_border, size: 30),
          SizedBox(width: 5),
          Image.asset('assets/images/black-and-white-share-icon-arrow.png',
              scale: 70),
        ],
      ),
    );
  }

  Container addEventBox(String eventName, String date, String time) {
    return Container(
        padding: EdgeInsets.only(
          bottom: 30.0,
          top: 20.0,
          right: 15.0,
          left: 10.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFDAE0E2),
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: const BorderRadius.all(const Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoSizeText(
              eventName,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 23,
              ),
              maxLines: 2,
            ),
            SizedBox(
              height: 15,
            ),
            AutoSizeText(
              date,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Text(time,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ))
          ],
        ));
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
              child: Column(
                children: <Widget>[
                  //Expanded(
                  Column(
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
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  //),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text('My Events',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w800,
                                ))),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: addEventBox('HomeSlyce Trivia Night',
                                  'Friday, March 6', '9:00 PM'),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: addEventBox('WAWA Pregame',
                                    'Friday, March 6th', '10:30 PM')),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: addEventBox('WAWA Spring Break Party',
                                    'Saturday, March 7th', '2:00 PM')),
                            SizedBox(width: 10),
                            Expanded(
                                child: addEventBox('Women\'s Lax Party',
                                    'Saturday, March 7th', '11:00 PM')),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Load More',
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    ));
  }
}
