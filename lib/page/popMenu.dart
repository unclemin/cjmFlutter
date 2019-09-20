import 'package:flutter/material.dart';

class popMenu extends StatefulWidget {
  @override
  _popMenuState createState() => _popMenuState();
}

class _popMenuState extends State<popMenu> {
  String _cu = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pop"),),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_cu),
          PopupMenuButton(
            onSelected: (val){
              setState(() {
                _cu = val;
              });
            },
            itemBuilder: (BuildContext context)=>[
              PopupMenuItem(
                value: "Home",
                child: Text("Home"),
              ),
              PopupMenuItem(
                value: "set",
                child: Text("set"),
              ),
              PopupMenuItem(
                value: "memeber",
                child: Text("memeber"),
              )
            ],
          )
        ],
      )
    );
  }
}