import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  @override
  _checkBoxState createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkBox"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
                value: _isCheck,
                onChanged: (c){
                  setState(() {
                    _isCheck = c; 
                  });
                },
              ),
              CheckboxListTile(
                value: _isCheck,
                title: Text("this is a checkBox"),
                subtitle: Text("data"),
                onChanged: (v){
                  setState(() {
                    _isCheck = v; 
                  });
                },
                secondary: Icon(Icons.add_a_photo),
                selected: _isCheck,
                activeColor: Colors.pink[100],
              ),
              CheckboxListTile(
                value: _isCheck,
                title: Text("this is a checkBox"),
                subtitle: Text("data"),
                onChanged: (v){
                  setState(() {
                    _isCheck = v; 
                  });
                },
                secondary: Icon(Icons.add_a_photo),
                selected: _isCheck,
                activeColor: Colors.pink[100],
              ),
          ],
        )
        // child: 
      ),
    );
  }
}