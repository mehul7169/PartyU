import 'package:flutter/material.dart';
import 'package:profile_page/Screens/my_events_view.dart';
import 'package:profile_page/Screens/profile_page_view.dart';

/// Screen that displays the map. Serves as the home screen after the
/// user signs in.
/// TODO: Create interative real-time map.
/// TODO: Search for better ways of navigation.
class MapView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapViewState();
  }
}

class MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 30.0,
                  right: 16.0,
                  left: 16.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //TODO: Make into a separate function.
                    Column(
                      children: <Widget>[
                        Spacer(),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 50,
                            maxHeight: 50,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10)),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                              size: 20,
                            ),
                            //iconSize: 20.0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => MyEventsView()),
                              );
                            },
                          ),
                        ),
                        Text('Events',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              letterSpacing: 0.05,
                            ))
                      ],
                    ),
                    //TODO: Make into a separate function.
                    //TODO: Figure out what map button does.
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      constraints: BoxConstraints(
                        maxWidth: 60,
                        maxHeight: 60,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.map,
                          color: Colors.black,
                          size: 23,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    //TODO: Make into a separate function.
                    Column(
                      children: <Widget>[
                        Spacer(),
                        Container(
                          constraints: BoxConstraints.tight(Size.square(50)),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10)),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.person_outline,
                              color: Colors.black,
                            ),
                            iconSize: 27,
                            onPressed: () {
                              //TODO: See if there is a way to choose from which side of the screen that the next page comes from.
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => ProfilePageView()),
                              );
                            },
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            letterSpacing: 0.05,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
