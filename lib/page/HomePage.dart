import 'package:demo/page/FourPage.dart';
import 'package:demo/page/OnePage.dart';
import 'package:demo/page/ThreeePage.dart';
import 'package:demo/page/TwoPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  List<Widget> _widgets = [
    new OnePage(),
    new TwoPage(),
    new ThreePage(),
    new Fourpage()
  ];

  List<Text> _bottomTitle = [
    Text(
      "1",
      style: TextStyle(color: Colors.black38),
    ),
    Text(
      "2",
      style: TextStyle(color: Colors.black38),
    ),
    Text(
      "3",
      style: TextStyle(color: Colors.black38),
    ),
    Text(
      "4",
      style: TextStyle(color: Colors.black38),
    )
  ];

  List<Icon> _bottomIcons = [
    Icon(Icons.home, color: Colors.blue),
    Icon(Icons.local_airport, color: Colors.blue),
    Icon(Icons.access_alarm, color: Colors.blue),
    Icon(Icons.people, color: Colors.blue)
  ];

  List<Icon> _bottomActiveIcons = [
    Icon(Icons.home, color: Colors.red),
    Icon(Icons.local_airport, color: Colors.red),
    Icon(Icons.access_alarm, color: Colors.red),
    Icon(Icons.people, color: Colors.red)
  ];

  int _selectPosition = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _widgets[_selectPosition],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: _bottomTitle[0],
              icon: _bottomIcons[0],
              activeIcon: _bottomActiveIcons[0]),
          BottomNavigationBarItem(
              title: _bottomTitle[1],
              icon: _bottomIcons[1],
              activeIcon: _bottomActiveIcons[1]),
          BottomNavigationBarItem(
              title: _bottomTitle[2],
              icon: _bottomIcons[2],
              activeIcon: _bottomActiveIcons[2]),
          BottomNavigationBarItem(
              title: _bottomTitle[3],
              icon: _bottomIcons[3],
              activeIcon: _bottomActiveIcons[3]),
        ],
        currentIndex: _selectPosition,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectPosition = index;
          });
        },
      ),
    );
  }
}
