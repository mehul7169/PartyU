import 'package:flutter/material.dart';
import 'package:profile_page/Screens/my_events_view.dart';
import 'package:profile_page/Screens/profile_page_view.dart';
import 'package:profile_page/pages.dart';

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
    MapPage(),
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
            icon: new Icon(Icons.calendar_today),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person_outline),
            title: Text('Profile'),
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
