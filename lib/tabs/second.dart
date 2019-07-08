import 'package:flutter/material.dart';

class SecondFragment extends StatelessWidget{
  @override

  SecondFragment();

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyan,
      body: new Container(
        child: new Center(
            child:new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("This is second fragment")
              ],
            )
        ),
      ),
    );
  }
}