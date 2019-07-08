import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget{

  ThirdScreen();

  @override
  TextInput createState() => new TextInput();
}

class TextInput extends State<ThirdScreen>{

  String result = "";

  final TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(labelText: "Enter Value", border: OutlineInputBorder(), hasFloatingPlaceholder: true),
                onSubmitted: (String str){
                  setState(() {
                    result = result + '\n' +str;
                    controller.text= "";
                  });
                },
                controller: controller,
                autofocus: false,
              ),
              new Text(result)
            ],
          ),
        )
      ),
    );
  }
}