import 'package:flutter/material.dart';
import 'Screens/app.dart';
import 'Screens/my_events.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyEvents();
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/map.png',
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}
