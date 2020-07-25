import 'package:flutter/material.dart';
import 'profile_page_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

/// TODO: Need to figure out how to add functionality to the switches
/// Make sure all the fonts match up


final mainBlue = const Color.fromRGBO(115, 56, 210, 1.0);
final darkBlue = const Color.fromRGBO(30, 2, 83, 1.0);

class LocationPreferenceView extends StatefulWidget {

  createState()=> _LocationState();

}



class _LocationState extends State<LocationPreferenceView> {

  int groupValue;

  @override
  Widget build(context) {

    /// Defines width and height of screen based on device being used
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: mainBlue,
            title: Text('Location Preferences',
              style: TextStyle(color: Colors.white,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700),),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              onPressed: () {},
            ),
          ),

          body: Container(
              child: ListView(

                children: <Widget>[
                  SizedBox(height: _height * 0.03,),
                  // Hidden checkbox
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                      ),
                      AutoSizeText(
                        "Hidden", minFontSize: 19, maxFontSize: 32,
                        style: TextStyle(
                          fontFamily: 'Open Sans', color: Colors.black,
                          fontWeight: FontWeight.w900,),
                      ),
                      Spacer(),
                      new Radio(
                        groupValue: groupValue,
                        onChanged: (int e) => something(e),
                        value: 1,
                        activeColor: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: AutoSizeText(
                      "Your name won’t be listed as an event attendee for any events shown on the map.",
                      minFontSize: 15,
                      style: TextStyle(
                          fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
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
                        style: TextStyle(
                          fontFamily: 'Open Sans', color: Colors.black,
                          fontWeight: FontWeight.w900,),
                      ),
                      Spacer(),
                      new Radio(
                        onChanged: (int e) => something(e),
                        groupValue: groupValue,
                        value: 2,
                        activeColor: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                      ),
                    ],
                  ),

                  SizedBox(height: _height * 0.01,),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: AutoSizeText(
                      "Your name will be shown to your close friends, only while at an event.",
                      minFontSize: 15,
                      style: TextStyle(
                          fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
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
                        "All Friends", minFontSize: 19, maxFontSize: 24,
                        style: TextStyle(
                          fontFamily: 'Open Sans', color: Colors.black,
                          fontWeight: FontWeight.w900,),
                      ),
                      Spacer(),
                      new Radio(
                        onChanged: (int e) => something(e),
                        groupValue: groupValue,
                        value: 3,
                        activeColor: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: AutoSizeText(
                      "Your name will be shown to all of your friends, only while at an event.",
                      minFontSize: 15,
                      style: TextStyle(
                          fontFamily: 'Open Sans', fontWeight: FontWeight.w600),
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


  void something(int e){
    setState(() {
      if (e == 1) {
        groupValue == 1;
      } else if (e == 2){
        groupValue == 2;
      } else if (e == 3){
        groupValue == 3;
      } else if (e == 4){
      groupValue == 4; }
    });
  }
}



