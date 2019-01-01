import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Motivational Quote App',
      home: new Scaffold(
          body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/img/Ace.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child: new Text('Never give up'),
          )
        ],
      )),
    );
  }
}