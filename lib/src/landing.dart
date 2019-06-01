// landing page with app intro

import 'package:flutter/material.dart';
import 'package:vader/src/widget_library.dart';
import 'package:vader/src/vaderkirk_appbar.dart';


class Landing extends StatelessWidget {
  Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createVaderKirkAppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                  'Get widget and community resource help to kickstart '
                  ' your Flutter project faster than a lightsabre launch.',
                  style: TextStyle(fontSize: 20)),
              Padding(padding: EdgeInsets.all(20)),
              Card(
                child: Container(
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Vader Theme',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30, bottom: 30),
                                child: Image.asset(
                                  'assets/images/vaderrrr.png',
                                  width: 60,
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Text(
                            'Quickly customize your flutter widget to match your design vision',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // go to vader
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> WidgetLibrary(), settings: RouteSettings(name: 'lib')));
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              Card(
                child: Container(
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'How to Kirk',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40, bottom: 30),
                                child: Image.asset(
                                  'assets/images/fleet.png',
                                  height: 60,
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Text(
                            'Quickly customize your flutter widget to match your design vision',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // go to vader
                      print('vader');
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
