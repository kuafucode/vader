import 'package:flutter/material.dart';
import 'package:vader/src/vaderkirk_appbar.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class ButtonTool extends StatefulWidget {
  @override
  _ButtonToolState createState() => _ButtonToolState();
}

class _ButtonToolState extends State<ButtonTool> {
  final List<Color> hueColors = [
    const Color.fromARGB(255, 255, 0, 0),
    const Color.fromARGB(255, 255, 255, 0),
    const Color.fromARGB(255, 0, 255, 0),
    const Color.fromARGB(255, 0, 255, 255),
    const Color.fromARGB(255, 0, 0, 255),
    const Color.fromARGB(255, 255, 0, 255)
  ];

  double value = 0.0;
  void onChanged(double value) => this.value = value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createVaderKirkAppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Padding(padding:EdgeInsets.all(5.0),
                child: Center(
                                  child: FlatButton(
                    child: Text("button"), 
                    onPressed: () {}
                  ),
                )
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text("Color"),
                    SliderPicker(
                        min: 0.0,
                        max: 1.0,
                        value: this.value,
                        onChanged: (value) =>
                            super.setState(() => this.onChanged(value)),
                        child: new DecoratedBox(
                            decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: this.hueColors)))),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text("Text Color"),
                    SliderPicker(
                        min: 0.0,
                        max: 1.0,
                        value: this.value,
                        onChanged: (value) =>
                            super.setState(() => this.onChanged(value)),
                        child: new DecoratedBox(
                            decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: this.hueColors)))),
                  ],
                ),
              )
              
            ],
          ),
        ));
  }
}
