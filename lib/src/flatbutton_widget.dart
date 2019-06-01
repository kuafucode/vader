import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class FlatbuttonWidget extends StatelessWidget {
  String code;
  FlatbuttonWidget(String snippet) {
    this.code = """
FlatButton(
  color: Colors.blue,
  textColor: Colors.white,
  disabledColor: Colors.grey,
  disabledTextColor: Colors.black,
  padding: EdgeInsets.all(8.0),
  splashColor: Colors.blueAccent,
  onPressed: () {
    /*...*/
  },
  child: Text(
    "Flat Button",
    style: TextStyle(fontSize: 20.0),
  ),
);
    """;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flat Button")),
        body: Container(
          child: SyntaxView(
            code: code,
            syntax: Syntax.DART,
            syntaxTheme: SyntaxTheme.dracula(),
            withZoom: true,
          ),
        ));
  }
}
