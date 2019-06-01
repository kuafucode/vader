// landing page with app intro

import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(30.0), child: Column(
      children: <Widget>[
        Text('Vader Wizard'),
        Text('Intro...'),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    ));
  }
}