import 'package:flutter/material.dart';

import './tabs/first.dart';
import './tabs/second.dart';
import './tabs/third.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  int _selectedIndex= 0;
  final List<Widget> _widgetOptions = [
    FirstFragment(),
    SecondFragment(),
    ThirdScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Main"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_backspace),
              title: Text("Second"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.headset_mic),
                title: Text('Second')
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTap,
      ),
    );
  }
}
