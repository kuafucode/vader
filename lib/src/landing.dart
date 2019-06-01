// landing page with app intro

import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Text(
              'VaderKirk',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'A Help Tool for Flutter',
              style: TextStyle(fontSize: 16),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              FlutterLogo(
                size: 32,
              ),
              Text('Flutter', style: TextStyle(fontSize: 18))
            ],
          ),
        ],
      ),
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
                      print('vader');
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
                      print('vader');
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
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
