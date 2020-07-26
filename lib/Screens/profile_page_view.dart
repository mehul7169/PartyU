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

  //TODO: Need to allow user to edit profile once button is pressed.
  // Add 'Edit Profile' button.
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

  // Displays the user's picture, first name, last name, and the edit
  // profile button.
  Row _addProfile(double screenWidth, double screenHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

  // TODO: This function will need to be edited in order to add actual pictures
  // of friends and allow for the user to click on the icons to see the page
  // of the friend.

  // Given a number, generates the number of friends.
  Row _addFriends(int count, screenWidth) {
    List<CircleAvatar> list = new List<CircleAvatar>();

    for (int i = 0; i < count; i++) {
      list.add(
        new CircleAvatar(
          radius: screenWidth * 0.07,
          backgroundColor: Color(0xFF5e667e),
          child: IconButton(
            icon: Icon(
              Icons.person,
            ),
            color: Colors.white,
            iconSize: screenWidth * 0.07,
            onPressed: () {},
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: list,
    );
  }

  // Given a button label, an icon, the width of the screen, a button is
  // created. If topOrBot equals 0, a top border will be displayed.
  // Otherwise, a bottom border will be displayed.
  Container _addButton(String name, IconData icon, double screenWidth,
      double screenHeight, int topOrBot) {
    double noWidth = 0;
    double sideWidth = screenWidth * 0.0035;
    double topSide;
    double botSide;
    Color topColor;
    Color botColor;

    if (topOrBot == 0) {
      topSide = sideWidth;
      botSide = noWidth;
      topColor = Colors.black26;
      botColor = Colors.white;
    } else {
      topSide = noWidth;
      botSide = sideWidth;
      topColor = Colors.white;
      botColor = Colors.black26;
    }
    return Container(
      width: screenWidth * 0.88,
      height: screenHeight * 0.06,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: topSide, color: topColor),
          bottom: BorderSide(width: botSide, color: botColor),
        ),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Icon(icon, size: 35),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.04,
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right, size: 35),
            SizedBox(
              width: screenWidth * 0.02,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  // Generates the the "Logout" button.
  Container _addLogoutButton(double screenWidth, double screenHeight) {
    return Container(
      width: screenWidth * 0.88,
      height: screenHeight * 0.06,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: screenWidth * 0.125,
            ),
            Text(
              'Logout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.04,
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right, size: 35),
            SizedBox(
              width: screenWidth * 0.02,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  // Displays the "My Friends & Groups" box.
  Container _addFriendsAndGroups(screenWidth, screenHeight) {
    return Container(
      height: screenHeight * 0.70,
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
            height: screenHeight * 0.65,
            width: screenWidth * 0.88,
            child: ListView(
              padding: EdgeInsets.only(
                top: 5,
              ),
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: screenWidth * 0.0035, color: Colors.black26),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: screenHeight * 0.07,
                        padding: EdgeInsets.only(
                          bottom: screenHeight * 0.02,
                          //top: screenHeight * 0.003,
                        ),
                        child: _addFriends(5, screenWidth),
                      ),
                      _addButton('Friends & Followers', Icons.near_me,
                          screenWidth, screenHeight, 0),
                      _addButton('Groups', Icons.notifications_none,
                          screenWidth, screenHeight, 0),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: screenWidth * 0.0035,
                      color: Colors.black26,
                    ),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6)),
                  ),
                  child: Column(
                    children: <Widget>[
                      _addButton('Location Preferences', Icons.near_me,
                          screenWidth, screenHeight, 1),
                      _addButton('Notifications', Icons.notifications_none,
                          screenWidth, screenHeight, 1),
                      _addButton('Settings', Icons.settings, screenWidth,
                          screenHeight, 1),
                      _addLogoutButton(screenWidth, screenHeight),
                    ],
                  ),
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
          width: _width,
          height: _height,
          padding: EdgeInsets.symmetric(
            horizontal: _width * 0.06,
            vertical: _height * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _addProfile(_width, _height),
              _addFriendsAndGroups(_width, _height),
            ],
          ),
        ),
      ),
    );
  }
}
