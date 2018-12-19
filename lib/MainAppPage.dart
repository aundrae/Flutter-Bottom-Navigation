import 'package:flutter/material.dart';

import './tabs/first.dart';
import './tabs/second.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TabBarView(
        children: <Widget>[new FirstFragment(), new SecondFragment()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.home),
            text: "Main",
          ),
          new Tab(
            icon: new Icon(Icons.keyboard_backspace),
            text: "Second",
          )
        ],
          controller: controller,
        ),
      ),
    );
  }
}
