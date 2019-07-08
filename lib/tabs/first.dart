import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget{

  FirstFragment();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("First/Main Fragment")
            ],
          ),
        ),
      ),
    );
  }
}