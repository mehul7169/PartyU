import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MapView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapViewState();
  }
}

class MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                              onPressed: () {},
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

                          //iconSize: 20.0,
                          onPressed: () {},
                        ),
                      ),
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
                              onPressed: () {},
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
      ),
    );
  }
}
