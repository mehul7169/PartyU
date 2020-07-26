import 'package:flutter/material.dart';
import 'profile_page_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

/// TODO: Need to figure out how to add functionality to the switches
/// Clean up the font and headings
///
///


final mainBlue = const Color.fromRGBO(115, 56, 210, 1.0);
final darkBlue = const Color.fromRGBO(30, 2, 83, 1.0);

class NotificationPreferenceView extends StatefulWidget {

  createState()=> _NotificationState();

}


class _NotificationState extends State<NotificationPreferenceView> {


  @override
  Widget build(context) {

    /// Defines width and height of screen based on device being used
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: mainBlue,
          title: Text('Notifications',
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
          // padding: EdgeInsets.only(left: 15, right: 15),

          child: ListView(
              children: <Widget>[

              Container(
                child: SizedBox(height: _height*0.02,),),

              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide.none,
                      right: BorderSide.none,
                      top: BorderSide.none,
                      bottom: BorderSide(color: Colors.black12, width: 2),
                      ),
                ),
                child: Column (
                  children: <Widget> [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            child: AutoSizeText(
                                "Friends & Groups",
                                minFontSize: 22, maxFontSize: 32,
                                style: TextStyle(fontFamily: 'Open Sans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                )
                            )
                        )),
                    Row(
                      children: <Widget> [
                        AutoSizeText(
                          "Friend Requests", minFontSize: 17, maxFontSize: 32, maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Open Sans', color: Colors.black,
                            fontWeight: FontWeight.w700,),
                        ),
                        Spacer(),

                        CupertinoSwitch(
                          onChanged: null,
                          value: false,
                        ),
                      ]
                    ),

                    SizedBox(height: _height*0.01,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                         child: AutoSizeText(
                          "Get notified when you recieve a close friend or friend request.",
                             minFontSize: 16, maxFontSize: 32,
                           style: TextStyle(fontFamily: 'Open Sans',
                           color: Colors.black,
                         fontWeight: FontWeight.w400,
                           )
                      )

                      )
                    ),

                    SizedBox(
                      height: _height*0.01,
                    ),

                    Row(
                        children: <Widget> [
                          AutoSizeText(
                            "Accepted Friend Requests", minFontSize: 17, maxFontSize: 32, maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'Open Sans', color: Colors.black,
                              fontWeight: FontWeight.w700,),
                          ),
                          Spacer(),
                          CupertinoSwitch(
                            onChanged: null,
                            value: true,
                          ),
                        ]
                    ),

                    SizedBox(height: _height*0.01,),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            child: AutoSizeText(
                                "Get notified when your close friend or friend requests is accepted.",
                                minFontSize: 16, maxFontSize: 32,
                                style: TextStyle(fontFamily: 'Open Sans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                )
                            )
                        )),

                    SizedBox(height: _height*0.01,),

                    Row(
                        children: <Widget> [
                          AutoSizeText(
                            "Accepted Group Requests", minFontSize: 17, maxFontSize: 32, maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'Open Sans', color: Colors.black,
                              fontWeight: FontWeight.w700,),
                          ),
                          Spacer(),
                          CupertinoSwitch(
                            onChanged: null,
                            value: true,
                          ),
                        ]
                    ),

                    SizedBox(height: _height*0.01,),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            child: AutoSizeText(
                                "Get notified when your group request is accepted.",
                                minFontSize: 16, maxFontSize: 32,
                                style: TextStyle(fontFamily: 'Open Sans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                )
                            )
                        )),

                    SizedBox(height: _height*0.01,),


                  ]
                ),
              ),



                  // Events
                  Container(
                      child: Column (
                          children: <Widget> [
                            SizedBox(height: _height*0.01,),

                            Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                decoration: BoxDecoration(
                                  border: Border(left: BorderSide.none,
                                    right: BorderSide.none,
                                    top: BorderSide.none,
                                    bottom: BorderSide.none,
                                  ),
                                ),

                                child: Column (
                                    children: <Widget> [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              child: AutoSizeText(
                                                  "Events",
                                                  minFontSize: 22, maxFontSize: 32,
                                                  style: TextStyle(fontFamily: 'Open Sans',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w800,
                                                  )
                                              )
                                          )),

                                       Row(
                                        children: <Widget> [
                                          AutoSizeText(
                                            "Invites", minFontSize: 17, maxFontSize: 32,
                                          style: TextStyle(
                                            fontFamily: 'Open Sans', color: Colors.black,
                                            fontWeight: FontWeight.w800,),
                                  ),
                                          Spacer(),
                                          CupertinoSwitch(
                                    onChanged: null,
                                    value: false,
                                  ),
                                ]
                            ),
                                    SizedBox(height: _height*0.01,),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                       child: Container(
                                          child: AutoSizeText(
                                        "Get notified when you recieve an invite"
                                            "and get reminders of pending invites.",
                                        minFontSize: 16, maxFontSize: 32,
                                        style: TextStyle(fontFamily: 'Open Sans',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )
                                    )
                                )),

                                   Row(
                                   children: <Widget> [
                                     AutoSizeText(
                                    "Upcoming Events", minFontSize: 17, maxFontSize: 32,
                                    style: TextStyle(
                                      fontFamily: 'Open Sans', color: Colors.black,
                                      fontWeight: FontWeight.w800,),
                                   ),
                                       Spacer(),
                                       CupertinoSwitch(
                                    onChanged: null,
                                    value: false,
                                        ),
                                      ]
                                  ),

                                    SizedBox(height: _height*0.01,),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                         child: AutoSizeText(
                                        "Get notified of your upcoming events a day before"
                                            " and a few hours before.",
                                        minFontSize: 16, maxFontSize: 32,
                                        style: TextStyle(fontFamily: 'Open Sans',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )
                                    )
                                )),

                                      SizedBox(height: _height*0.01,),

                                      Row(
                                          children: <Widget> [
                                            AutoSizeText(
                                              "My Group Events", minFontSize: 17, maxFontSize: 32,
                                              style: TextStyle(
                                                fontFamily: 'Open Sans', color: Colors.black,
                                                fontWeight: FontWeight.w800,),
                                            ),
                                            Spacer(),
                                            CupertinoSwitch(
                                              onChanged: null,
                                              value: false,
                                            ),
                                          ]
                                      ),

                                      SizedBox(height: _height*0.01,),

                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              child: AutoSizeText(
                                                  "Get notified of your groups upcoming events.",
                                                  minFontSize: 16, maxFontSize: 32,
                                                  style: TextStyle(fontFamily: 'Open Sans',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                              )
                                          )),
                                      SizedBox(height: _height*0.01,),

                                    ]
                                )
                  )
                ]
             )
              ),
          ]
          ),

        )
      )
    );


  }

}