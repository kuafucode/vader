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
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'A Help Tool for Flutter',
              style: TextStyle(fontSize: 10),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[FlutterLogo(), Text('Flutter')],
          ),
        ],
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(20),child: Column(
          children: <Widget>[
            Text('Get widget and community resource help to kickstart '
                ' your Flutter project faster than a lightsabre launch.',
                style: TextStyle(fontSize: 20)),

          Padding(padding: EdgeInsets.all(20)),

            Card(
              child: Container(
                child: InkWell(child: Padding(padding: EdgeInsets.all(20), child: Column(
                  children: <Widget>[
                    Text('Vader Theme', style: TextStyle(fontSize: 40, color: Colors.white),),
                    Text(
                        'Quickly customize your flutter widget to match your design vision',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),),
                onTap: (){
                  // go to vader
                  print('vader');
                },),
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/vaderrrr.png', scale: 0.02),
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }
}
