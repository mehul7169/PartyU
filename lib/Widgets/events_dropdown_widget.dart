import 'package:flutter/material.dart';
import 'package:profile_page/Screens/events_dropdown_view.dart';

class EventsDropdown extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

  @override
  Widget build(context) {
    return Scaffold(body: EventsDropdownView());
  }
}
