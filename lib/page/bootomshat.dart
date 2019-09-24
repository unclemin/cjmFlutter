import 'package:flutter/material.dart';

class bottomShat extends StatefulWidget {
  @override
  _bottomShatState createState() => _bottomShatState();
}

class _bottomShatState extends State<bottomShat> {
  final bottomkey = GlobalKey<ScaffoldState>();
  void _open(){
    bottomkey
      .currentState
       .showBottomSheet((BuildContext context){
         return BottomAppBar(
           child: Container(
             height: 90.0,
             width: double.infinity,
             padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.pause_circle_outline),
                  SizedBox(width: 16.0,),
                  Text('01:30 / 03:30'),
                  Expanded(
                    child: Text('Fix you - Coldplay', textAlign: TextAlign.right,),
                  ),
                ],
              ),
           ),
         );
       });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomkey,
      appBar: AppBar(
        title: Text("data"),
        centerTitle: true,
      ),
      body: Center(
        child: 
            FlatButton(
              child: Text("bottom sheet"),
              onPressed:_open,
            ),
      ),
    );
  }
}