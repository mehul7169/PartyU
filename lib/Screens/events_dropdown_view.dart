import 'package:flutter/material.dart';
import 'package:profile_page/Event.dart';

class EventsDropdownView extends StatelessWidget {
  final bgColor = const Color(0xFFEAF0F1);
  final black = const Color(0xFF2C3335);

  final List<Event> events = [
    Event('HomeSlyce Karaoke Night', 'Tue April 14', '8:00 PM', 2, 7),
    Event('WAWA X Phi Mu Mixer', 'Tue April 17', '2:00 PM', 7, 21),
    Event('Phi Psi Party', 'Fri April 24', '10:30 PM', 0, 23),
    Event('WAWA Hopkins State', 'Sat April 25', '2:00 PM', 2, 7),
    Event('Unnamed Event', 'Sun April 26', '10:30 PM', 7, 21),
    Event('Unnamed Event', 'Mon April 27', '8:00 PM', 0, 23),
    Event('Unnamed Event', 'Tue April 28', '2:00 PM', 2, 7),
    Event('Unnamed Event', 'Wed April 29', '10:30 PM', 7, 21),
  ];
  @override
  Widget build(context) {
    return Container(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) =>
            buildEventCard(context, index),
      ),
    );
  }

  Widget buildEventCard(BuildContext context, int index) {
    final event = events[index];
    return Container(
      child: Card(
        margin: EdgeInsets.only(bottom: 0),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(
                10), //Need to figure out a way to make the bottom straight
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                padding: EdgeInsets.only(bottom: 6, left: 8.0, top: 8.0),
                color: Color(0xFFDAE0E2),
                child: Row(children: <Widget>[
                  Text(
                    event.date,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
              ),
            ),
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        event.time,
                      ),
                      VerticalDivider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(event.eventName),
                          Row(
                            children: <Widget>[
                              Icon(Icons.person_outline, size: 25),
                              Icon(Icons.person_outline, size: 25),
                              Icon(Icons.person_outline, size: 25),
                              Column(
                                children: <Widget>[
                                  Text(event.friends.toString() +
                                      ' Friends, ' +
                                      event.followers.toString() +
                                      ' Followers'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
