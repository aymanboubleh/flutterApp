import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hellp_world/qrcode-scanner.dart';
import './quiz.dart';
import './weather.dart';
import './Gallery.dart';
import './camera.dart';
import './Camera2.dart';
import './main-drawer.dart';
import './qrcode-scanner.dart';

void main() {
//  runApp(MaterialApp(home: new MyHomePage()));
  runApp(MaterialApp(home: new MyHomePage(), routes: <String, WidgetBuilder>{
    '/weather2': (BuildContext context) => Weather(),
    '/quiz': (BuildContext context) => Quiz(),
    '/gallery': (BuildContext context) => Gallery(),
    '/camera':(BuildContext context)=> Camera(),
    '/camera2':(BuildContext context)=> Camera2(),
    '/qrcode':(BuildContext context)=> QRScan(),
  }));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      drawer: MainDrawer(),
      appBar: new AppBar(
        title: Text('myapp'),
      ),
      body: Center(
        child: new Text(
          'boo',
          style: TextStyle(fontSize: 40, color: Colors.blue),
        ),
      ),
    );
  }
}
