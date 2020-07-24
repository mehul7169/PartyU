import 'package:flutter/material.dart';
import 'package:profile_page/Screens/map_view.dart';
import 'package:profile_page/Screens/my_events_view.dart';
import 'package:profile_page/Screens/profile_page_view.dart';

/// Screen that displays the map. Serves as the home screen after the
/// user signs in.
/// TODO: Create interative real-time map.
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    MyEventsView(),
    MapView(),
    ProfilePageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.calendar_today,
              color: Colors.black,
            ),
            title: Text(
              'Events',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.map,
              color: Colors.black,
            ),
            title: Text(
              'Map',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
