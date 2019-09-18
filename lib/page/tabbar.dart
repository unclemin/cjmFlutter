import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _currentIndex = 0;
  void changeIndex(int index){
    setState(() {
      _currentIndex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: changeIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("list")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text("history")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("my")
            ),
          ]
        );
  }
}