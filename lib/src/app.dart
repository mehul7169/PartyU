import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: bgColor,
          child: Icon(
            Icons.map,
            color: black,
          ),
          onPressed: () {},
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.portrait,
                      size: 200,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'First Name',
                          style: GoogleFonts.courierPrime(),
                          textScaleFactor: 1.8,
                          //maxLines: 1,
                        ),
                        Text(
                          'Last Name',
                          style: GoogleFonts.courierPrime(),
                          textScaleFactor: 1.8,
                          //maxLines: 1,
                        ),
                        Container(
                          width: 140,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFDAE0E2),
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(4)),
                          ),
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.courierPrime(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          margin: const EdgeInsets.all(4),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Friends & Groups',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.2,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.2, color: Colors.black26),
                          borderRadius:
                              const BorderRadius.all(const Radius.circular(6)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.person_outline, size: 50),
                                Icon(Icons.person_outline, size: 50),
                                Icon(Icons.person_outline, size: 50),
                              ],
                            ),
                            Divider(thickness: 1.2, color: Colors.black26),
                            Row(
                              children: <Widget>[
                                Icon(Icons.near_me, size: 35),
                                Text(
                                  '   Friends & Followers',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_right, size: 35),
                              ],
                            ),
                            Divider(thickness: 1.2, color: Colors.black26),
                            Row(
                              children: <Widget>[
                                Icon(Icons.notifications_none, size: 35),
                                Text(
                                  '   Groups',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_right, size: 35),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.2, color: Colors.black26),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.near_me, size: 35),
                          Text(
                            '   Location Preferences',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right, size: 35),
                        ],
                      ),
                      Divider(thickness: 1.2, color: Colors.black26),
                      Row(
                        children: <Widget>[
                          Icon(Icons.notifications_none, size: 35),
                          Text(
                            '   Notifications',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right, size: 35),
                        ],
                      ),
                      Divider(thickness: 1.2, color: Colors.black26),
                      Row(
                        children: <Widget>[
                          Icon(Icons.settings, size: 35),
                          Text(
                            '   Settings',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right, size: 35),
                        ],
                      ),
                      Divider(thickness: 1.2, color: Colors.black26),
                      Row(
                        children: <Widget>[
                          Text(
                            '             Logout',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
