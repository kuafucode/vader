import 'package:flutter/material.dart';
import 'package:vader/src/flatbutton_widget.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Column(
            children: <Widget>[
              Text("VanderKirk",style: TextStyle(fontSize: 18.0)),
              Text("A help tool for Flutter",style: TextStyle(fontSize: 11.0,))
            ],
          ),
          actions: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Icon(Icons.code),
              Text("Flutter")
          ])]
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                              "Get widget and community resource help to kickstart",
                              style: TextStyle(fontSize: 16.0)),
                          Text(
                              "your Flutter project faster than a lightsaber launch.",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(5.0), bottom: Radius.zero)),
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Buttons",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[

                      WidgetCard(text: 'App Structure and navigation'),
                      WidgetCard(text: 'Flat Button', nav: MaterialPageRoute(builder:(context)=> FlatbuttonWidget('a'), settings: RouteSettings(name: 'flatbutton'))),
                      WidgetCard(text: 'Input and selections'),
                      WidgetCard(text: 'Dialogs and panels'),
                      WidgetCard(text: 'Information Displays'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class WidgetCard extends StatelessWidget {
  final String text;
  final MaterialPageRoute nav;
  WidgetCard({Key key, this.text, this.nav}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
        child: InkWell(
          onTap: nav != null ?  (){
            Navigator.push(context, nav);
          } : null,
          child: Card(
              child: Center(
                  child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16.0, ),
                      )))),
        ));
  }
}