import 'package:flutter/material.dart';
import 'package:profile_page/Screens/events_dropdown_view.dart';
import 'package:profile_page/Screens/profile_page_view.dart';
import 'Screens/map_view.dart';
import 'Screens/location_preferences_view.dart';
import 'Widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party U App',
      //Change and import to whatever screen that you are working on.
      home: LocationPreferenceView(),
    );
  }
}