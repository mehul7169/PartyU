import 'package:flutter/material.dart';
import 'profile_page_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

/// TODO: Need to figure out how to add functionality to the switches
/// Make sure all the fonts match up


class LocationPreferenceView extends StatefulWidget {

  createState()=> _LocationState();

}



 

class _LocationState extends State<LocationPreferenceView> {

  bool valHidden = false;
  bool valCloseFriends = false;
  bool valAllFriends = false;


  @override
  Widget build(context) {

    /// Defines width and height of screen based on device being used
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
            backgroundColor: Colors.white,
              title: Text('Location Preferences'),
            elevation: 0,
                leading: IconButton(icon:Icon(Icons.arrow_back_ios, color: Colors.black,),
                onPressed: () {
              },
           ),
      ),

          body: Container(
           child: Column(

            children: <Widget> [

              SizedBox(height: _height * 0.03,),
              // Hidden checkbox
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                  ),
                  AutoSizeText(
                        "Hidden", minFontSize: 20, maxFontSize: 32,
                        style: TextStyle(fontFamily: 'Open Sans', color: Colors.black,
                          fontWeight: FontWeight.w900,),
                      ),
                  Spacer(),
                  Checkbox(
                    value: valHidden,
                    onChanged: (bool value) {
                      setState(() {
                        valHidden = value;
                        valCloseFriends = false;
                        valAllFriends = false;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: AutoSizeText("Your name won’t be listed as an event attendee for any events shown on the map.",
                  minFontSize: 15,
                style: TextStyle(fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
              ),),
              SizedBox(height: _height * 0.03,),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 1.5,
                color: Colors.black,
              ),

              // Only Close Friends checkbox
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: _height * 0.03,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                  ),
                 // SizedBox(height: _height * 0.07,),
                  AutoSizeText(
                    "Close Friends(Recommended)",
                    minFontSize: 18, maxFontSize: 32,
                    style: TextStyle(fontFamily: 'Open Sans', color: Colors.black,
                      fontWeight: FontWeight.w900,),
                  ),
                  Spacer(),
                  Checkbox(
                    value: valCloseFriends,
                    onChanged: (bool value) {
                      setState(() {
                        valCloseFriends = value;
                        valHidden = false;
                        valAllFriends = false;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                  ),
                ],
              ),

              SizedBox(height: _height * 0.01,),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: AutoSizeText("Your name will be shown to your close friends, only while at an event.",
                minFontSize: 15,
                style: TextStyle(fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
              ),
              ),
              SizedBox(height: _height * 0.03,),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 1.5,
                color: Colors.black,
              ),

              // All Friends checkbox
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: _height * 0.03,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                  ),
                  AutoSizeText(
                    "All Friends", minFontSize: 20, maxFontSize: 24,
                    style: TextStyle(fontFamily: 'Open Sans', color: Colors.black,
                      fontWeight: FontWeight.w900,),
                  ),
                  Spacer(),
                  Checkbox(
                    value: valAllFriends,
                    onChanged: (bool value) {
                      setState(() {
                        valAllFriends = value;
                        valHidden = false;
                        valCloseFriends = false;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: AutoSizeText("Your name will be shown to all of your friends, only while at an event.",
                  minFontSize: 15,
                  style: TextStyle(fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: _height * 0.03,),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 1.5,
                color: Colors.black,
              ),
            ],

        )


        ),

        )
  );
  }

}



