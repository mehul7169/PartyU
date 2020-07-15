import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class EventsDropdown extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

  final List<String> events = [
    'HomeSlyce Karaoke Night',
    'WAWA X Phi Mu Mixer',
    'Phi Psi Party',
    'WAWA Hopkins State',
    'Unnamed Event',
    'Unnamed Event',
    'Unnamed Event',
    'Unnamed Event',
  ];
  @override
  Widget build(context) {
    return Container(
        child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Card(
                      child: Column(
                children: <Widget>[
                  Text(index.toString()),
                  Text(events[index]),
                ],
              )));
            }));
  }
}
