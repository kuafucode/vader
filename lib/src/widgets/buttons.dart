import 'package:flutter/material.dart';
import 'package:vader/src/button_tool.dart';
import 'package:vader/src/vaderkirk_appbar.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createVaderKirkAppBar(),
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

                        WidgetCard(text: 'Flat Button', nav: MaterialPageRoute(builder:(context)=> ButtonTool(), settings: RouteSettings(name: 'flatbutton'))),
                      WidgetCard(text: 'Raised Button'),
                      WidgetCard(text: 'FloatingActionButton'),
                      WidgetCard(text: 'IconButton'),
                      WidgetCard(text: 'DropdownButton'),
                        WidgetCard(text: 'PopupMenuButton'),
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