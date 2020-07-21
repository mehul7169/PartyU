import 'package:flutter/material.dart';
import 'Widgets/home_widget.dart';
import 'package:profile_page/Screens/events_dropdown_view.dart';
import 'package:profile_page/Widgets/events_dropdown_widget.dart';
import 'package:profile_page/Screens/my_events_view.dart';
import 'Screens/profile_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party U App',
      home: Home(),
    );
  }
}
