import 'package:flutter/material.dart';

AppBar createVaderKirkAppBar(){
  
    return AppBar(
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
      );
  
}