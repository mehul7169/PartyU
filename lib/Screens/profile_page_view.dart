import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

/// ProfilePageView class displays the profile page of the user.
/// TODO: Need to make sure the layout is suitable for smaller devices.
/// TODO: Need to make separate widgets/icon buttons for each selection tab.
/// TODO: Make code cleaner and concise.
class ProfilePageView extends StatelessWidget {
  final bgColor = const Color(0xFFfcfeff);
  final black = const Color(0xFF2C3335);

  Widget build(context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //TODO: Search for options for containing a list of elements.
              //TODO: Make this into a separate function.
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.portrait,
                    size: _width * 0.45,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: _width * 0.40,
                        child: Align(
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            'First Name',
                            style: GoogleFonts.courierPrime(
                              fontSize: 28,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.40,
                        child: Align(
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            'Last Name',
                            style: GoogleFonts.courierPrime(
                              fontSize: 28,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFDAE0E2),
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(const Radius.circular(4)),
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
              //TODO: Make this a separate function.
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
                          //TODO: Make this a separate function.
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
                          //TODO: Make this a separate function.
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
              //TODO: Make this a separate function.
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.2, color: Colors.black26),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(6)),
                ),
                child: Column(
                  children: <Widget>[
                    //TODO: Make this a separate function.
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
                    //TODO: Make this a separate function.
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
                    //TODO: Make this a separate function.
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
                    //TODO: Make this a separate function.
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
    );
  }
}
