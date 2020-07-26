import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

/// ProfilePageView class displays the profile page of the user.
/// TODO: Need to make sure the layout is suitable for smaller devices.
/// TODO: Need to make separate widgets/icon buttons for each selection tab.
/// TODO: Make code cleaner and concise.
class ProfilePageView extends StatelessWidget {
  final bgColor = const Color(0xFFffffff);
  final black = const Color(0xFF2C3335);

  // Add 'Edit Profile' button.
  //TODO: Need to allow user to edit profile once button is pressed.
  Container _addEditProfile(double screenWidth, double screenHeight) {
    return Container(
      width: screenWidth * 0.32,
      height: screenHeight * 0.025,
      margin: const EdgeInsets.only(top: 8),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 0.2, vertical: 1),
        color: Color(0xFFdedede),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        child: AutoSizeText(
          'Edit Profile',
          style: GoogleFonts.courierPrime(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          maxLines: 1,
        ),
        onPressed: () {},
      ),
    );
  }

  // Displays the user's name.
  AutoSizeText _addName(String name) {
    return AutoSizeText(
      name,
      style: GoogleFonts.courierPrime(
        fontSize: 32,
      ),
      maxLines: 1,
    );
  }

  // Displays the user's picture, first name, last name, and the edit profile button.
  Row _addProfile(double screenWidth, double screenHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.portrait,
          size: screenWidth * 0.44,
        ),
        SizedBox(
          width: screenWidth * 0.44,
          height: screenHeight * 0.18,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: _addName('First Name'),
              ),
              Align(
                alignment: Alignment.center,
                child: _addName('Last Name'),
              ),
              _addEditProfile(screenWidth, screenHeight),
              SizedBox(
                height: screenHeight * 0.03,
              ),
            ],
          ),
        )
      ],
    );
  }

/* TODO: This function will need to be edited in order to add actual pictures of friends
   and allow for the user to click on the icons to see the page of the friend
*/
// Given a number, generates the number of friends.
  Row _addFriends(int count) {
    List<CircleAvatar> list = new List<CircleAvatar>();

    for (int i = 0; i < count; i++) {
      list.add(new CircleAvatar(
        backgroundColor: Color(0xFF5e667e),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: list,
    );
  }

  // Displays the "My Friends & Groups" box.
  Container _addFriendsAndGroups(screenWidth, screenHeight) {
    return Container(
      height: screenHeight * 0.22,
      width: screenWidth * 0.88,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            'My Friends & Groups',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: -0.5,
            ),
            maxLines: 1,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.2, color: Colors.black26),
              borderRadius: const BorderRadius.all(const Radius.circular(6)),
            ),
            child: Column(
              children: <Widget>[
                _addFriends(5),
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
    );
  }

  Widget build(context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: _width * 0.06,
            vertical: _height * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _addProfile(_width, _height),
              _addFriendsAndGroups(_width, _height),

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
