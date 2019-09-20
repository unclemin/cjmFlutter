import 'package:flutter/material.dart';

class radioDemo extends StatefulWidget {
  @override
  _radioDemoState createState() => _radioDemoState();
}

class _radioDemoState extends State<radioDemo> {
  int isCheck;
  void _change(index){
    setState(() {
     isCheck = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radioDemo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("this is option $isCheck"),
            Radio(
              value: 0,
              onChanged: _change,
              groupValue: isCheck,
            ),
            RadioListTile(
              value: 1,
              onChanged: _change,
              groupValue: isCheck,
              title: Text('option 1'),
              subtitle: Text("data"),
              secondary: Icon(Icons.filter_1),
              selected:isCheck==1 ,
            ),
            RadioListTile(
              value: 2,
              onChanged: _change,
              groupValue: isCheck,
              title: Text('option 2'),
              subtitle: Text("data"),
              secondary: Icon(Icons.filter_2),
              selected:isCheck==1 ,
            )
          ],
        ),
      ),
    );
  }
}